import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_1/application/login/login_bloc.dart';
import 'package:flutter_application_1/presentation/auth/widgets/custom_text_field.dart';
import 'package:flutter_application_1/presentation/auth/widgets/forgot_password_button.dart';
import 'package:flutter_application_1/presentation/auth/widgets/login_button.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1000),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Row(
                      //   children: [
                      //     Image.asset(
                      //       'assets/images/icon.png',
                      //       height: 150,
                      //       width: 150,
                      //     ),
                      //     const SizedBox(width: 20),
                      //     Expanded(
                      //       child: Column(
                      //         crossAxisAlignment: CrossAxisAlignment.start,
                      //         children: [
                      //           Text(
                      //             'My Secrets',
                      //             style: Theme.of(context)
                      //                 .textTheme
                      //                 .titleLarge!
                      //                 .copyWith(
                      //                   fontWeight: FontWeight.bold,
                      //                 ),
                      //           ),
                      //           const SizedBox(height: 5),
                      //           Text(
                      //             'Video meetings, Conferences and Picture Sharing',
                      //             style: Theme.of(context)
                      //                 .textTheme
                      //                 .titleMedium!
                      //                 .copyWith(
                      //                   color: Colors.grey,
                      //                 ),
                      //           ),
                      //           const SizedBox(height: 5),
                      //           Text(
                      //             'CG.com',
                      //             style: Theme.of(context)
                      //                 .textTheme
                      //                 .titleMedium!
                      //                 .copyWith(
                      //                     // color: UIConstants.primary,
                      //                     ),
                      //           ),
                      //           const SizedBox(height: 5),
                      //           Row(
                      //             children: [
                      //               const Icon(
                      //                 Icons.star,
                      //                 color: Colors.amber,
                      //               ),
                      //               const Icon(
                      //                 Icons.star,
                      //                 color: Colors.amber,
                      //               ),
                      //               const Icon(
                      //                 Icons.star,
                      //                 color: Colors.amber,
                      //               ),
                      //               const Icon(
                      //                 Icons.star,
                      //                 color: Colors.amber,
                      //               ),
                      //               const Icon(
                      //                 Icons.star,
                      //                 color: Colors.amber,
                      //               ),
                      //               const SizedBox(width: 10),
                      //               Text(
                      //                 'ratings',
                      //                 style: Theme.of(context)
                      //                     .textTheme
                      //                     .titleMedium!
                      //                     .copyWith(
                      //                       color: Colors.grey,
                      //                     ),
                      //               ),
                      //             ],
                      //           ),
                      //           const SizedBox(height: 5),
                      //           Text(
                      //             'FREE Signup',
                      //             style: Theme.of(context)
                      //                 .textTheme
                      //                 .titleMedium!
                      //                 .copyWith(
                      //                   color: Colors.grey,
                      //                 ),
                      //           ),
                      //         ],
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Divider(
                          height: 0.5,
                          color: Colors.grey.shade300,
                        ),
                      ),
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _LoginForm(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              // const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}

class _LoginForm extends StatefulWidget {
  const _LoginForm({super.key});

  @override
  State<_LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<_LoginForm> {
  final fullNameTEC = TextEditingController();
  final userNameTEC = TextEditingController();
  final emailTEC = TextEditingController();
  final passwordTEC = TextEditingController();
  bool isPassword = true;

  @override
  void initState() {
    emailTEC.text = 'darshangolechha8@gmail.com';
    passwordTEC.text = '11111111';
    context.read<LoginBloc>().add(LoginEvent.emailChanged(emailTEC.text));
    context.read<LoginBloc>().add(LoginEvent.passwordChanged(passwordTEC.text));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<LoginBloc, LoginState>(
        buildWhen: (previous, current) =>
            previous.showErrors != current.showErrors ||
            previous.isSigningIn != current.isSigningIn,
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Form(
                  autovalidateMode: state.showErrors
                      ? AutovalidateMode.always
                      : AutovalidateMode.disabled,
                  child: Center(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                      // decoration: BoxDecoration(
                      //   image: const DecorationImage(
                      //     image: AssetImage('assets/images/back.png'),
                      //     fit: BoxFit.cover,
                      //     opacity: 0.8,
                      //   ),
                      //   borderRadius: BorderRadius.circular(15),
                      //   boxShadow: [
                      //     BoxShadow(
                      //       color: Colors.grey.withOpacity(0.2),
                      //       spreadRadius: 2,
                      //       blurRadius: 5,
                      //     ),
                      //   ],
                      // ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Padding(
                            //   padding: const EdgeInsets.all(10),
                            //   child: Image.asset(
                            //     'assets/images/logo.png',
                            //     height: 40,
                            //   ),
                            // ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                'Custom Gifts',
                                style: Theme.of(context).textTheme.labelSmall,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  state.isSigningIn
                                      ? const SizedBox.shrink()
                                      : Column(
                                          children: [
                                            CustomTextField(
                                              controller: fullNameTEC,
                                              hint: 'Enter full name',
                                              label: 'Name',
                                              validator: (_) => state
                                                      .isSigningIn
                                                  ? null
                                                  : context
                                                      .read<LoginBloc>()
                                                      .state
                                                      .fullName
                                                      .value
                                                      .fold(
                                                        (f) => f.maybeMap(
                                                          empty: (_) =>
                                                              'Name cannot be empty.',
                                                          orElse: () => null,
                                                        ),
                                                        (_) => null,
                                                      ),
                                              onChanged: (value) => context
                                                  .read<LoginBloc>()
                                                  .add(
                                                    LoginEvent.fullNameChanged(
                                                        value),
                                                  ),
                                            ),
                                            const SizedBox(height: 20),
                                            CustomTextField(
                                              controller: userNameTEC,
                                              hint: 'Enter Username',
                                              label: 'Username',
                                              validator: (_) => state
                                                      .isSigningIn
                                                  ? null
                                                  : context
                                                      .read<LoginBloc>()
                                                      .state
                                                      .userName
                                                      .value
                                                      .fold(
                                                        (f) => f.maybeMap(
                                                          empty: (_) =>
                                                              'Username cannot be empty.',
                                                          orElse: () => null,
                                                        ),
                                                        (_) => null,
                                                      ),
                                              onChanged: (value) => context
                                                  .read<LoginBloc>()
                                                  .add(
                                                    LoginEvent.userNameChanged(
                                                        value),
                                                  ),
                                            ),
                                          ],
                                        ),
                                  const SizedBox(height: 20),
                                  CustomTextField(
                                    controller: emailTEC,
                                    hint: 'Enter Email',
                                    label: 'Email',
                                    onChanged: (value) =>
                                        context.read<LoginBloc>().add(
                                              LoginEvent.emailChanged(value),
                                            ),
                                    validator: (_) => context
                                        .read<LoginBloc>()
                                        .state
                                        .email
                                        .value
                                        .fold(
                                          (f) => f.maybeMap(
                                            invalidEmail: (_) =>
                                                'Please enter a valid email address',
                                            empty: (_) =>
                                                'Email cannot be empty.',
                                            orElse: () => null,
                                          ),
                                          (_) => null,
                                        ),
                                  ),
                                  const SizedBox(height: 20),
                                  CustomTextField(
                                    controller: passwordTEC,
                                    hint: 'Enter Password',
                                    label: 'Password',
                                    isPassword: isPassword,
                                    onChanged: (value) =>
                                        context.read<LoginBloc>().add(
                                              LoginEvent.passwordChanged(value),
                                            ),
                                    validator: (_) => context
                                        .read<LoginBloc>()
                                        .state
                                        .password
                                        .value
                                        .fold(
                                          (f) => f.maybeMap(
                                            empty: (_) =>
                                                'Password cannot be empty.',
                                            succeedLength: (_) =>
                                                'Password must be at least 8 characters long',
                                            orElse: () => null,
                                          ),
                                          (_) => null,
                                        ),
                                    suffixIcon: GestureDetector(
                                      onTap: () => setState(
                                          () => isPassword = !isPassword),
                                      child: Icon(
                                        isPassword
                                            ? Icons.visibility_outlined
                                            : Icons.visibility_off_outlined,
                                        size: 20,
                                        //color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 30),
                                  if (!state.isSigningIn)
                                    RichText(
                                      text: TextSpan(
                                        text: 'By signing up you agree to our ',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall!,
                                        children: <TextSpan>[
                                          TextSpan(
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () {},
                                              text:
                                                  'Terms of use and Privacy Policy. ',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelSmall!
                                                  .copyWith(
                                                      color: Colors.blue)),
                                        ],
                                      ),
                                    ),
                                  if (!state.isSigningIn)
                                    const SizedBox(height: 30),
                                  const LoginButton(),
                                  const SizedBox(height: 20),
                                  if (state.isSigningIn)
                                    const ForgotPasswordButton(),
                                  if (state.isSigningIn)
                                    const SizedBox(height: 20),
                                  OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      minimumSize:
                                          const Size(double.maxFinite, 45),
                                    ),
                                    onPressed: () {
                                      context
                                          .read<LoginBloc>()
                                          .add(const LoginEvent.toggleSignIn());
                                    },
                                    child: Text(
                                      state.isSigningIn
                                          ? 'Create a new account'
                                          : 'Login to your existing account',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
