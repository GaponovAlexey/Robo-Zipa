import 'package:app/models/coin_models.dart';
import 'package:flutter/material.dart';

class CoinTail extends StatelessWidget {
  const CoinTail({super.key, required this.coin});

  final Coins_type coin;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      leading: Image.network(coin.imgURL),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.pushNamed(context, '/coin', arguments: coin);
      },
      title: Text(
        coin.name,
        style: theme.textTheme.bodyMedium,
      ),
      subtitle: Text('${coin.PriceInUSD}'),
    );
  }
}
