import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/domain/core/error/api_failures.dart';
import 'package:flutter_application_1/domain/core/error/failure_handler.dart';
import 'package:flutter_application_1/domain/item/entities/item.dart';
import 'package:flutter_application_1/domain/item/repository/i_item_repository.dart';
import 'package:flutter_application_1/infrastructure/item/datasource/item_remote.dart';
import 'package:flutter_application_1/infrastructure/item/dtos/item_dto.dart';
import 'package:flutter_application_1/infrastructure/user/datasource/user_remote.dart';

class ItemRepository implements IItemRepository {
  final ItemRemoteDataSource itemRemoteDataSource;
  final UserRemoteDataSource userRemoteDataSource;

  ItemRepository({
    required this.itemRemoteDataSource,
    required this.userRemoteDataSource,
  });

  @override
  Future<Either<ApiFailure, List<Item>>> getItems() async {
    try {
      final itemDtoList = await itemRemoteDataSource.getItems();
      List<Item> items = [];
      for (ItemDto itemDto in itemDtoList) {
        final userDto = await userRemoteDataSource.getUser(itemDto.userID);
        items.add(itemDto.toDomain(userDto.toDomain()));
      }
      return Right(items);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Item>> getItemDetails(
      {required String itemID}) async {
    try {
      final itemDto = await itemRemoteDataSource.getItem(itemID);
      final userDto = await userRemoteDataSource.getUser(itemDto.userID);
      return Right(itemDto.toDomain(userDto.toDomain()));
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, bool>> addItem({required Item item}) async {
    try {
      await itemRemoteDataSource.addItem(item);

      return const Right(true);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
