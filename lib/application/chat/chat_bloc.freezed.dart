// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String conversationID) getConversation,
    required TResult Function(Chat chat) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(String conversationID)? getConversation,
    TResult? Function(Chat chat)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String conversationID)? getConversation,
    TResult Function(Chat chat)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_GetConversation value) getConversation,
    required TResult Function(_SendMessage value) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_GetConversation value)? getConversation,
    TResult? Function(_SendMessage value)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_GetConversation value)? getConversation,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatEvent
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
    extends _$ChatEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl();

  @override
  String toString() {
    return 'ChatEvent.initialized()';
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
    required TResult Function(String conversationID) getConversation,
    required TResult Function(Chat chat) sendMessage,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(String conversationID)? getConversation,
    TResult? Function(Chat chat)? sendMessage,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String conversationID)? getConversation,
    TResult Function(Chat chat)? sendMessage,
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
    required TResult Function(_GetConversation value) getConversation,
    required TResult Function(_SendMessage value) sendMessage,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_GetConversation value)? getConversation,
    TResult? Function(_SendMessage value)? sendMessage,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_GetConversation value)? getConversation,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ChatEvent {
  const factory _Initialized() = _$InitializedImpl;
}

/// @nodoc
abstract class _$$GetConversationImplCopyWith<$Res> {
  factory _$$GetConversationImplCopyWith(_$GetConversationImpl value,
          $Res Function(_$GetConversationImpl) then) =
      __$$GetConversationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String conversationID});
}

/// @nodoc
class __$$GetConversationImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$GetConversationImpl>
    implements _$$GetConversationImplCopyWith<$Res> {
  __$$GetConversationImplCopyWithImpl(
      _$GetConversationImpl _value, $Res Function(_$GetConversationImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationID = null,
  }) {
    return _then(_$GetConversationImpl(
      conversationID: null == conversationID
          ? _value.conversationID
          : conversationID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetConversationImpl implements _GetConversation {
  const _$GetConversationImpl({required this.conversationID});

  @override
  final String conversationID;

  @override
  String toString() {
    return 'ChatEvent.getConversation(conversationID: $conversationID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetConversationImpl &&
            (identical(other.conversationID, conversationID) ||
                other.conversationID == conversationID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationID);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetConversationImplCopyWith<_$GetConversationImpl> get copyWith =>
      __$$GetConversationImplCopyWithImpl<_$GetConversationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String conversationID) getConversation,
    required TResult Function(Chat chat) sendMessage,
  }) {
    return getConversation(conversationID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(String conversationID)? getConversation,
    TResult? Function(Chat chat)? sendMessage,
  }) {
    return getConversation?.call(conversationID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String conversationID)? getConversation,
    TResult Function(Chat chat)? sendMessage,
    required TResult orElse(),
  }) {
    if (getConversation != null) {
      return getConversation(conversationID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_GetConversation value) getConversation,
    required TResult Function(_SendMessage value) sendMessage,
  }) {
    return getConversation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_GetConversation value)? getConversation,
    TResult? Function(_SendMessage value)? sendMessage,
  }) {
    return getConversation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_GetConversation value)? getConversation,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (getConversation != null) {
      return getConversation(this);
    }
    return orElse();
  }
}

abstract class _GetConversation implements ChatEvent {
  const factory _GetConversation({required final String conversationID}) =
      _$GetConversationImpl;

  String get conversationID;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetConversationImplCopyWith<_$GetConversationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendMessageImplCopyWith<$Res> {
  factory _$$SendMessageImplCopyWith(
          _$SendMessageImpl value, $Res Function(_$SendMessageImpl) then) =
      __$$SendMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Chat chat});

  $ChatCopyWith<$Res> get chat;
}

/// @nodoc
class __$$SendMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$SendMessageImpl>
    implements _$$SendMessageImplCopyWith<$Res> {
  __$$SendMessageImplCopyWithImpl(
      _$SendMessageImpl _value, $Res Function(_$SendMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chat = null,
  }) {
    return _then(_$SendMessageImpl(
      chat: null == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
    ));
  }

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_value.chat, (value) {
      return _then(_value.copyWith(chat: value));
    });
  }
}

/// @nodoc

class _$SendMessageImpl implements _SendMessage {
  const _$SendMessageImpl({required this.chat});

  @override
  final Chat chat;

