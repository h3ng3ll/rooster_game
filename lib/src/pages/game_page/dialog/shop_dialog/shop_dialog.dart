import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:rooster_game/src/models/shop_item/shop_item.dart';
import 'package:rooster_game/src/models/shop_items.dart';
import 'package:rooster_game/src/pages/game_page/bloc/shop_bloc/shop_bloc.dart';
import 'package:rooster_game/src/pages/game_page/dialog/shop_dialog/widgets/build_price_widget.dart';
import 'package:rooster_game/src/pages/game_page/dialog/shop_dialog/widgets/build_shop_item_count.dart';
import 'package:rooster_game/src/pages/game_page/widgets/buy_more_moves_item.dart';
import 'package:rooster_game/src/pages/home_page/widgets/build_coin_balance.dart';
import 'package:rooster_game/src/services/ui_message_service.dart';
import 'package:rooster_game/src/widgets/content_container.dart';
import 'package:rooster_game/src/widgets/padding/horizontal_padding.dart';
import 'package:collection/collection.dart';

class ShopDialog extends StatelessWidget {
  const ShopDialog({super.key});

  void onBuyItem(
    BuildContext context,
    ShopItem item,
  ) {
    final shopBloc = context.read<ShopBloc>();
    if (shopBloc.state.shop.balance < item.price) {
      UiMessageService.showError(
        'Not enough balance. Earn and try again',
      );
      return;
    }
    context.read<ShopBloc>().add(
      ShopEvent.buy(
        item: item,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 40.0,
      ),
      child: Material(
        color: Colors.transparent,
        child: HorizontalPadding(
          child: ContentContainer(
            child: BlocBuilder<ShopBloc, ShopState>(
              builder: (context, state) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(),
                        Text(
                          'SHOP',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 28.0,
                          ),
                        ),
                        Gap(20.0),
                        BuildCoinBalance(),
                      ],
                    ),
                    Gap(20.0),
                    ...ShopItems.items.map(
                      (e) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () => onBuyItem(
                                context,
                                e,
                              ),
                              child: BuyMoreMovesItem(
                                count: e.count,
                              ),
                            ),
                            BuildPriceWidget(
                              price: e.price,
                            ),
                            BuildShopItemCount(
                              count:
                                  state.shop.items
                                      .firstWhereOrNull(
                                        (e) => e == e,
                                      )
                                      ?.count ??
                                  0,
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
