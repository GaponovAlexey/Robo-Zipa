import 'dart:async';

import 'package:app/models/coin_models.dart';
import 'package:app/repositories/abstract_coins.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'coins_event.dart';
part 'coins_state.dart';

class CoinsBloc extends Bloc<CoinsEvent, CoinsState> {
  CoinsBloc(this.coinsRepository) : super(CoinsInitial()) {
    on<LoadList>((event, emit) async {
      try {
        if (state is! ListLoaded) {
          emit(ListLoading());
        }
        final _coinsList = await coinsRepository.getCoinsList();
        emit(ListLoaded(coinList: _coinsList));
      } catch (e) {
        emit(ListFailure(exception: e));
      } finally {
        event.completer?.complete();
      }
    });
  }

  final AbstractCoins coinsRepository;
}
