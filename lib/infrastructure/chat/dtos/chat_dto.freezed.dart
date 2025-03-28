// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatDto _$ChatDtoFromJson(Map<String, dynamic> json) {
  return _ChatDto.fromJson(json);
}

/// @nodoc
mixin _$ChatDto {
  @JsonKey(name: 'createdDate', defaultValue: 0)
  int get createdDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'message', defaultValue: '')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'imageURL', defaultValue: '')
  String get imageURL => throw _privateConstructorUsedError;
  @JsonKey(name: 'videoURL', defaultValue: '')
  String get videoURL => throw _privateConstructorUsedError;
  @JsonKey(name: 'voiceURL', defaultValue: '')
  String get voiceURL => throw _privateConstructorUsedError;
  @JsonKey(name: 'senderUserID', defaultValue: '')
  String get senderUserID => throw _privateConstructorUsedError;
  @JsonKey(name: 'conversationID', defaultValue: '')
  String get conversationID => throw _privateConstructorUsedError;

  /// Serializes this ChatDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatDtoCopyWith<ChatDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatDtoCopyWith<$Res> {
  factory $ChatDtoCopyWith(ChatDto value, $Res Function(ChatDto) then) =
      _$ChatDtoCopyWithImpl<$Res, ChatDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'createdDate', defaultValue: 0) int createdDate,
      @JsonKey(name: 'message', defaultValue: '') String message,
      @JsonKey(name: 'imageURL', defaultValue: '') String imageURL,
      @JsonKey(name: 'videoURL', defaultValue: '') String videoURL,
      @JsonKey(name: 'voiceURL', defaultValue: '') String voiceURL,
      @JsonKey(name: 'senderUserID', defaultValue: '') String senderUserID,
      @JsonKey(name: 'conversationID', defaultValue: '')
      String conversationID});
}

/// @nodoc
class _$ChatDtoCopyWithImpl<$Res, $Val extends ChatDto>
    implements $ChatDtoCopyWith<$Res> {
  _$ChatDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdDate = null,
    Object? message = null,
    Object? imageURL = null,
    Object? videoURL = null,
    Object? voiceURL = null,
    Object? senderUserID = null,
    Object? conversationID = null,
  }) {
    return _then(_value.copyWith(
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      imageURL: null == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      videoURL: null == videoURL
          ? _value.videoURL
          : videoURL // ignore: cast_nullable_to_non_nullable
              as String,
      voiceURL: null == voiceURL
          ? _value.voiceURL
          : voiceURL // ignore: cast_nullable_to_non_nullable
              as String,
      senderUserID: null == senderUserID
          ? _value.senderUserID
          : senderUserID // ignore: cast_nullable_to_non_nullable
              as String,
      conversationID: null == conversationID
          ? _value.conversationID
          : conversationID // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatDtoImplCopyWith<$Res> implements $ChatDtoCopyWith<$Res> {
  factory _$$ChatDtoImplCopyWith(
          _$ChatDtoImpl value, $Res Function(_$ChatDtoImpl) then) =
      __$$ChatDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'createdDate', defaultValue: 0) int createdDate,
      @JsonKey(name: 'message', defaultValue: '') String message,
      @JsonKey(name: 'imageURL', defaultValue: '') String imageURL,
      @JsonKey(name: 'videoURL', defaultValue: '') String videoURL,
      @JsonKey(name: 'voiceURL', defaultValue: '') String voiceURL,
      @JsonKey(name: 'senderUserID', defaultValue: '') String senderUserID,
      @JsonKey(name: 'conversationID', defaultValue: '')
      String conversationID});
}

