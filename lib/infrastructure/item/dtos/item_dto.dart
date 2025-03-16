// ignore_for_file: invalid_annotation_target

import 'package:flutter_application_1/domain/item/entities/item.dart';
import 'package:flutter_application_1/domain/user/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_application_1/core/config/env_config.dart';

part 'item_dto.freezed.dart';

part 'item_dto.g.dart';

@freezed
class ItemDto with _$ItemDto {
  const ItemDto._();

  const factory ItemDto({
    @JsonKey(name: 'userID', defaultValue: '') required String userID,
    @JsonKey(name: 'itemID', defaultValue: '') required String itemID,
    @JsonKey(name: 'title', defaultValue: '') required String title,
    @JsonKey(name: 'likesCount', defaultValue: 0) required int likesCount,
    @JsonKey(name: 'commentsCount', defaultValue: 0) required int commentsCount,
    @JsonKey(name: 'price', defaultValue: 0) required int price,
    @JsonKey(name: 'images', defaultValue: <String>[])
    required List<String> images,
    @JsonKey(name: 'videos', defaultValue: <String>[])
    required List<String> videos,
    // @JsonKey(name: 'createdDate', defaultValue: 0) required int createdDate,
    // @JsonKey(name: 'updatedDate', defaultValue: 0) required int updatedDate,
  }) = _ItemDto;

  factory ItemDto.fromDomain(Item item) {
    return ItemDto(
      userID: item.userID,
      itemID: item.itemID,
      title: item.title,
      likesCount: item.likesCount,
      commentsCount: item.commentsCount,
      price: item.price,
      images: item.images,
      videos: item.videos,
      // createdDate: item.createdDate.millisecondsSinceEpoch,
      // updatedDate: item.updatedDate.millisecondsSinceEpoch,
    );
  }

  Item toDomain() {
    return Item(
      userID: userID,
      itemID: itemID,
      title: title,
      likesCount: likesCount,
      commentsCount: commentsCount,
      price: price,
      videos: videos,
      images: images,
      // createdDate: DateTime.fromMillisecondsSinceEpoch(createdDate),
      // updatedDate: DateTime.fromMillisecondsSinceEpoch(updatedDate),
    );
  }

  factory ItemDto.fromJson(Map<String, dynamic> json) =>
      _$ItemDtoFromJson(json);

  factory ItemDto.fromStrapi(Map<String, dynamic> json) {
    final attributes = json['attributes'] as Map<String, dynamic>;
    final images = (attributes['images']?['data'] as List?)
            ?.map((image) =>
                '${EnvConfig.uploadUrl}${image['attributes']['url']}')
            .toList() ??
        [];
    final videos = (attributes['videos']?['data'] as List?)
            ?.map((video) =>
                '${EnvConfig.uploadUrl}${video['attributes']['url']}')
            .toList() ??
        [];

    return ItemDto(
      userID: attributes['userID'] as String? ?? '',
      itemID: json['id'].toString(), // Using Strapi's auto-generated ID
      title: attributes['title'] as String? ?? '',
      price: (attributes['price'] as int),
      images: images,
      videos: videos,
      likesCount: attributes['likesCount'] as int? ?? 0,
      commentsCount: attributes['commentsCount'] as int? ?? 0,
    );
  }
}
