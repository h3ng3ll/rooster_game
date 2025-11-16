import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rooster_game/src/models/shop_item/shop_item.dart';

import '../../../../databases/shared_prefs_database.dart';
import '../../../../models/shop/shop.dart';

part 'shop_event.dart';

part 'shop_state.dart';

part 'shop_bloc.freezed.dart';

class ShopBloc extends Bloc<ShopEvent, ShopState> {
  final SharedPrefsDatabase _sharedPrefsDatabase = SharedPrefsDatabase.instance;
  final _key = 'shop1';

  ShopBloc() : super(ShopState(shop: Shop())) {
    on<_Buy>(_buy);
    on<_Spent>(_spent);
    on<_Load>(_load);
  }

  void _buy(_Buy event, emit) {
    final indexItem = state.shop.items
        .map((e) => e.name)
        .toList()
        .indexOf(
          event.item.name,
        );
    final items = List<ShopItem>.from(
      state.shop.items,
    );

    /// new item
    if (indexItem == -1) {
      items.add(
        event.item,
      );
    }
    /// this kind item already exists
    /// increment count to item instead add new one
    else {
      items[indexItem] = items[indexItem].copyWith(
        count: items[indexItem].count + event.item.count,
      );
    }

    emit(
      state.copyWith(
        shop: state.shop.copyWith(
          balance: state.shop.balance - event.item.price,
          items: items,
        ),
      ),
    );
    _save();
  }

  void _spent(_Spent spent, emit) {
    final index = state.shop.items
        .map((e) => e.value)
        .toList()
        .indexOf(
          spent.value,
        );
    final items = List<ShopItem>.from(
      state.shop.items,
    );

    if (items[index].count <= 1) {
      items.removeAt(
        index,
      );
    } else {
      items[index] = items[index].copyWith(
        count: items[index].count - 1,
      );
    }
    emit(
      state.copyWith(
        shop: state.shop.copyWith(
          items: items,
        ),
      ),
    );
    _save();
  }

  Future<void> _save() async {
    await _sharedPrefsDatabase.setValue(
      _key,
      jsonEncode(
        state.shop.toJson(),
      ),
    );
  }

  void _load(_Load spent, emit) async {
    final value = await _sharedPrefsDatabase.getValue(
      _key,
    );

    if (value == null) return;

    final shop = Shop.fromJson(
      jsonDecode(value),
    );
    emit(
      state.copyWith(
        shop: shop,
      ),
    );
  }
}