/// @nodoc
class __$$ChatDtoImplCopyWithImpl<$Res>
    extends _$ChatDtoCopyWithImpl<$Res, _$ChatDtoImpl>
    implements _$$ChatDtoImplCopyWith<$Res> {
  __$$ChatDtoImplCopyWithImpl(
      _$ChatDtoImpl _value, $Res Function(_$ChatDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdDate = null,
    Object? message = null,
    Object? imageURL = null,
    Object? videoURL = null,
    Object? voiceURL = null,
    Object? senderUserID = null,
    Object? conversationID = null,
  }) {
    return _then(_$ChatDtoImpl(
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      imageURL: null == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      videoURL: null == videoURL
          ? _value.videoURL
          : videoURL // ignore: cast_nullable_to_non_nullable
              as String,
      voiceURL: null == voiceURL
          ? _value.voiceURL
          : voiceURL // ignore: cast_nullable_to_non_nullable
              as String,
      senderUserID: null == senderUserID
          ? _value.senderUserID
          : senderUserID // ignore: cast_nullable_to_non_nullable
              as String,
      conversationID: null == conversationID
          ? _value.conversationID
          : conversationID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatDtoImpl extends _ChatDto {
  const _$ChatDtoImpl(
      {@JsonKey(name: 'createdDate', defaultValue: 0) required this.createdDate,
      @JsonKey(name: 'message', defaultValue: '') required this.message,
      @JsonKey(name: 'imageURL', defaultValue: '') required this.imageURL,
      @JsonKey(name: 'videoURL', defaultValue: '') required this.videoURL,
      @JsonKey(name: 'voiceURL', defaultValue: '') required this.voiceURL,
      @JsonKey(name: 'senderUserID', defaultValue: '')
      required this.senderUserID,
      @JsonKey(name: 'conversationID', defaultValue: '')
      required this.conversationID})
      : super._();

  factory _$ChatDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatDtoImplFromJson(json);

  @override
  @JsonKey(name: 'createdDate', defaultValue: 0)
  final int createdDate;
  @override
  @JsonKey(name: 'message', defaultValue: '')
  final String message;
  @override
  @JsonKey(name: 'imageURL', defaultValue: '')
  final String imageURL;
  @override
  @JsonKey(name: 'videoURL', defaultValue: '')
  final String videoURL;
  @override
  @JsonKey(name: 'voiceURL', defaultValue: '')
  final String voiceURL;
  @override
  @JsonKey(name: 'senderUserID', defaultValue: '')
  final String senderUserID;
  @override
  @JsonKey(name: 'conversationID', defaultValue: '')
  final String conversationID;

  @override
  String toString() {
    return 'ChatDto(createdDate: $createdDate, message: $message, imageURL: $imageURL, videoURL: $videoURL, voiceURL: $voiceURL, senderUserID: $senderUserID, conversationID: $conversationID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatDtoImpl &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.imageURL, imageURL) ||
                other.imageURL == imageURL) &&
            (identical(other.videoURL, videoURL) ||
                other.videoURL == videoURL) &&
            (identical(other.voiceURL, voiceURL) ||
                other.voiceURL == voiceURL) &&
            (identical(other.senderUserID, senderUserID) ||
                other.senderUserID == senderUserID) &&
            (identical(other.conversationID, conversationID) ||
                other.conversationID == conversationID));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, createdDate, message, imageURL,
      videoURL, voiceURL, senderUserID, conversationID);

  /// Create a copy of ChatDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatDtoImplCopyWith<_$ChatDtoImpl> get copyWith =>
      __$$ChatDtoImplCopyWithImpl<_$ChatDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatDtoImplToJson(
      this,
    );
  }
}

abstract class _ChatDto extends ChatDto {
  const factory _ChatDto(
      {@JsonKey(name: 'createdDate', defaultValue: 0)
      required final int createdDate,
      @JsonKey(name: 'message', defaultValue: '') required final String message,
      @JsonKey(name: 'imageURL', defaultValue: '')
      required final String imageURL,
      @JsonKey(name: 'videoURL', defaultValue: '')
      required final String videoURL,
      @JsonKey(name: 'voiceURL', defaultValue: '')
      required final String voiceURL,
      @JsonKey(name: 'senderUserID', defaultValue: '')
      required final String senderUserID,
      @JsonKey(name: 'conversationID', defaultValue: '')
      required final String conversationID}) = _$ChatDtoImpl;
  const _ChatDto._() : super._();

  factory _ChatDto.fromJson(Map<String, dynamic> json) = _$ChatDtoImpl.fromJson;

  @override
  @JsonKey(name: 'createdDate', defaultValue: 0)
  int get createdDate;
  @override
  @JsonKey(name: 'message', defaultValue: '')
  String get message;
  @override
  @JsonKey(name: 'imageURL', defaultValue: '')
  String get imageURL;
  @override
  @JsonKey(name: 'videoURL', defaultValue: '')
  String get videoURL;
  @override
  @JsonKey(name: 'voiceURL', defaultValue: '')
  String get voiceURL;
  @override
  @JsonKey(name: 'senderUserID', defaultValue: '')
  String get senderUserID;
  @override
  @JsonKey(name: 'conversationID', defaultValue: '')
  String get conversationID;

  /// Create a copy of ChatDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatDtoImplCopyWith<_$ChatDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
