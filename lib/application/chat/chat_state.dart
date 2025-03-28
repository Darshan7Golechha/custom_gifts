part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    required List<Chat> conversationList,
    required bool isLoading,
    Query<ChatDto>? chatQuery,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
  }) = _ChatState;

  factory ChatState.initial() => ChatState(
        conversationList: <Chat>[],
        isLoading: true,
        apiFailureOrSuccessOption: none(),
      );
}
