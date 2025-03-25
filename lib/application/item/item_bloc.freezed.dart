// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ItemEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetchItems,
    required TResult Function(String itemID) fetchItem,
    required TResult Function(Item item) addItem,
    required TResult Function(List<String> images) addImage,
    required TResult Function(List<String> videos) addVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetchItems,
    TResult? Function(String itemID)? fetchItem,
    TResult? Function(Item item)? addItem,
    TResult? Function(List<String> images)? addImage,
    TResult? Function(List<String> videos)? addVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetchItems,
    TResult Function(String itemID)? fetchItem,
    TResult Function(Item item)? addItem,
    TResult Function(List<String> images)? addImage,
    TResult Function(List<String> videos)? addVideo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_FetchItems value) fetchItems,
    required TResult Function(_FetchItem value) fetchItem,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_AddImage value) addImage,
    required TResult Function(_AddVideo value) addVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_FetchItems value)? fetchItems,
    TResult? Function(_FetchItem value)? fetchItem,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_AddImage value)? addImage,
    TResult? Function(_AddVideo value)? addVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_FetchItems value)? fetchItems,
    TResult Function(_FetchItem value)? fetchItem,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_AddImage value)? addImage,
    TResult Function(_AddVideo value)? addVideo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemEventCopyWith<$Res> {
  factory $ItemEventCopyWith(ItemEvent value, $Res Function(ItemEvent) then) =
      _$ItemEventCopyWithImpl<$Res, ItemEvent>;
}

/// @nodoc
class _$ItemEventCopyWithImpl<$Res, $Val extends ItemEvent>
    implements $ItemEventCopyWith<$Res> {
  _$ItemEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitializedImplCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
          _$InitializedImpl value, $Res Function(_$InitializedImpl) then) =
      __$$InitializedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$ItemEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl();

  @override
  String toString() {
    return 'ItemEvent.initialized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetchItems,
    required TResult Function(String itemID) fetchItem,
    required TResult Function(Item item) addItem,
    required TResult Function(List<String> images) addImage,
    required TResult Function(List<String> videos) addVideo,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetchItems,
    TResult? Function(String itemID)? fetchItem,
    TResult? Function(Item item)? addItem,
    TResult? Function(List<String> images)? addImage,
    TResult? Function(List<String> videos)? addVideo,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetchItems,
    TResult Function(String itemID)? fetchItem,
    TResult Function(Item item)? addItem,
    TResult Function(List<String> images)? addImage,
    TResult Function(List<String> videos)? addVideo,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_FetchItems value) fetchItems,
    required TResult Function(_FetchItem value) fetchItem,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_AddImage value) addImage,
    required TResult Function(_AddVideo value) addVideo,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_FetchItems value)? fetchItems,
    TResult? Function(_FetchItem value)? fetchItem,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_AddImage value)? addImage,
    TResult? Function(_AddVideo value)? addVideo,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_FetchItems value)? fetchItems,
    TResult Function(_FetchItem value)? fetchItem,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_AddImage value)? addImage,
    TResult Function(_AddVideo value)? addVideo,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ItemEvent {
  const factory _Initialized() = _$InitializedImpl;
}

