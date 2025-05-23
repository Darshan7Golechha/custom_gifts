// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Item {
  String get itemID => throw _privateConstructorUsedError;
  String get userID => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get likesCount => throw _privateConstructorUsedError;
  int get commentsCount => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  List<String> get videos => throw _privateConstructorUsedError;
  DateTime get createdDate => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call(
      {String itemID,
      String userID,
      String title,
      String thumbnail,
      String category,
      String description,
      int likesCount,
      int commentsCount,
      int price,
      List<String> images,
      List<String> videos,
      DateTime createdDate,
      User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemID = null,
    Object? userID = null,
    Object? title = null,
    Object? thumbnail = null,
    Object? category = null,
    Object? description = null,
    Object? likesCount = null,
    Object? commentsCount = null,
    Object? price = null,
    Object? images = null,
    Object? videos = null,
    Object? createdDate = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      itemID: null == itemID
          ? _value.itemID
          : itemID // ignore: cast_nullable_to_non_nullable
              as String,
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      likesCount: null == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
      commentsCount: null == commentsCount
          ? _value.commentsCount
          : commentsCount // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      videos: null == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemImplCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$ItemImplCopyWith(
          _$ItemImpl value, $Res Function(_$ItemImpl) then) =
      __$$ItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String itemID,
      String userID,
      String title,
      String thumbnail,
      String category,
      String description,
      int likesCount,
      int commentsCount,
      int price,
      List<String> images,
      List<String> videos,
      DateTime createdDate,
      User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$ItemImplCopyWithImpl<$Res>
    extends _$ItemCopyWithImpl<$Res, _$ItemImpl>
    implements _$$ItemImplCopyWith<$Res> {
  __$$ItemImplCopyWithImpl(_$ItemImpl _value, $Res Function(_$ItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemID = null,
    Object? userID = null,
    Object? title = null,
    Object? thumbnail = null,
    Object? category = null,
    Object? description = null,
    Object? likesCount = null,
    Object? commentsCount = null,
    Object? price = null,
    Object? images = null,
    Object? videos = null,
    Object? createdDate = null,
    Object? user = null,
  }) {
    return _then(_$ItemImpl(
      itemID: null == itemID
          ? _value.itemID
          : itemID // ignore: cast_nullable_to_non_nullable
              as String,
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      likesCount: null == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
      commentsCount: null == commentsCount
          ? _value.commentsCount
          : commentsCount // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      videos: null == videos
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$ItemImpl extends _Item {
  const _$ItemImpl(
      {required this.itemID,
      required this.userID,
      required this.title,
      required this.thumbnail,
      required this.category,
      required this.description,
      required this.likesCount,
      required this.commentsCount,
      required this.price,
      required final List<String> images,
      required final List<String> videos,
      required this.createdDate,
      required this.user})
      : _images = images,
        _videos = videos,
        super._();

  @override
  final String itemID;
  @override
  final String userID;
  @override
  final String title;
  @override
  final String thumbnail;
  @override
  final String category;
  @override
  final String description;
  @override
  final int likesCount;
  @override
  final int commentsCount;
  @override
  final int price;
  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  final List<String> _videos;
  @override
  List<String> get videos {
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videos);
  }

  @override
  final DateTime createdDate;
  @override
  final User user;

  @override
  String toString() {
    return 'Item(itemID: $itemID, userID: $userID, title: $title, thumbnail: $thumbnail, category: $category, description: $description, likesCount: $likesCount, commentsCount: $commentsCount, price: $price, images: $images, videos: $videos, createdDate: $createdDate, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemImpl &&
            (identical(other.itemID, itemID) || other.itemID == itemID) &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.likesCount, likesCount) ||
                other.likesCount == likesCount) &&
            (identical(other.commentsCount, commentsCount) ||
                other.commentsCount == commentsCount) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._videos, _videos) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      itemID,
      userID,
      title,
      thumbnail,
      category,
      description,
      likesCount,
      commentsCount,
      price,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_videos),
      createdDate,
      user);

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      __$$ItemImplCopyWithImpl<_$ItemImpl>(this, _$identity);
}

abstract class _Item extends Item {
  const factory _Item(
      {required final String itemID,
      required final String userID,
      required final String title,
      required final String thumbnail,
      required final String category,
      required final String description,
      required final int likesCount,
      required final int commentsCount,
      required final int price,
      required final List<String> images,
      required final List<String> videos,
      required final DateTime createdDate,
      required final User user}) = _$ItemImpl;
  const _Item._() : super._();

  @override
  String get itemID;
  @override
  String get userID;
  @override
  String get title;
  @override
  String get thumbnail;
  @override
  String get category;
  @override
  String get description;
  @override
  int get likesCount;
  @override
  int get commentsCount;
  @override
  int get price;
  @override
  List<String> get images;
  @override
  List<String> get videos;
  @override
  DateTime get createdDate;
  @override
  User get user;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
