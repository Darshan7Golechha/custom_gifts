import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/domain/core/error/api_failures.dart';
import 'package:flutter_application_1/domain/item/entities/item.dart';
import 'package:flutter_application_1/domain/user/entities/user.dart';
import 'package:flutter_application_1/domain/user/repository/i_user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';
import 'package:uuid/uuid.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final IUserRepository userRepository;
  UserBloc({required this.userRepository}) : super(UserState.initial()) {
    on<UserEvent>(_onEvent);
  }

  Future<void> _onEvent(UserEvent event, Emitter<UserState> emit) async {
    await event.map(
      initialised: (e) async => emit(UserState.initial()),
      fetchUserByUserID: (e) async {
        emit(
          state.copyWith(
            isLoading: true,
          ),
        );

        final failureOrSuccess = await userRepository.getUser(userID: e.userID);

        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              failureOrSuccessOption: optionOf(failureOrSuccess),
              isLoading: false,
            ),
          ),
          (user) => emit(
            state.copyWith(
              user: user,
              failureOrSuccessOption: none(),
              isLoading: false,
            ),
          ),
        );
      },
      addUser: (e) async {
        emit(
          state.copyWith(
            isLoading: true,
            failureOrSuccessOption: none(),
          ),
        );
        final failureOrSuccess = await userRepository.addUser(
          user: e.user.copyWith(
            userID: const Uuid().v1(),
          ),
        );

        emit(
          state.copyWith(
            failureOrSuccessOption: optionOf(failureOrSuccess),
            isLoading: false,
          ),
        );
      },
      readMessages: (e) async {
        emit(
          state.copyWith(
            isLoading: true,
          ),
        );
        final failureOrSuccess = await userRepository.readMessages();
        emit(
          state.copyWith(
            failureOrSuccessOption: optionOf(failureOrSuccess),
            isLoading: false,
          ),
        );
      },
      getAllVendors: (e) async {
        emit(
          state.copyWith(
            isLoading: true,
          ),
        );
        final failureOrSuccess = await userRepository.getAllVendors();
        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              failureOrSuccessOption: optionOf(failureOrSuccess),
              isLoading: false,
            ),
          ),
          (users) => emit(
            state.copyWith(
              users: users,
              failureOrSuccessOption: none(),
              isLoading: false,
            ),
          ),
        );
      },
    );
  }
}
