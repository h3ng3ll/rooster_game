import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rooster_game/src/models/shop_item/shop_item.dart';
import 'package:rooster_game/src/pages/game_page/bloc/shop_bloc/shop_bloc.dart';
import 'package:rooster_game/src/pages/game_page/widgets/shop_items/build_add_more_moves_item.dart';

class BuildGameBottom extends StatelessWidget {
  final Function(EShopItemValue) onTapShopItem;

  const BuildGameBottom({
    super.key,
    required this.onTapShopItem,
  });

  @override
  Widget build(BuildContext context) {
    final shopBloc = context.watch<ShopBloc>().state;
    final items = shopBloc.shop.items;

    final addMoreMoveItems =
        items
            .firstWhereOrNull(
              (e) => e.value == EShopItemValue.addAttempts,
            )
            ?.count ??
        0;
    return Row(
      children: [
        if (addMoreMoveItems > 0)
          BuildAddMoreMovesItem(
            onTap: () => onTapShopItem(
              EShopItemValue.addAttempts,
            ),
            count: addMoreMoveItems,
          ),
        // BuyMoreMoves(
        //   count: 3,
        //   price: 120,
        // ),
      ],
    );
  }
}
