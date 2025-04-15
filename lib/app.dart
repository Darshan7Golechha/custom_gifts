import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_routes.dart';
import 'package:flutter_application_1/application/auth/auth_bloc.dart';
import 'package:flutter_application_1/application/chat/chat_bloc.dart';
import 'package:flutter_application_1/application/item/item_bloc.dart';
import 'package:flutter_application_1/application/login/login_bloc.dart';
import 'package:flutter_application_1/application/logout/logout_bloc.dart';
import 'package:flutter_application_1/application/message/message_bloc.dart';
import 'package:flutter_application_1/application/setting/setting_bloc.dart';
import 'package:flutter_application_1/application/user/user_bloc.dart';
import 'package:flutter_application_1/config.dart';
import 'package:flutter_application_1/infrastructure/user/datasource/user_remote.dart';
import 'package:flutter_application_1/locator.dart';
import 'package:flutter_application_1/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

void initialSetup({required Flavor flavor}) {
  setupDependencyInjection();
  final config = locator.get<Config>();
  config.currentFlavor = flavor;

  // final theme = locator.get<CustomTheme>();
  // theme.currentFlavor = flavor;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final config = locator.get<Config>();
    // final theme = locator.get<CustomTheme>();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              locator<UserBloc>()..add(const UserEvent.initialised()),
        ),
        BlocProvider(
          create: (context) =>
              locator<LogoutBloc>()..add(const LogoutEvent.initialized()),
        ),
        BlocProvider(
          create: (context) =>
              locator<ItemBloc>()..add(const ItemEvent.initialized()),
        ),
        BlocProvider(
          create: (context) =>
              locator<AuthBloc>()..add(const AuthEvent.initialized()),
        ),
        BlocProvider(
          create: (context) =>
              locator<LoginBloc>()..add(const LoginEvent.initialized()),
        ),
        BlocProvider(
          create: (context) =>
              locator<MessageBloc>()..add(const MessageEvent.initialized()),
        ),
        BlocProvider(
          create: (context) =>
              locator<ChatBloc>()..add(const ChatEvent.initialized()),
        ),
        BlocProvider(
          create: (context) =>
              locator<SettingBloc>()..add(const SettingEvent.initialized()),
        ),
        // BlocProvider(
        //   create: (context) =>
        //       locator<HoroscopeBloc>()..add(const HoroscopeEvent.initialised()),
        // ),
        // BlocProvider(
        //   create: (context) => locator<CompatibilityBloc>()
        //     ..add(const CompatibilityEvent.initialised()),
        // ),
      ],
      child: FirebaseAuth.instance.currentUser == null
          ? _openMaterialApp(context, isAuthenticated: false)
          : FutureBuilder(
              future: locator<UserRemoteDataSource>()
                  .getUser(FirebaseAuth.instance.currentUser!.uid),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return MaterialApp(
                    home: Scaffold(
                      body: Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  );
                } else {
                  final user = snapshot.data!.toDomain();
                  context
                      .read<AuthBloc>()
                      .add(AuthEvent.authenticate(user: user));
                  return _openMaterialApp(context, isAuthenticated: true);
                }
              },
            ),
    );
  }

  MaterialApp _openMaterialApp(BuildContext context,
      {required bool isAuthenticated}) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: GoRouter(
        navigatorKey: GlobalKey<NavigatorState>(),
        debugLogDiagnostics: true,
        routes: AppRouter.routes,
        initialLocation: isAuthenticated ? AppRouter.home : AppRouter.login,
        redirect: (context, state) {
          final isLoggedIn = FirebaseAuth.instance.currentUser != null;
          final isGoingToLogin = state.matchedLocation == AppRouter.login;

          if (!isLoggedIn && !isGoingToLogin) {
            return AppRouter.login;
          }

          // If logged in and going to login, redirect to home
          if (isLoggedIn && isGoingToLogin) {
            return AppRouter.home;
          }

          return null;
        },
      ),
      title: locator.get<Config>().appName,
      // theme: theme.myTheme,
    );
  }
}
