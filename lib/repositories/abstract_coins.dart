import 'package:app/models/coin_models.dart';

abstract class AbstractCoins {
  Future<List<Coins_type>> getCoinsList();
}
