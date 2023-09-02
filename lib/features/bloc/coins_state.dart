part of 'coins_bloc.dart';

sealed class CoinsState {}

final class CoinsInitial extends CoinsState {}

final class ListLoading extends CoinsState {}

final class ListLoaded extends CoinsState {
  ListLoaded({required this.coinList});
  final List<Coins_type> coinList;
}

final class ListFailure extends CoinsState {
  ListFailure({required this.exception});
  final Object? exception;
}