/// @nodoc
abstract class _$$FetchItemsImplCopyWith<$Res> {
  factory _$$FetchItemsImplCopyWith(
          _$FetchItemsImpl value, $Res Function(_$FetchItemsImpl) then) =
      __$$FetchItemsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchItemsImplCopyWithImpl<$Res>
    extends _$ItemEventCopyWithImpl<$Res, _$FetchItemsImpl>
    implements _$$FetchItemsImplCopyWith<$Res> {
  __$$FetchItemsImplCopyWithImpl(
      _$FetchItemsImpl _value, $Res Function(_$FetchItemsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchItemsImpl implements _FetchItems {
  const _$FetchItemsImpl();

  @override
  String toString() {
    return 'ItemEvent.fetchItems()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchItemsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetchItems,
    required TResult Function(String itemID) fetchItem,
    required TResult Function(Item item) addItem,
    required TResult Function(List<String> images) addImage,
    required TResult Function(List<String> videos) addVideo,
  }) {
    return fetchItems();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetchItems,
    TResult? Function(String itemID)? fetchItem,
    TResult? Function(Item item)? addItem,
    TResult? Function(List<String> images)? addImage,
    TResult? Function(List<String> videos)? addVideo,
  }) {
    return fetchItems?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetchItems,
    TResult Function(String itemID)? fetchItem,
    TResult Function(Item item)? addItem,
    TResult Function(List<String> images)? addImage,
    TResult Function(List<String> videos)? addVideo,
    required TResult orElse(),
  }) {
    if (fetchItems != null) {
      return fetchItems();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_FetchItems value) fetchItems,
    required TResult Function(_FetchItem value) fetchItem,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_AddImage value) addImage,
    required TResult Function(_AddVideo value) addVideo,
  }) {
    return fetchItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_FetchItems value)? fetchItems,
    TResult? Function(_FetchItem value)? fetchItem,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_AddImage value)? addImage,
    TResult? Function(_AddVideo value)? addVideo,
  }) {
    return fetchItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_FetchItems value)? fetchItems,
    TResult Function(_FetchItem value)? fetchItem,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_AddImage value)? addImage,
    TResult Function(_AddVideo value)? addVideo,
    required TResult orElse(),
  }) {
    if (fetchItems != null) {
      return fetchItems(this);
    }
    return orElse();
  }
}

abstract class _FetchItems implements ItemEvent {
  const factory _FetchItems() = _$FetchItemsImpl;
}

/// @nodoc
abstract class _$$FetchItemImplCopyWith<$Res> {
  factory _$$FetchItemImplCopyWith(
          _$FetchItemImpl value, $Res Function(_$FetchItemImpl) then) =
      __$$FetchItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String itemID});
}

/// @nodoc
class __$$FetchItemImplCopyWithImpl<$Res>
    extends _$ItemEventCopyWithImpl<$Res, _$FetchItemImpl>
    implements _$$FetchItemImplCopyWith<$Res> {
  __$$FetchItemImplCopyWithImpl(
      _$FetchItemImpl _value, $Res Function(_$FetchItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemID = null,
  }) {
    return _then(_$FetchItemImpl(
      itemID: null == itemID
          ? _value.itemID
          : itemID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchItemImpl implements _FetchItem {
  const _$FetchItemImpl({required this.itemID});

  @override
  final String itemID;

  @override
  String toString() {
    return 'ItemEvent.fetchItem(itemID: $itemID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchItemImpl &&
            (identical(other.itemID, itemID) || other.itemID == itemID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, itemID);

  /// Create a copy of ItemEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchItemImplCopyWith<_$FetchItemImpl> get copyWith =>
      __$$FetchItemImplCopyWithImpl<_$FetchItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetchItems,
    required TResult Function(String itemID) fetchItem,
    required TResult Function(Item item) addItem,
    required TResult Function(List<String> images) addImage,
    required TResult Function(List<String> videos) addVideo,
  }) {
    return fetchItem(itemID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetchItems,
    TResult? Function(String itemID)? fetchItem,
    TResult? Function(Item item)? addItem,
    TResult? Function(List<String> images)? addImage,
    TResult? Function(List<String> videos)? addVideo,
  }) {
    return fetchItem?.call(itemID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetchItems,
    TResult Function(String itemID)? fetchItem,
    TResult Function(Item item)? addItem,
    TResult Function(List<String> images)? addImage,
    TResult Function(List<String> videos)? addVideo,
    required TResult orElse(),
  }) {
    if (fetchItem != null) {
      return fetchItem(itemID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_FetchItems value) fetchItems,
    required TResult Function(_FetchItem value) fetchItem,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_AddImage value) addImage,
    required TResult Function(_AddVideo value) addVideo,
  }) {
    return fetchItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_FetchItems value)? fetchItems,
    TResult? Function(_FetchItem value)? fetchItem,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_AddImage value)? addImage,
    TResult? Function(_AddVideo value)? addVideo,
  }) {
    return fetchItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_FetchItems value)? fetchItems,
    TResult Function(_FetchItem value)? fetchItem,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_AddImage value)? addImage,
    TResult Function(_AddVideo value)? addVideo,
    required TResult orElse(),
  }) {
    if (fetchItem != null) {
      return fetchItem(this);
    }
    return orElse();
  }
}

