// import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/application/auth/auth_bloc.dart';
import 'package:flutter_application_1/application/login/login_bloc.dart';
import 'package:flutter_application_1/domain/core/error/api_failures.dart';
import 'package:flutter_application_1/presentation/auth/widgets/custom_button.dart';
import 'package:flutter_application_1/presentation/core/snack_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      buildWhen: (previous, current) =>
          previous.isSigningIn != current.isSigningIn ||
          previous.isSubmitting != current.isSubmitting,
      listenWhen: (previous, current) =>
          previous.loginFailureOrSuccessOption !=
          current.loginFailureOrSuccessOption,
      listener: (context, state) {
        state.loginFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              final failureMessage = failure.failureMessage;
              if (!state.isSigningIn) {
                context.read<LoginBloc>().add(const LoginEvent.toggleSignIn());
              }
              showSnackBar(
                context: context,
                message: 'Error: $failureMessage',
              );
            },
            (success) {
              context.read<AuthBloc>().add(
                    AuthEvent.authenticate(user: state.user),
                  );
              context.go('/home');
            },
          ),
        );
      },
      builder: (context, state) {
        return state.isSubmitting
            ? const CircularProgressIndicator()
            : CustomButton(
                text: state.isSigningIn ? 'Login' : 'Sign Up',
                function: () {
                  if (state.isSigningIn) {
                    context.read<LoginBloc>().add(const LoginEvent.signIn());
                  } else {
                    context.read<LoginBloc>().add(const LoginEvent.signUp());
                  }
                },
              );
      },
    );
  }
}
