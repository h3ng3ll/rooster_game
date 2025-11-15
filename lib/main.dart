import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rooster_game/src/bloc/app_observer.dart';
import 'package:rooster_game/src/bloc/balance_bloc/balance_bloc.dart';
import 'package:rooster_game/src/bloc/profile_bloc/profile_bloc.dart';
import 'package:rooster_game/src/pages/game_page/game_page.dart';

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
        child: GamePage(
          args: GamePageArgs(
            level: 1,
          ),
        ),
      ),
    );
  }
}
