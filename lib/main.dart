import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rooster_game/src/bloc/app_observer.dart';
import 'package:rooster_game/src/bloc/balance_bloc/balance_bloc.dart';
import 'package:rooster_game/src/bloc/profile_bloc/profile_bloc.dart';
import 'package:rooster_game/src/pages/change_level_page/change_level_page.dart';
import 'package:rooster_game/src/pages/home_page/home_page.dart';
import 'package:rooster_game/src/pages/info_page/info_page.dart';
import 'package:rooster_game/src/pages/menu_page/menu_page.dart';
import 'package:rooster_game/src/pages/privacy_policy_page/privacy_policy_page.dart';
import 'package:rooster_game/src/pages/profile_page/profile_page.dart';
import 'package:rooster_game/src/pages/splash_page/splash_page.dart';
import 'package:rooster_game/src/pages/term_of_use_page/term_of_use_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  /// register global observer for debug convenient
  Bloc.observer = AppObserver.instance();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.transparent,
      theme: ThemeData(
        textTheme: GoogleFonts.rubikMonoOneTextTheme().apply(
          bodyColor: Colors.white,
          displayColor: Colors.white,
        ),
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => BalanceBloc(),
          ),
          BlocProvider(
            create: (_) => ProfileBloc(),
          ),
        ],
        child: TermOfUsePage(),
      ),
    );
  }
}
