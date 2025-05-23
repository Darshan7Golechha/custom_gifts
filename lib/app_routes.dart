import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/auth/login.dart';
import 'package:flutter_application_1/presentation/home/home.dart';
import 'package:flutter_application_1/presentation/item/create_item/widgets/add_edit_item.dart';
import 'package:flutter_application_1/presentation/item/item_detail.dart';
import 'package:flutter_application_1/presentation/messages/messages.dart';
import 'package:flutter_application_1/presentation/messages/user_conversation.dart';
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
  static const String login = '/login';
  static const String dashboard = '/dashboard';
  static const String profile = '/profile';
  static const String message = '/message';
  static const String orders = '/orders';
  static const String gigs = '/gigs';
  static const String search = '/search';
  static const String vendor = '/vendor';
  static const String addItem = '/addItem';
  static const String messages = '/messages';
  static const String conversation = '/conversation';
  static const String itemDetail = '/itemDetail';

  static List<RouteBase> get routes => [
        GoRoute(
          path: home,
          builder: (context, state) => HomePage(),
        ),
        GoRoute(
          path: messages,
          pageBuilder: (context, state) => buildWithCustomPageTransition<void>(
            context: context,
            state: state,
            child: const Messages(),
          ),
          redirect: (context, state) => redirect(messages),
        ),
        GoRoute(
          path: login,
          builder: (context, state) => const Login(),
        ),
        GoRoute(
          path: dashboard,
          builder: (context, state) => const DashboardPage(),
        ),
        GoRoute(
          path: addItem,
          builder: (context, state) => const AddEditItem(),
        ),
        GoRoute(
          path: conversation,
          pageBuilder: (context, state) => buildWithCustomPageTransition<void>(
            context: context,
            state: state,
            child: UserConversation(
              userID: state.uri.queryParameters['userID']!,
              conversationID: state.uri.queryParameters['conversationID']!,
            ),
          ),
          // redirect: (context, state) => redirect(
          //     '$conversation?userID=${state.uri.queryParameters['userID']!}&conversationID=${state.uri.queryParameters['conversationID']!}'),
        ),
        GoRoute(
          path: profile,
          builder: (context, state) => const ProfileScreen(),
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
        ),
        GoRoute(
          path: vendor,
          pageBuilder: (context, state) => buildWithCustomPageTransition<void>(
            context: context,
            state: state,
            child: VendorProfile(
              userID: state.uri.queryParameters['userID']!,
            ),
          ),
          // redirect: (context, state) => redirect(
          //     '$vendor?userID=${state.uri.queryParameters['vendor']!}'),
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
        // GoRoute(
        //   path: '/vendor/:id',
        //   builder: (context, state) {
        //     return const VendorProfile(
        //       id: '',
        //     );
        //   },
        // ),
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
        GoRoute(
          path: conversation,
          pageBuilder: (context, state) => buildWithCustomPageTransition<void>(
            context: context,
            state: state,
            child: UserConversation(
              userID: state.uri.queryParameters['userID']!,
              conversationID: state.uri.queryParameters['conversationID']!,
            ),
          ),
          // redirect: (context, state) => redirect(
          //     '$conversation?userID=${state.uri.queryParameters['userID']!}&conversationID=${state.uri.queryParameters['conversationID']!}'),
        ),
      ];
  static redirect(String redirectRoute) {
    // if (FirebaseAuth.instance.currentUser == null) {
    //   return loginRoute;
    // }
    return redirectRoute;
  }
}
