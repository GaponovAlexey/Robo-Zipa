part of 'coins_bloc.dart';

abstract class CoinsState extends Equatable {}

final class CoinsInitial extends CoinsState {
  @override
  List<Object?> get props => [];
}

final class ListLoading extends CoinsState {
  @override
  List<Object?> get props => [];
}

final class ListLoaded extends CoinsState {
  ListLoaded({required this.coinList});
  final List<Coins_type> coinList;

  @override
  List<Object?> get props => [coinList];
}

final class ListFailure extends CoinsState {
  ListFailure({required this.exception});
  final Object? exception;

  @override
  List<Object?> get props => [exception];
}