  @override
  String toString() {
    return 'ChatEvent.sendMessage(chat: $chat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageImpl &&
            (identical(other.chat, chat) || other.chat == chat));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chat);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      __$$SendMessageImplCopyWithImpl<_$SendMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String conversationID) getConversation,
    required TResult Function(Chat chat) sendMessage,
  }) {
    return sendMessage(chat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(String conversationID)? getConversation,
    TResult? Function(Chat chat)? sendMessage,
  }) {
    return sendMessage?.call(chat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String conversationID)? getConversation,
    TResult Function(Chat chat)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(chat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_GetConversation value) getConversation,
    required TResult Function(_SendMessage value) sendMessage,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_GetConversation value)? getConversation,
    TResult? Function(_SendMessage value)? sendMessage,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_GetConversation value)? getConversation,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SendMessage implements ChatEvent {
  const factory _SendMessage({required final Chat chat}) = _$SendMessageImpl;

  Chat get chat;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  List<Chat> get conversationList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Query<ChatDto>? get chatQuery => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call(
      {List<Chat> conversationList,
      bool isLoading,
      Query<ChatDto>? chatQuery,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption});
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationList = null,
    Object? isLoading = null,
    Object? chatQuery = freezed,
    Object? apiFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      conversationList: null == conversationList
          ? _value.conversationList
          : conversationList // ignore: cast_nullable_to_non_nullable
              as List<Chat>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      chatQuery: freezed == chatQuery
          ? _value.chatQuery
          : chatQuery // ignore: cast_nullable_to_non_nullable
              as Query<ChatDto>?,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatStateImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$ChatStateImplCopyWith(
          _$ChatStateImpl value, $Res Function(_$ChatStateImpl) then) =
      __$$ChatStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Chat> conversationList,
      bool isLoading,
      Query<ChatDto>? chatQuery,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption});
}

/// @nodoc
class __$$ChatStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatStateImpl>
    implements _$$ChatStateImplCopyWith<$Res> {
  __$$ChatStateImplCopyWithImpl(
      _$ChatStateImpl _value, $Res Function(_$ChatStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationList = null,
    Object? isLoading = null,
    Object? chatQuery = freezed,
    Object? apiFailureOrSuccessOption = null,
  }) {
    return _then(_$ChatStateImpl(
      conversationList: null == conversationList
          ? _value._conversationList
          : conversationList // ignore: cast_nullable_to_non_nullable
              as List<Chat>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      chatQuery: freezed == chatQuery
          ? _value.chatQuery
          : chatQuery // ignore: cast_nullable_to_non_nullable
              as Query<ChatDto>?,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
    ));
  }
}

/// @nodoc

class _$ChatStateImpl implements _ChatState {
  const _$ChatStateImpl(
      {required final List<Chat> conversationList,
      required this.isLoading,
      this.chatQuery,
      required this.apiFailureOrSuccessOption})
      : _conversationList = conversationList;

  final List<Chat> _conversationList;
  @override
  List<Chat> get conversationList {
    if (_conversationList is EqualUnmodifiableListView)
      return _conversationList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conversationList);
  }

  @override
  final bool isLoading;
  @override
  final Query<ChatDto>? chatQuery;
  @override
  final Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption;

  @override
  String toString() {
    return 'ChatState(conversationList: $conversationList, isLoading: $isLoading, chatQuery: $chatQuery, apiFailureOrSuccessOption: $apiFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStateImpl &&
            const DeepCollectionEquality()
                .equals(other._conversationList, _conversationList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.chatQuery, chatQuery) ||
                other.chatQuery == chatQuery) &&
            (identical(other.apiFailureOrSuccessOption,
                    apiFailureOrSuccessOption) ||
                other.apiFailureOrSuccessOption == apiFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_conversationList),
      isLoading,
      chatQuery,
      apiFailureOrSuccessOption);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      __$$ChatStateImplCopyWithImpl<_$ChatStateImpl>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  const factory _ChatState(
      {required final List<Chat> conversationList,
      required final bool isLoading,
      final Query<ChatDto>? chatQuery,
      required final Option<Either<ApiFailure, dynamic>>
          apiFailureOrSuccessOption}) = _$ChatStateImpl;

  @override
  List<Chat> get conversationList;
  @override
  bool get isLoading;
  @override
  Query<ChatDto>? get chatQuery;
  @override
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
