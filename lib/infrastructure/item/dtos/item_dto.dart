// ignore_for_file: invalid_annotation_target

import 'package:flutter_application_1/domain/item/entities/item.dart';
import 'package:flutter_application_1/domain/user/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_application_1/env_config.dart';

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
    try {
      final images = (json['images'] as List?)?.map((image) {
            final url = image['url'] as String;
            return '${EnvConfig.uploadUrl}$url';
          }).toList() ??
          [];

      return ItemDto(
        itemID: json['id'].toString(),
        userID: json['userID']?.toString() ?? '',
        title: json['title']?.toString() ??
            '', // Note: 'titile' is the field name in Strapi
        price: (json['price'] as int) ?? 0,
        images: images,
        likesCount: json['likesCount'] as int? ?? 0,
        commentsCount: json['commentsCount'] as int? ?? 0,
        videos: [], // Since videos is null in response
      );
    } catch (e) {
      print('Error parsing ItemDto: $e');
      print('JSON data: $json');
      rethrow;
    }
  }
}
