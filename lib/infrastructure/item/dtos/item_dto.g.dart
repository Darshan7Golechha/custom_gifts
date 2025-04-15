// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemDtoImpl _$$ItemDtoImplFromJson(Map<String, dynamic> json) =>
    _$ItemDtoImpl(
      userID: json['userID'] as String? ?? '',
      itemID: json['itemID'] as String? ?? '',
      title: json['title'] as String? ?? '',
      likesCount: (json['likesCount'] as num?)?.toInt() ?? 0,
      thumbnail: json['thumbnail'] as String? ?? '',
      category: json['category'] as String? ?? '',
      description: json['description'] as String? ?? '',
      commentsCount: (json['commentsCount'] as num?)?.toInt() ?? 0,
      price: (json['price'] as num?)?.toInt() ?? 0,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      videos: (json['videos'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      createdDate: (json['createdDate'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ItemDtoImplToJson(_$ItemDtoImpl instance) =>
    <String, dynamic>{
      'userID': instance.userID,
      'itemID': instance.itemID,
      'title': instance.title,
      'likesCount': instance.likesCount,
      'thumbnail': instance.thumbnail,
      'category': instance.category,
      'description': instance.description,
      'commentsCount': instance.commentsCount,
      'price': instance.price,
      'images': instance.images,
      'videos': instance.videos,
      'createdDate': instance.createdDate,
    };
