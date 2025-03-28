part of 'message_bloc.dart';

@freezed
class MessageState with _$MessageState {
  const factory MessageState({
    required List<Message> messageList,
    required bool isLoading,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
  }) = _MessageState;

  factory MessageState.initial() => MessageState(
        messageList: <Message>[],
        isLoading: true,
        apiFailureOrSuccessOption: none(),
      );
}
