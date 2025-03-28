import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/domain/chat/entities/chat.dart';
import 'package:flutter_application_1/domain/chat/repository/i_chat_repository.dart';
import 'package:flutter_application_1/domain/core/error/api_failures.dart';
import 'package:flutter_application_1/infrastructure/chat/dtos/chat_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_bloc.freezed.dart';

part 'chat_event.dart';

part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final IChatRepository chatRepository;

  ChatBloc({required this.chatRepository}) : super(ChatState.initial()) {
    on<ChatEvent>(_onEvent);
  }

  Future<void> _onEvent(ChatEvent event, Emitter<ChatState> emit) async {
    await event.map(
      initialized: (e) async => emit(ChatState.initial()),
      getConversation: (e) async {
        emit(
          state.copyWith(
            isLoading: true,
          ),
        );
        final failureOrSuccess =
            chatRepository.getConversation(conversationID: e.conversationID);

        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              conversationList: <Chat>[],
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
              isLoading: false,
            ),
          ),
          (query) => emit(
            state.copyWith(
              chatQuery: query,
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
              isLoading: false,
            ),
          ),
        );
      },
      sendMessage: (e) async {
        emit(
          state.copyWith(
            apiFailureOrSuccessOption: none(),
            isLoading: true,
          ),
        );
        final failureOrSuccess = await chatRepository.sendMessage(chat: e.chat);

        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
              isLoading: false,
            ),
          ),
          (comment) => emit(
            state.copyWith(
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
              isLoading: false,
            ),
          ),
        );
      },
    );
  }
}
