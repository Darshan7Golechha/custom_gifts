import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter_application_1/domain/user/entities/user.dart';
import 'package:flutter_application_1/domain/user/repository/i_user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/error/api_failures.dart';

part 'auth_bloc.freezed.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IUserRepository userRepository;

  AuthBloc({
    required this.userRepository,
  }) : super(AuthState.initial()) {
    on<AuthEvent>(_onEvent);
    add(
      const AuthEvent.initialized(),
    );
  }

  Future<void> _onEvent(AuthEvent event, Emitter<AuthState> emit) async {
    await event.map(
      initialized: (e) async => emit(
        AuthState.initial(),
      ),
      authenticate: (e) async {
        emit(
          state.copyWith(
            currentUser: e.user,
          ),
        );
      },
      unAuthenticate: (e) async => emit(
        state.copyWith(
          currentUser: User.empty(),
        ),
      ),
      refreshUser: (e) async {
        final failureOrSuccess = await userRepository.getUser(
          userID: auth.FirebaseAuth.instance.currentUser!.uid,
        );
        failureOrSuccess.fold(
          (failure) {},
          (user) => emit(
            state.copyWith(
              currentUser: user,
            ),
          ),
        );
      },
    );
  }
}
