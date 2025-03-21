import 'package:flutter_application_1/domain/user/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item.freezed.dart';

@freezed
class Item with _$Item {
  const Item._();

  const factory Item({
    required String itemID,
    required String userID,
    required String title,
    required int likesCount,
    required int commentsCount,
    required int price,
    required List<String> images,
    required List<String> videos,
    required DateTime createdDate,
    // required DateTime updatedDate,
  }) = _Item;

  factory Item.empty() => Item(
        userID: '',
        itemID: '',
        title: '',
        likesCount: 0,
        commentsCount: 0,
        price: 0,
        images: <String>[],
        videos: <String>[],
        createdDate: DateTime(2025),
        // updatedDate: DateTime(2023),
      );
}
