import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/domain/auth/repository/i_auth_repository.dart';
import 'package:flutter_application_1/domain/auth/value/value_objects.dart';
import 'package:flutter_application_1/domain/core/error/api_failures.dart';
import 'package:flutter_application_1/domain/user/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final IAuthRepository authRepository;

  LoginBloc({required this.authRepository}) : super(LoginState.initial()) {
    on<LoginEvent>(_onEvent);
    add(
      const LoginEvent.initialized(),
    );
  }

  Future<void> _onEvent(LoginEvent event, Emitter<LoginState> emit) async {
    await event.map(
      initialized: (e) async => emit(LoginState.initial()),
      toggleSignIn: (e) async => emit(
        state.copyWith(
          isSigningIn: !state.isSigningIn,
        ),
      ),
      fullNameChanged: (e) {
        emit(
          state.copyWith(
            fullName: StringValue(e.fullNameStr),
          ),
        );
      },
      emailChanged: (e) {
        emit(
          state.copyWith(
            email: EmailAddress(e.emailStr),
          ),
        );
      },
      passwordChanged: (e) {
        emit(
          state.copyWith(
            password: StringValue(e.passwordStr),
          ),
        );
      },
      userNameChanged: (e) {
        emit(
          state.copyWith(
            userName: StringValue(e.userNameStr),
          ),
        );
      },
      signIn: (e) async {
        final isEmailValid = state.email.isValid();
        final isPasswordValid = state.password.isValid();
        if (isEmailValid && isPasswordValid) {
          emit(
            state.copyWith(
              isSubmitting: true,
              loginFailureOrSuccessOption: none(),
            ),
          );

          final failureOrSuccess = await authRepository.signIn(
            emailAddress: state.email,
            password: state.password,
          );

          failureOrSuccess.fold(
            (failure) {
              emit(
                state.copyWith(
                  isSubmitting: false,
                  loginFailureOrSuccessOption: optionOf(failureOrSuccess),
                ),
              );
            },
            (user) {
              emit(
                state.copyWith(
                  isSubmitting: false,
                  user: user,
                  loginFailureOrSuccessOption: optionOf(failureOrSuccess),
                ),
              );
            },
          );
        } else {
          emit(
            state.copyWith(
              isSubmitting: false,
              showErrors: true,
            ),
          );
        }
      },
      signUp: (e) async {
        final isEmailValid = state.email.getOrDefaultValue('').isNotEmpty &&
            state.email.isValid();
        final isPasswordValid = state.password.isValid();
        if (isEmailValid && isPasswordValid) {
          emit(
            state.copyWith(
              isSubmitting: true,
              loginFailureOrSuccessOption: none(),
            ),
          );

          final failureOrSuccess = await authRepository.signUp(
            fullName: state.fullName,
            emailAddress: state.email,
            password: state.password,
            userName: state.userName,
          );

          failureOrSuccess.fold(
            (failure) {
              emit(
                state.copyWith(
                  isSubmitting: false,
                  showErrors: true,
                  loginFailureOrSuccessOption: optionOf(failureOrSuccess),
                ),
              );
            },
            (user) {
              emit(
                state.copyWith(
                  isSubmitting: false,
                  user: user,
                  loginFailureOrSuccessOption: optionOf(failureOrSuccess),
                ),
              );
            },
          );
        } else {
          emit(
            state.copyWith(
              isSubmitting: false,
              showErrors: true,
            ),
          );
        }
      },
      forgotPassword: (e) async {
        final isEmailValid = state.email.isValid();

        if (isEmailValid) {
          emit(
            state.copyWith(
              isSubmittingForgotPassword: true,
              forgotPasswordFailureOrSuccessOption: none(),
            ),
          );

          final failureOrSuccess = await authRepository.resetPassword(
            emailAddress: state.email,
          );

          failureOrSuccess.fold(
            (failure) {
              emit(
                state.copyWith(
                  isSubmittingForgotPassword: false,
                  forgotPasswordFailureOrSuccessOption:
                      optionOf(failureOrSuccess),
                ),
              );
            },
            (_) {
              emit(
                state.copyWith(
                  isSubmittingForgotPassword: false,
                  forgotPasswordFailureOrSuccessOption:
                      optionOf(failureOrSuccess),
                ),
              );
            },
          );
        } else {
          emit(
            state.copyWith(
              isSubmittingForgotPassword: false,
              showErrors: true,
            ),
          );
        }
      },
    );
  }
}
