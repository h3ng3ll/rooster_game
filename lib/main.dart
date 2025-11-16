import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rooster_game/src/bloc/app_observer.dart';
import 'package:rooster_game/src/bloc/game_stat_bloc/game_stat_bloc.dart';
import 'package:rooster_game/src/bloc/profile_bloc/profile_bloc.dart';
import 'package:rooster_game/src/pages/game_page/bloc/shop_bloc/shop_bloc.dart';
import 'package:rooster_game/src/pages/settings_page/bloc/settings_bloc/settings_bloc.dart';
import 'package:rooster_game/src/routes/init_router.dart';
import 'package:rooster_game/src/services/local_notification_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);

  /// register global observer for debug convenient
  Bloc.observer = AppObserver.instance();
  await LocalNotificationService.instance.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => ProfileBloc()
            ..add(
              ProfileEvent.load(),
            ),
        ),

        BlocProvider(
          create: (_) => ShopBloc()
            ..add(
              ShopEvent.load(),
            ),
        ),
        BlocProvider(
          lazy: false,
          create: (_) => SettingsBloc()
            ..add(
              SettingsEvent.fetch(),
            ),
        ),
        BlocProvider(
          create: (context) =>
              GameStatBloc(
                settingsBloc: context.read<SettingsBloc>(),
              )..add(
                GameStatEvent.loadStats(),
              ),
        ),
      ],
      child: MaterialApp.router(
        color: Colors.transparent,
        theme: ThemeData(
          textTheme: GoogleFonts.rubikMonoOneTextTheme().apply(
            bodyColor: Colors.white,
            displayColor: Colors.white,
          ),
        ),

        // home: GamePage(
        //   args: GamePageArgs(
        //     level: 5,
        //   ),
        // ),
        routerConfig: initRouter,
      ),
    );
  }
}