abstract class _FetchItem implements ItemEvent {
  const factory _FetchItem({required final String itemID}) = _$FetchItemImpl;

  String get itemID;

  /// Create a copy of ItemEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchItemImplCopyWith<_$FetchItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddItemImplCopyWith<$Res> {
  factory _$$AddItemImplCopyWith(
          _$AddItemImpl value, $Res Function(_$AddItemImpl) then) =
      __$$AddItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Item item});

  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$AddItemImplCopyWithImpl<$Res>
    extends _$ItemEventCopyWithImpl<$Res, _$AddItemImpl>
    implements _$$AddItemImplCopyWith<$Res> {
  __$$AddItemImplCopyWithImpl(
      _$AddItemImpl _value, $Res Function(_$AddItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$AddItemImpl(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
    ));
  }

  /// Create a copy of ItemEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ItemCopyWith<$Res> get item {
    return $ItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$AddItemImpl implements _AddItem {
  const _$AddItemImpl({required this.item});

  @override
  final Item item;

  @override
  String toString() {
    return 'ItemEvent.addItem(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddItemImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  /// Create a copy of ItemEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddItemImplCopyWith<_$AddItemImpl> get copyWith =>
      __$$AddItemImplCopyWithImpl<_$AddItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetchItems,
    required TResult Function(String itemID) fetchItem,
    required TResult Function(Item item) addItem,
    required TResult Function(List<String> images) addImage,
    required TResult Function(List<String> videos) addVideo,
  }) {
    return addItem(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetchItems,
    TResult? Function(String itemID)? fetchItem,
    TResult? Function(Item item)? addItem,
    TResult? Function(List<String> images)? addImage,
    TResult? Function(List<String> videos)? addVideo,
  }) {
    return addItem?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetchItems,
    TResult Function(String itemID)? fetchItem,
    TResult Function(Item item)? addItem,
    TResult Function(List<String> images)? addImage,
    TResult Function(List<String> videos)? addVideo,
    required TResult orElse(),
  }) {
    if (addItem != null) {
      return addItem(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_FetchItems value) fetchItems,
    required TResult Function(_FetchItem value) fetchItem,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_AddImage value) addImage,
    required TResult Function(_AddVideo value) addVideo,
  }) {
    return addItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_FetchItems value)? fetchItems,
    TResult? Function(_FetchItem value)? fetchItem,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_AddImage value)? addImage,
    TResult? Function(_AddVideo value)? addVideo,
  }) {
    return addItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_FetchItems value)? fetchItems,
    TResult Function(_FetchItem value)? fetchItem,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_AddImage value)? addImage,
    TResult Function(_AddVideo value)? addVideo,
    required TResult orElse(),
  }) {
    if (addItem != null) {
      return addItem(this);
    }
    return orElse();
  }
}

abstract class _AddItem implements ItemEvent {
  const factory _AddItem({required final Item item}) = _$AddItemImpl;

  Item get item;

  /// Create a copy of ItemEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddItemImplCopyWith<_$AddItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddImageImplCopyWith<$Res> {
  factory _$$AddImageImplCopyWith(
          _$AddImageImpl value, $Res Function(_$AddImageImpl) then) =
      __$$AddImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> images});
}

