import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter_application_1/domain/auth/repository/i_auth_repository.dart';
import 'package:flutter_application_1/domain/user/entities/user.dart';
import 'package:flutter_application_1/domain/user/repository/i_user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/error/api_failures.dart';

part 'logout_bloc.freezed.dart';

part 'logout_event.dart';

part 'logout_state.dart';

class LogoutBloc extends Bloc<LogoutEvent, LogoutState> {
  final IAuthRepository authRepository;

  LogoutBloc({
    required this.authRepository,
  }) : super(LogoutState.initial()) {
    on<LogoutEvent>(_onEvent);
    add(
      const LogoutEvent.initialized(),
    );
  }

  Future<void> _onEvent(LogoutEvent event, Emitter<LogoutState> emit) async {
    await event.map(
      initialized: (e) async => emit(
        LogoutState.initial(),
      ),
      logOut: (e) async {
        emit(
          state.copyWith(
            isLoading: true,
            logoutFailureOrSuccessOption: none(),
          ),
        );
        final failureOrSuccess = await authRepository.logOut();
        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              logoutFailureOrSuccessOption: optionOf(failureOrSuccess),
              isLoading: false,
            ),
          ),
          (user) => emit(
            state.copyWith(
              logoutFailureOrSuccessOption: optionOf(failureOrSuccess),
              isLoading: false,
            ),
          ),
        );
      },
    );
  }
}
