// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_1/domain/item/entities/item.dart';
import 'package:flutter_application_1/domain/user/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
    @JsonKey(name: 'thumbnail', defaultValue: '') required String thumbnail,
    @JsonKey(name: 'description', defaultValue: '') required String description,
    @JsonKey(name: 'commentsCount', defaultValue: 0) required int commentsCount,
    @JsonKey(name: 'price', defaultValue: 0) required int price,
    @JsonKey(name: 'images', defaultValue: <String>[])
    required List<String> images,
    @JsonKey(name: 'videos', defaultValue: <String>[])
    required List<String> videos,
    @JsonKey(name: 'createdDate', defaultValue: 0) required int createdDate,
    // @JsonKey(name: 'updatedDate', defaultValue: 0) required int updatedDate,
  }) = _ItemDto;

  factory ItemDto.fromDomain(Item item) {
    return ItemDto(
      userID: item.userID,
      itemID: item.itemID,
      title: item.title,
      thumbnail: item.thumbnail,
      description: item.description,
      likesCount: item.likesCount,
      commentsCount: item.commentsCount,
      price: item.price,
      images: item.images,
      videos: item.videos,
      createdDate: item.createdDate.millisecondsSinceEpoch,
      // updatedDate: item.updatedDate.millisecondsSinceEpoch,
    );
  }

  Item toDomain() {
    return Item(
      userID: userID,
      itemID: itemID,
      title: title,
      thumbnail: thumbnail,
      likesCount: likesCount,
      description: description,
      commentsCount: commentsCount,
      price: price,
      videos: videos,
      images: images,
      createdDate: DateTime(2025),
      // updatedDate: DateTime.fromMillisecondsSinceEpoch(updatedDate),
    );
  }

  factory ItemDto.fromJson(Map<String, dynamic> json) =>
      _$ItemDtoFromJson(json);
}