/// @nodoc
class __$$AddImageImplCopyWithImpl<$Res>
    extends _$ItemEventCopyWithImpl<$Res, _$AddImageImpl>
    implements _$$AddImageImplCopyWith<$Res> {
  __$$AddImageImplCopyWithImpl(
      _$AddImageImpl _value, $Res Function(_$AddImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
  }) {
    return _then(_$AddImageImpl(
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$AddImageImpl implements _AddImage {
  const _$AddImageImpl({required final List<String> images}) : _images = images;

  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'ItemEvent.addImage(images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddImageImpl &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_images));

  /// Create a copy of ItemEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddImageImplCopyWith<_$AddImageImpl> get copyWith =>
      __$$AddImageImplCopyWithImpl<_$AddImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetchItems,
    required TResult Function(String itemID) fetchItem,
    required TResult Function(Item item) addItem,
    required TResult Function(List<String> images) addImage,
    required TResult Function(List<String> videos) addVideo,
  }) {
    return addImage(images);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetchItems,
    TResult? Function(String itemID)? fetchItem,
    TResult? Function(Item item)? addItem,
    TResult? Function(List<String> images)? addImage,
    TResult? Function(List<String> videos)? addVideo,
  }) {
    return addImage?.call(images);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetchItems,
    TResult Function(String itemID)? fetchItem,
    TResult Function(Item item)? addItem,
    TResult Function(List<String> images)? addImage,
    TResult Function(List<String> videos)? addVideo,
    required TResult orElse(),
  }) {
    if (addImage != null) {
      return addImage(images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_FetchItems value) fetchItems,
    required TResult Function(_FetchItem value) fetchItem,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_AddImage value) addImage,
    required TResult Function(_AddVideo value) addVideo,
  }) {
    return addImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_FetchItems value)? fetchItems,
    TResult? Function(_FetchItem value)? fetchItem,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_AddImage value)? addImage,
    TResult? Function(_AddVideo value)? addVideo,
  }) {
    return addImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_FetchItems value)? fetchItems,
    TResult Function(_FetchItem value)? fetchItem,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_AddImage value)? addImage,
    TResult Function(_AddVideo value)? addVideo,
    required TResult orElse(),
  }) {
    if (addImage != null) {
      return addImage(this);
    }
    return orElse();
  }
}

abstract class _AddImage implements ItemEvent {
  const factory _AddImage({required final List<String> images}) =
      _$AddImageImpl;

  List<String> get images;

  /// Create a copy of ItemEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddImageImplCopyWith<_$AddImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddVideoImplCopyWith<$Res> {
  factory _$$AddVideoImplCopyWith(
          _$AddVideoImpl value, $Res Function(_$AddVideoImpl) then) =
      __$$AddVideoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> videos});
}

/// @nodoc
class __$$AddVideoImplCopyWithImpl<$Res>
    extends _$ItemEventCopyWithImpl<$Res, _$AddVideoImpl>
    implements _$$AddVideoImplCopyWith<$Res> {
  __$$AddVideoImplCopyWithImpl(
      _$AddVideoImpl _value, $Res Function(_$AddVideoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videos = null,
  }) {
    return _then(_$AddVideoImpl(
      videos: null == videos
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$AddVideoImpl implements _AddVideo {
  const _$AddVideoImpl({required final List<String> videos}) : _videos = videos;

  final List<String> _videos;
  @override
  List<String> get videos {
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videos);
  }

  @override
  String toString() {
    return 'ItemEvent.addVideo(videos: $videos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddVideoImpl &&
            const DeepCollectionEquality().equals(other._videos, _videos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_videos));

  /// Create a copy of ItemEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddVideoImplCopyWith<_$AddVideoImpl> get copyWith =>
      __$$AddVideoImplCopyWithImpl<_$AddVideoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetchItems,
    required TResult Function(String itemID) fetchItem,
    required TResult Function(Item item) addItem,
    required TResult Function(List<String> images) addImage,
    required TResult Function(List<String> videos) addVideo,
  }) {
    return addVideo(videos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetchItems,
    TResult? Function(String itemID)? fetchItem,
    TResult? Function(Item item)? addItem,
    TResult? Function(List<String> images)? addImage,
    TResult? Function(List<String> videos)? addVideo,
  }) {
    return addVideo?.call(videos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetchItems,
    TResult Function(String itemID)? fetchItem,
    TResult Function(Item item)? addItem,
    TResult Function(List<String> images)? addImage,
    TResult Function(List<String> videos)? addVideo,
    required TResult orElse(),
  }) {
    if (addVideo != null) {
      return addVideo(videos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_FetchItems value) fetchItems,
    required TResult Function(_FetchItem value) fetchItem,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_AddImage value) addImage,
    required TResult Function(_AddVideo value) addVideo,
  }) {
    return addVideo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_FetchItems value)? fetchItems,
    TResult? Function(_FetchItem value)? fetchItem,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_AddImage value)? addImage,
    TResult? Function(_AddVideo value)? addVideo,
  }) {
    return addVideo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_FetchItems value)? fetchItems,
    TResult Function(_FetchItem value)? fetchItem,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_AddImage value)? addImage,
    TResult Function(_AddVideo value)? addVideo,
    required TResult orElse(),
  }) {
    if (addVideo != null) {
      return addVideo(this);
    }
    return orElse();
  }
}

