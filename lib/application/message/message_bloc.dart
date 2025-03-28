import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/domain/core/error/api_failures.dart';
import 'package:flutter_application_1/domain/message/entities/message.dart';
import 'package:flutter_application_1/domain/message/repository/i_message_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_event.dart';
part 'message_state.dart';
part 'message_bloc.freezed.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
  final IMessageRepository messageRepository;

  MessageBloc({required this.messageRepository})
      : super(MessageState.initial()) {
    on<MessageEvent>(_onEvent);
  }

  Future<void> _onEvent(MessageEvent event, Emitter<MessageState> emit) async {
    await event.map(
      initialised: (e) async => emit(MessageState.initial()),
      getAllMessages: (e) async {
        emit(
          state.copyWith(
            isLoading: true,
          ),
        );
        final failureOrSuccess = await messageRepository.getAllMessages();

        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              messageList: <Message>[],
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
              isLoading: false,
            ),
          ),
          (messages) => emit(
            state.copyWith(
              messageList: messages,
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
              isLoading: false,
            ),
          ),
        );
      },
    );
  }
}
