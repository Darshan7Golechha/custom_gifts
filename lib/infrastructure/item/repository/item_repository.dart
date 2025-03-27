import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;

import 'package:flutter_application_1/domain/core/error/api_failures.dart';
import 'package:flutter_application_1/domain/core/error/failure_handler.dart';
import 'package:flutter_application_1/domain/item/entities/item.dart';
import 'package:flutter_application_1/domain/item/repository/i_item_repository.dart';
import 'package:flutter_application_1/infrastructure/core/datasource/storage_remote.dart';
import 'package:flutter_application_1/infrastructure/item/datasource/item_remote.dart';
import 'package:flutter_application_1/infrastructure/item/dtos/item_dto.dart';
import 'package:flutter_application_1/infrastructure/user/datasource/user_remote.dart';
import 'package:http/http.dart';

class ItemRepository implements IItemRepository {
  final ItemRemoteDataSource itemRemoteDataSource;
  final UserRemoteDataSource userRemoteDataSource;
  final StorageRemoteDataSource storageRemoteDataSource;

  ItemRepository({
    required this.itemRemoteDataSource,
    required this.userRemoteDataSource,
    required this.storageRemoteDataSource,
  });

  @override
  Future<Either<ApiFailure, List<Item>>> getItems() async {
    try {
      final itemDtoList = await itemRemoteDataSource.getItems();
      List<Item> items = [];
      for (ItemDto itemDto in itemDtoList) {
        items.add(itemDto.toDomain());
      }
      return Right(items);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Item>> getItem({required String itemID}) async {
    try {
      final item = await itemRemoteDataSource.getItem(itemID);

      return Right(item.toDomain());
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, bool>> addItem({required Item item}) async {
    try {
      print('📝 Starting addItem process...');
      String userID = auth.FirebaseAuth.instance.currentUser!.uid;
      List<String> imageUrls = [];
      List<String> thumbnailUrls = [];
      List<String> videoUrls = [];

      // Handle multiple images
      if (item.images.isNotEmpty) {
        print('🖼️ Processing ${item.images.length} images...');
        for (String imagePath in item.images) {
          String imageUrl = await storageRemoteDataSource.uploadPhotoAndGetURL(
            imagePath,
            'item_images',
          );
          String thumbnailURL = await storageRemoteDataSource
              .getThumbnailForImage(imagePath, 'item_images');

          imageUrls.add(imageUrl);
          thumbnailUrls.add(thumbnailURL);
        }
        print('✅ Successfully processed all images');
      }

      // Handle multiple videos
      if (item.videos.isNotEmpty) {
        print('🎥 Processing ${item.videos.length} videos...');
        for (String videoPath in item.videos) {
          String videoUrl = await storageRemoteDataSource.uploadVideoAndGetURL(
            videoPath,
            'item_videos',
          );
          videoUrls.add(videoUrl);
        }
        print('✅ Successfully processed all videos');
      }

      // Create updated item with all media URLs
      final updatedItem = item.copyWith(
        itemID: item.itemID,
        userID: userID,
        images: imageUrls,
        // thumbnails: thumbnailUrls,
        videos: videoUrls,
        createdDate: DateTime.now(),
        // updatedDate: DateTime.now(),
      );

      print('💾 Saving item to database...');
      await itemRemoteDataSource.addItem(updatedItem);
      print('✅ Item successfully added');

      return const Right(true);
    } catch (e) {
      print('❌ Error in addItem: $e');
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
