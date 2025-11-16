import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rooster_game/src/models/game_config.dart';
import 'package:rooster_game/src/pages/game_page/flame_component/components/egg.dart';

import '../../../../models/game_levels.dart';

part 'game_event.dart';

part 'game_state.dart';

part 'game_bloc.freezed.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  GameBloc({
    required int level,
  }) : super(
         GameState(
           level: level,
           config: GameLevels.levels[level - 1],
         ),
       ) {
    on<_Init>(_init);
    on<_DecrementMove>(_decrementMove);
    on<_AddScore>(_addScore);
    on<_SelectEgg>(_selectEgg);
    on<_UnselectEgg>(_unselectEgg);
    on<_NextLevel>(_nextLevel);
    on<_AddTries>(_addTries);
  }

  void _init(event, emit) {
    emit(
      state.copyWith(
        score: 0,
        tries: state.config.tries,
        selectedEgg: null,
      ),
    );
  }

  void _decrementMove(event, emit) {
    emit(
      state.copyWith(
        tries: state.tries - 1,
      ),
    );
  }

  void _addScore(_AddScore event, emit) {
    emit(
      state.copyWith(
        score: state.score + event.score,
      ),
    );
  }

  void _selectEgg(_SelectEgg event, emit) {
    emit(
      state.copyWith(
        selectedEgg: event.egg,
      ),
    );
  }

  void _unselectEgg(event, emit) {
    emit(
      state.copyWith(
        selectedEgg: null,
      ),
    );
  }

  void _addTries(_AddTries event, emit) {
    emit(
      state.copyWith(
        tries: state.tries + event.count,
      ),
    );
  }

  void _nextLevel(event, emit) {
    final level = state.level + 1;

    final config = GameLevels.levels[level];

    emit(
      state.copyWith(
        score: 0,
        config: config,
        tries: config.tries,
        selectedEgg: null,
      ),
    );
  }
}
