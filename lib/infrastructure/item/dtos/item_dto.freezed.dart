// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ItemDto _$ItemDtoFromJson(Map<String, dynamic> json) {
  return _ItemDto.fromJson(json);
}

/// @nodoc
mixin _$ItemDto {
  @JsonKey(name: 'userID', defaultValue: '')
  String get userID => throw _privateConstructorUsedError;
  @JsonKey(name: 'itemID', defaultValue: '')
  String get itemID => throw _privateConstructorUsedError;
  @JsonKey(name: 'title', defaultValue: '')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'likesCount', defaultValue: 0)
  int get likesCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'commentsCount', defaultValue: 0)
  int get commentsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'price', defaultValue: 0)
  int get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'images', defaultValue: <String>[])
  List<String> get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'videos', defaultValue: <String>[])
  List<String> get videos => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdDate', defaultValue: 0)
  int get createdDate => throw _privateConstructorUsedError;

  /// Serializes this ItemDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ItemDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemDtoCopyWith<ItemDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemDtoCopyWith<$Res> {
  factory $ItemDtoCopyWith(ItemDto value, $Res Function(ItemDto) then) =
      _$ItemDtoCopyWithImpl<$Res, ItemDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'userID', defaultValue: '') String userID,
      @JsonKey(name: 'itemID', defaultValue: '') String itemID,
      @JsonKey(name: 'title', defaultValue: '') String title,
      @JsonKey(name: 'likesCount', defaultValue: 0) int likesCount,
      @JsonKey(name: 'commentsCount', defaultValue: 0) int commentsCount,
      @JsonKey(name: 'price', defaultValue: 0) int price,
      @JsonKey(name: 'images', defaultValue: <String>[]) List<String> images,
      @JsonKey(name: 'videos', defaultValue: <String>[]) List<String> videos,
      @JsonKey(name: 'createdDate', defaultValue: 0) int createdDate});
}

/// @nodoc
class _$ItemDtoCopyWithImpl<$Res, $Val extends ItemDto>
    implements $ItemDtoCopyWith<$Res> {
  _$ItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
    Object? itemID = null,
    Object? title = null,
    Object? likesCount = null,
    Object? commentsCount = null,
    Object? price = null,
    Object? images = null,
    Object? videos = null,
    Object? createdDate = null,
  }) {
    return _then(_value.copyWith(
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
      itemID: null == itemID
          ? _value.itemID
          : itemID // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemDtoImplCopyWith<$Res> implements $ItemDtoCopyWith<$Res> {
  factory _$$ItemDtoImplCopyWith(
          _$ItemDtoImpl value, $Res Function(_$ItemDtoImpl) then) =
      __$$ItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'userID', defaultValue: '') String userID,
      @JsonKey(name: 'itemID', defaultValue: '') String itemID,
      @JsonKey(name: 'title', defaultValue: '') String title,
      @JsonKey(name: 'likesCount', defaultValue: 0) int likesCount,
      @JsonKey(name: 'commentsCount', defaultValue: 0) int commentsCount,
      @JsonKey(name: 'price', defaultValue: 0) int price,
      @JsonKey(name: 'images', defaultValue: <String>[]) List<String> images,
      @JsonKey(name: 'videos', defaultValue: <String>[]) List<String> videos,
      @JsonKey(name: 'createdDate', defaultValue: 0) int createdDate});
}

