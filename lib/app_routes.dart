import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/home/home.dart';
import 'package:flutter_application_1/presentation/item/item_detail.dart';
import 'package:flutter_application_1/presentation/message/chat.dart';
import 'package:flutter_application_1/presentation/message/messages.dart';
import 'package:flutter_application_1/presentation/product/product_detail_page.dart';
import 'package:flutter_application_1/presentation/vendor/dashboard.dart';
import 'package:flutter_application_1/presentation/vendor/vendor_profile.dart';
import 'package:flutter_application_1/screens/gig_details.dart';
import 'package:flutter_application_1/presentation/order/orders.dart';
import 'package:flutter_application_1/presentation/profile/profile_screen.dart';
import 'package:flutter_application_1/presentation/search/serarch.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static CustomTransitionPage buildWithCustomPageTransition<T>({
    required BuildContext context,
    required GoRouterState state,
    required Widget child,
  }) {
    return CustomTransitionPage<T>(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
    );
  }

  static const String home = '/home';
  static const String dashboard = '/dashboard';
  static const String profile = '/profile';
  static const String message = '/message';
  static const String orders = '/orders';
  static const String gigs = '/gigs';
  static const String search = '/search';
  static const String vendor = '/vendor';
  static const String itemDetail = '/itemDetail?itemID';

  static List<RouteBase> get routes => [
        GoRoute(
          path: home,
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
          path: dashboard,
          builder: (context, state) => const DashboardPage(),
        ),
        GoRoute(
          path: profile,
          builder: (context, state) => const ProfileScreen(),
        ),
        GoRoute(
          path: message,
          builder: (context, state) => const MessagesScreen(),
        ),
        GoRoute(
          path: itemDetail,
          pageBuilder: (context, state) => buildWithCustomPageTransition<void>(
            context: context,
            state: state,
            child: ItemDetail(
              itemID: state.uri.queryParameters['itemID']!,
            ),
          ),
          redirect: (context, state) => redirect(
              '$itemDetail?itemID=${state.uri.queryParameters['itemID']!}'),
        ),
        GoRoute(
          path: orders,
          builder: (context, state) => const OrdersScreen(),
        ),
        GoRoute(
            path: gigs,
            builder: (context, state) {
              final id = state.pathParameters['id']!;

              return GigDetailsScreen(gigId: id);
            }),
        GoRoute(
          path: search,
          builder: (context, state) => const SearchScreen(),
        ),
        GoRoute(
          path: '/vendor/:id',
          builder: (context, state) {
            return const ProfilePage(
              id: '',
            );
          },
        ),
        GoRoute(
          path: '/product/:index',
          builder: (context, state) {
            final index = int.parse(state.pathParameters['index'] ?? '0');
            final imageUrl = state.extra as String;
            return ProductDetailPage(
              imageUrl: imageUrl,
              index: index,
            );
          },
        ),
      ];
  static redirect(String redirectRoute) {
    // if (FirebaseAuth.instance.currentUser == null) {
    //   return loginRoute;
    // }
    return redirectRoute;
  }
}
