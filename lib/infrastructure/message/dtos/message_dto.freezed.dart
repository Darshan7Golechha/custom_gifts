// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageDto _$MessageDtoFromJson(Map<String, dynamic> json) {
  return _MessageDto.fromJson(json);
}

/// @nodoc
mixin _$MessageDto {
  @JsonKey(name: 'conversationID', defaultValue: '')
  String get conversationID => throw _privateConstructorUsedError;
  @JsonKey(name: 'users', defaultValue: [])
  List<dynamic> get users => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastMessage', defaultValue: '')
  String get lastMessage => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastMessageTime', defaultValue: 0)
  int get lastMessageTime => throw _privateConstructorUsedError;

  /// Serializes this MessageDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageDtoCopyWith<MessageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageDtoCopyWith<$Res> {
  factory $MessageDtoCopyWith(
          MessageDto value, $Res Function(MessageDto) then) =
      _$MessageDtoCopyWithImpl<$Res, MessageDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'conversationID', defaultValue: '') String conversationID,
      @JsonKey(name: 'users', defaultValue: []) List<dynamic> users,
      @JsonKey(name: 'lastMessage', defaultValue: '') String lastMessage,
      @JsonKey(name: 'lastMessageTime', defaultValue: 0) int lastMessageTime});
}

/// @nodoc
class _$MessageDtoCopyWithImpl<$Res, $Val extends MessageDto>
    implements $MessageDtoCopyWith<$Res> {
  _$MessageDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationID = null,
    Object? users = null,
    Object? lastMessage = null,
    Object? lastMessageTime = null,
  }) {
    return _then(_value.copyWith(
      conversationID: null == conversationID
          ? _value.conversationID
          : conversationID // ignore: cast_nullable_to_non_nullable
              as String,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      lastMessage: null == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessageTime: null == lastMessageTime
          ? _value.lastMessageTime
          : lastMessageTime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageDtoImplCopyWith<$Res>
    implements $MessageDtoCopyWith<$Res> {
  factory _$$MessageDtoImplCopyWith(
          _$MessageDtoImpl value, $Res Function(_$MessageDtoImpl) then) =
      __$$MessageDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'conversationID', defaultValue: '') String conversationID,
      @JsonKey(name: 'users', defaultValue: []) List<dynamic> users,
      @JsonKey(name: 'lastMessage', defaultValue: '') String lastMessage,
      @JsonKey(name: 'lastMessageTime', defaultValue: 0) int lastMessageTime});
}

/// @nodoc
class __$$MessageDtoImplCopyWithImpl<$Res>
    extends _$MessageDtoCopyWithImpl<$Res, _$MessageDtoImpl>
    implements _$$MessageDtoImplCopyWith<$Res> {
  __$$MessageDtoImplCopyWithImpl(
      _$MessageDtoImpl _value, $Res Function(_$MessageDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationID = null,
    Object? users = null,
    Object? lastMessage = null,
    Object? lastMessageTime = null,
  }) {
    return _then(_$MessageDtoImpl(
      conversationID: null == conversationID
          ? _value.conversationID
          : conversationID // ignore: cast_nullable_to_non_nullable
              as String,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      lastMessage: null == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessageTime: null == lastMessageTime
          ? _value.lastMessageTime
          : lastMessageTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageDtoImpl extends _MessageDto {
  const _$MessageDtoImpl(
      {@JsonKey(name: 'conversationID', defaultValue: '')
      required this.conversationID,
      @JsonKey(name: 'users', defaultValue: [])
      required final List<dynamic> users,
      @JsonKey(name: 'lastMessage', defaultValue: '') required this.lastMessage,
      @JsonKey(name: 'lastMessageTime', defaultValue: 0)
      required this.lastMessageTime})
      : _users = users,
        super._();

  factory _$MessageDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageDtoImplFromJson(json);

  @override
  @JsonKey(name: 'conversationID', defaultValue: '')
  final String conversationID;
  final List<dynamic> _users;
  @override
  @JsonKey(name: 'users', defaultValue: [])
  List<dynamic> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  @JsonKey(name: 'lastMessage', defaultValue: '')
  final String lastMessage;
  @override
  @JsonKey(name: 'lastMessageTime', defaultValue: 0)
  final int lastMessageTime;

  @override
  String toString() {
    return 'MessageDto(conversationID: $conversationID, users: $users, lastMessage: $lastMessage, lastMessageTime: $lastMessageTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageDtoImpl &&
            (identical(other.conversationID, conversationID) ||
                other.conversationID == conversationID) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage) &&
            (identical(other.lastMessageTime, lastMessageTime) ||
                other.lastMessageTime == lastMessageTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      conversationID,
      const DeepCollectionEquality().hash(_users),
      lastMessage,
      lastMessageTime);

  /// Create a copy of MessageDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageDtoImplCopyWith<_$MessageDtoImpl> get copyWith =>
      __$$MessageDtoImplCopyWithImpl<_$MessageDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageDtoImplToJson(
      this,
    );
  }
}

abstract class _MessageDto extends MessageDto {
  const factory _MessageDto(
      {@JsonKey(name: 'conversationID', defaultValue: '')
      required final String conversationID,
      @JsonKey(name: 'users', defaultValue: [])
      required final List<dynamic> users,
      @JsonKey(name: 'lastMessage', defaultValue: '')
      required final String lastMessage,
      @JsonKey(name: 'lastMessageTime', defaultValue: 0)
      required final int lastMessageTime}) = _$MessageDtoImpl;
  const _MessageDto._() : super._();

  factory _MessageDto.fromJson(Map<String, dynamic> json) =
      _$MessageDtoImpl.fromJson;

  @override
  @JsonKey(name: 'conversationID', defaultValue: '')
  String get conversationID;
  @override
  @JsonKey(name: 'users', defaultValue: [])
  List<dynamic> get users;
  @override
  @JsonKey(name: 'lastMessage', defaultValue: '')
  String get lastMessage;
  @override
  @JsonKey(name: 'lastMessageTime', defaultValue: 0)
  int get lastMessageTime;

  /// Create a copy of MessageDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageDtoImplCopyWith<_$MessageDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