/// @nodoc
class __$$ItemDtoImplCopyWithImpl<$Res>
    extends _$ItemDtoCopyWithImpl<$Res, _$ItemDtoImpl>
    implements _$$ItemDtoImplCopyWith<$Res> {
  __$$ItemDtoImplCopyWithImpl(
      _$ItemDtoImpl _value, $Res Function(_$ItemDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
    Object? itemID = null,
    Object? title = null,
    Object? likesCount = null,
    Object? commentsCount = null,
    Object? price = null,
    Object? images = null,
    Object? videos = null,
    Object? createdDate = null,
  }) {
    return _then(_$ItemDtoImpl(
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
      itemID: null == itemID
          ? _value.itemID
          : itemID // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemDtoImpl extends _ItemDto {
  const _$ItemDtoImpl(
      {@JsonKey(name: 'userID', defaultValue: '') required this.userID,
      @JsonKey(name: 'itemID', defaultValue: '') required this.itemID,
      @JsonKey(name: 'title', defaultValue: '') required this.title,
      @JsonKey(name: 'likesCount', defaultValue: 0) required this.likesCount,
      @JsonKey(name: 'commentsCount', defaultValue: 0)
      required this.commentsCount,
      @JsonKey(name: 'price', defaultValue: 0) required this.price,
      @JsonKey(name: 'images', defaultValue: <String>[])
      required final List<String> images,
      @JsonKey(name: 'videos', defaultValue: <String>[])
      required final List<String> videos,
      @JsonKey(name: 'createdDate', defaultValue: 0) required this.createdDate})
      : _images = images,
        _videos = videos,
        super._();

  factory _$ItemDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemDtoImplFromJson(json);

  @override
  @JsonKey(name: 'userID', defaultValue: '')
  final String userID;
  @override
  @JsonKey(name: 'itemID', defaultValue: '')
  final String itemID;
  @override
  @JsonKey(name: 'title', defaultValue: '')
  final String title;
  @override
  @JsonKey(name: 'likesCount', defaultValue: 0)
  final int likesCount;
  @override
  @JsonKey(name: 'commentsCount', defaultValue: 0)
  final int commentsCount;
  @override
  @JsonKey(name: 'price', defaultValue: 0)
  final int price;
  final List<String> _images;
  @override
  @JsonKey(name: 'images', defaultValue: <String>[])
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  final List<String> _videos;
  @override
  @JsonKey(name: 'videos', defaultValue: <String>[])
  List<String> get videos {
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videos);
  }

  @override
  @JsonKey(name: 'createdDate', defaultValue: 0)
  final int createdDate;

  @override
  String toString() {
    return 'ItemDto(userID: $userID, itemID: $itemID, title: $title, likesCount: $likesCount, commentsCount: $commentsCount, price: $price, images: $images, videos: $videos, createdDate: $createdDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemDtoImpl &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.itemID, itemID) || other.itemID == itemID) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.likesCount, likesCount) ||
                other.likesCount == likesCount) &&
            (identical(other.commentsCount, commentsCount) ||
                other.commentsCount == commentsCount) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._videos, _videos) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userID,
      itemID,
      title,
      likesCount,
      commentsCount,
      price,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_videos),
      createdDate);

  /// Create a copy of ItemDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemDtoImplCopyWith<_$ItemDtoImpl> get copyWith =>
      __$$ItemDtoImplCopyWithImpl<_$ItemDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemDtoImplToJson(
      this,
    );
  }
}

abstract class _ItemDto extends ItemDto {
  const factory _ItemDto(
      {@JsonKey(name: 'userID', defaultValue: '') required final String userID,
      @JsonKey(name: 'itemID', defaultValue: '') required final String itemID,
      @JsonKey(name: 'title', defaultValue: '') required final String title,
      @JsonKey(name: 'likesCount', defaultValue: 0)
      required final int likesCount,
      @JsonKey(name: 'commentsCount', defaultValue: 0)
      required final int commentsCount,
      @JsonKey(name: 'price', defaultValue: 0) required final int price,
      @JsonKey(name: 'images', defaultValue: <String>[])
      required final List<String> images,
      @JsonKey(name: 'videos', defaultValue: <String>[])
      required final List<String> videos,
      @JsonKey(name: 'createdDate', defaultValue: 0)
      required final int createdDate}) = _$ItemDtoImpl;
  const _ItemDto._() : super._();

  factory _ItemDto.fromJson(Map<String, dynamic> json) = _$ItemDtoImpl.fromJson;

  @override
  @JsonKey(name: 'userID', defaultValue: '')
  String get userID;
  @override
  @JsonKey(name: 'itemID', defaultValue: '')
  String get itemID;
  @override
  @JsonKey(name: 'title', defaultValue: '')
  String get title;
  @override
  @JsonKey(name: 'likesCount', defaultValue: 0)
  int get likesCount;
  @override
  @JsonKey(name: 'commentsCount', defaultValue: 0)
  int get commentsCount;
  @override
  @JsonKey(name: 'price', defaultValue: 0)
  int get price;
  @override
  @JsonKey(name: 'images', defaultValue: <String>[])
  List<String> get images;
  @override
  @JsonKey(name: 'videos', defaultValue: <String>[])
  List<String> get videos;
  @override
  @JsonKey(name: 'createdDate', defaultValue: 0)
  int get createdDate;

  /// Create a copy of ItemDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemDtoImplCopyWith<_$ItemDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
