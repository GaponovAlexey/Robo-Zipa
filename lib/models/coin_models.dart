import 'package:equatable/equatable.dart';

class Coins_type extends Equatable {
  const Coins_type({
    required this.name,
    required this.PriceInUSD,
    required this.imgURL,
  });

  final String name;
  final double PriceInUSD;
  final String imgURL;

  @override
  List<Object?> get props => [name, PriceInUSD, imgURL];
}
