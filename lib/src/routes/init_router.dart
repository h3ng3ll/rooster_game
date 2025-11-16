import 'package:flutter/material.dart';
import 'package:rooster_game/src/pages/change_level_page/change_level_page.dart';
import 'package:rooster_game/src/pages/game_page/game_page.dart';
import 'package:rooster_game/src/pages/info_page/info_page.dart';
import 'package:rooster_game/src/pages/leader_page/leader_page.dart';
import 'package:rooster_game/src/pages/menu_page/menu_page.dart';
import 'package:rooster_game/src/pages/privacy_policy_page/privacy_policy_page.dart';
import 'package:rooster_game/src/pages/profile_page/profile_page.dart';
import 'package:rooster_game/src/pages/settings_page/settings_page.dart';
import 'package:rooster_game/src/pages/splash_page/splash_page.dart';
import 'package:rooster_game/src/pages/term_of_use_page/term_of_use_page.dart';
import '../pages/home_page/home_page.dart';

import 'package:go_router/go_router.dart';

import 'app_routes_paths.dart';

GlobalKey<NavigatorState> rootKey = GlobalKey<NavigatorState>();

final GoRouter initRouter = GoRouter(
  redirect: (BuildContext context, GoRouterState state) {
    return null;
  },
  navigatorKey: rootKey,
  routes: <RouteBase>[
    GoRoute(
      path: AppRoutesPaths.splashRoute,
      name: AppRoutesPaths.splashRoute,
      builder: (context, state) {
        return const SplashPage();
      },
    ),
    GoRoute(
      path: AppRoutesPaths.homeRoute,
      name: AppRoutesPaths.homeRoute,
      builder: (context, state) {
        return HomePage();
      },
      routes: [
        GoRoute(
          path: AppRoutesPaths.leveRoute,
          name: AppRoutesPaths.leveRoute,
          builder: (context, state) {
            return ChangeLevelPage();
          },
          routes: [
            GoRoute(
              path: AppRoutesPaths.gameRoute,
              name: AppRoutesPaths.gameRoute,
              builder: (context, state) {
                final args = state.extra as GamePageArgs;
                return GamePage(
                  args: args,
                );
              },
            ),
          ],
        ),

        GoRoute(
          path: AppRoutesPaths.menuRoute,
          name: AppRoutesPaths.menuRoute,
          builder: (context, state) {
            return const MenuPage();
          },
          routes: [
            GoRoute(
              path: AppRoutesPaths.profileRoute,
              name: AppRoutesPaths.profileRoute,
              builder: (context, state) {
                return ProfilePage();
              },
            ),
            GoRoute(
              path: AppRoutesPaths.settingsRoute,
              name: AppRoutesPaths.settingsRoute,
              builder: (context, state) {
                return SettingsPage();
              },
            ),
            GoRoute(
              path: AppRoutesPaths.leaderRoute,
              name: AppRoutesPaths.leaderRoute,
              builder: (context, state) {
                return LeaderPage();
              },
            ),
            GoRoute(
              path: AppRoutesPaths.privacyRoute,
              name: AppRoutesPaths.privacyRoute,
              builder: (context, state) {
                return PrivacyPolicyPage();
              },
            ),
            GoRoute(
              path: AppRoutesPaths.infoRoute,
              name: AppRoutesPaths.infoRoute,
              builder: (context, state) {
                return InfoPage();
              },
            ),
            GoRoute(
              path: AppRoutesPaths.termOfUseRoute,
              name: AppRoutesPaths.termOfUseRoute,
              builder: (context, state) {
                return TermsOfUsePage();
              },
            ),
          ],
        ),
      ],
    ),
  ],
);