abstract class _AddVideo implements ItemEvent {
  const factory _AddVideo({required final List<String> videos}) =
      _$AddVideoImpl;

  List<String> get videos;

  /// Create a copy of ItemEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddVideoImplCopyWith<_$AddVideoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ItemState {
  Option<Either<ApiFailure, dynamic>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Item get item => throw _privateConstructorUsedError;
  List<Item> get itemList => throw _privateConstructorUsedError;

  /// Create a copy of ItemState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemStateCopyWith<ItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemStateCopyWith<$Res> {
  factory $ItemStateCopyWith(ItemState value, $Res Function(ItemState) then) =
      _$ItemStateCopyWithImpl<$Res, ItemState>;
  @useResult
  $Res call(
      {Option<Either<ApiFailure, dynamic>> failureOrSuccessOption,
      bool isLoading,
      Item item,
      List<Item> itemList});

  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class _$ItemStateCopyWithImpl<$Res, $Val extends ItemState>
    implements $ItemStateCopyWith<$Res> {
  _$ItemStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrSuccessOption = null,
    Object? isLoading = null,
    Object? item = null,
    Object? itemList = null,
  }) {
    return _then(_value.copyWith(
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
      itemList: null == itemList
          ? _value.itemList
          : itemList // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ) as $Val);
  }

  /// Create a copy of ItemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ItemCopyWith<$Res> get item {
    return $ItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemStateImplCopyWith<$Res>
    implements $ItemStateCopyWith<$Res> {
  factory _$$ItemStateImplCopyWith(
          _$ItemStateImpl value, $Res Function(_$ItemStateImpl) then) =
      __$$ItemStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Either<ApiFailure, dynamic>> failureOrSuccessOption,
      bool isLoading,
      Item item,
      List<Item> itemList});

  @override
  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$ItemStateImplCopyWithImpl<$Res>
    extends _$ItemStateCopyWithImpl<$Res, _$ItemStateImpl>
    implements _$$ItemStateImplCopyWith<$Res> {
  __$$ItemStateImplCopyWithImpl(
      _$ItemStateImpl _value, $Res Function(_$ItemStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrSuccessOption = null,
    Object? isLoading = null,
    Object? item = null,
    Object? itemList = null,
  }) {
    return _then(_$ItemStateImpl(
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
      itemList: null == itemList
          ? _value._itemList
          : itemList // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc

class _$ItemStateImpl extends _ItemState {
  const _$ItemStateImpl(
      {required this.failureOrSuccessOption,
      required this.isLoading,
      required this.item,
      required final List<Item> itemList})
      : _itemList = itemList,
        super._();

  @override
  final Option<Either<ApiFailure, dynamic>> failureOrSuccessOption;
  @override
  final bool isLoading;
  @override
  final Item item;
  final List<Item> _itemList;
  @override
  List<Item> get itemList {
    if (_itemList is EqualUnmodifiableListView) return _itemList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_itemList);
  }

  @override
  String toString() {
    return 'ItemState(failureOrSuccessOption: $failureOrSuccessOption, isLoading: $isLoading, item: $item, itemList: $itemList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemStateImpl &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.item, item) || other.item == item) &&
            const DeepCollectionEquality().equals(other._itemList, _itemList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrSuccessOption,
      isLoading, item, const DeepCollectionEquality().hash(_itemList));

  /// Create a copy of ItemState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemStateImplCopyWith<_$ItemStateImpl> get copyWith =>
      __$$ItemStateImplCopyWithImpl<_$ItemStateImpl>(this, _$identity);
}

abstract class _ItemState extends ItemState {
  const factory _ItemState(
      {required final Option<Either<ApiFailure, dynamic>>
          failureOrSuccessOption,
      required final bool isLoading,
      required final Item item,
      required final List<Item> itemList}) = _$ItemStateImpl;
  const _ItemState._() : super._();

  @override
  Option<Either<ApiFailure, dynamic>> get failureOrSuccessOption;
  @override
  bool get isLoading;
  @override
  Item get item;
  @override
  List<Item> get itemList;

  /// Create a copy of ItemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemStateImplCopyWith<_$ItemStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
