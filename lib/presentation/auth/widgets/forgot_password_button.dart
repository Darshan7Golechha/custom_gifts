// import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/application/login/login_bloc.dart';
import 'package:flutter_application_1/domain/core/error/api_failures.dart';
import 'package:flutter_application_1/presentation/core/snack_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      buildWhen: (previous, current) =>
          previous.isSigningIn != current.isSigningIn ||
          previous.isSubmittingForgotPassword !=
              current.isSubmittingForgotPassword,
      listenWhen: (previous, current) =>
          previous.forgotPasswordFailureOrSuccessOption !=
          current.forgotPasswordFailureOrSuccessOption,
      listener: (context, state) {
        state.forgotPasswordFailureOrSuccessOption.fold(
          () {},
          (a) => {
            a.fold(
              (f) {
                final failureMessage = f.failureMessage;
                showSnackBar(
                  context: context,
                  message: 'Error: $failureMessage',
                );
              },
              (r) {
                showSnackBar(
                  context: context,
                  message: 'Password reset instructions sent to your email',
                );
              },
            )
          },
        );
      },
      builder: (context, state) {
        return state.isSubmittingForgotPassword
            ? const CircularProgressIndicator()
            : TextButton(
                onPressed: () => context.read<LoginBloc>().add(
                      const LoginEvent.forgotPassword(),
                    ),
                child: Text(
                  'Forgot Password?',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Colors.blue),
                ),
              );
      },
    );
  }
}
