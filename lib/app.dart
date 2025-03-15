import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_routes.dart';
import 'package:flutter_application_1/application/item/item_bloc.dart';
import 'package:flutter_application_1/application/user/user_bloc.dart';
import 'package:flutter_application_1/config.dart';
import 'package:flutter_application_1/locator.dart';
import 'package:flutter_application_1/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

void initialSetup({required Flavor flavor}) {
  setupDependencyInjection();
  final config = locator.get<Config>();
  config.currentFlavor = flavor;

  final theme = locator.get<CustomTheme>();
  theme.currentFlavor = flavor;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final config = locator.get<Config>();
    final theme = locator.get<CustomTheme>();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              locator<UserBloc>()..add(const UserEvent.initialised()),
        ),
        BlocProvider(
          create: (context) =>
              locator<ItemBloc>()..add(const ItemEvent.initialized()),
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
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: GoRouter(
          navigatorKey: GlobalKey<NavigatorState>(),
          debugLogDiagnostics: true,
          routes: AppRouter.routes,
          initialLocation: AppRouter.home,
        ),
        title: config.appName,
        theme: theme.myTheme,
      ),
    );
  }
}
