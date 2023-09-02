import 'package:app/models/coin_models.dart';
import 'package:app/repositories/abstract_coins.dart';
import 'package:dio/dio.dart';

class CoinsRepository implements AbstractCoins {
  CoinsRepository({required this.dio});

  final Dio dio;

  @override
  Future<List<Coins_type>> getCoinsList() async {
    final response = await dio.get(
        'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,BNB,AID,ADA&tsyms=USD');

    final data = response.data as Map<String, dynamic>;

    final dataRaw = data['RAW'] as Map<String, dynamic>;

    final dataList = dataRaw.entries.map((e) {
      final usdData =
          (e.value as Map<String, dynamic>)['USD'] as Map<String, dynamic>;
      final price = usdData['PRICE'];
      final imgUrl = usdData['IMAGEURL'];
      return Coins_type(
        name: e.key,
        PriceInUSD: price,
        imgURL: 'https://www.cryptocompare.com/$imgUrl',
      );
    }).toList();

    return dataList;
  }
}
