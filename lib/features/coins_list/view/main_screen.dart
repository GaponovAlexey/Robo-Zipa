import 'dart:async';

import 'package:app/features/bloc/coins_bloc.dart';
import 'package:app/repositories/abstract_coins.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../widgets/widgets.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _coinsBloc = CoinsBloc(GetIt.I<AbstractCoins>());

  @override
  void initState() {
    final completer = Completer();
    _coinsBloc.add(LoadList(completer: completer));
    completer.future;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Robo ZIPA'),
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            final completer = Completer();
            _coinsBloc.add(LoadList(completer: completer));
            return completer.future;
          },
          child: BlocBuilder<CoinsBloc, CoinsState>(
            bloc: _coinsBloc,
            builder: (context, state) {
              if (state is ListLoaded) {
                return ListView.separated(
                    padding: const EdgeInsets.only(top: 16),
                    separatorBuilder: (context, index) => const Divider(),
                    itemCount: state.coinList.length,
                    itemBuilder: (context, index) {
                      final coin = state.coinList[index];
                      return CoinTail(coin: coin);
                    });
              }
              return const Center(child: CircularProgressIndicator());
            },
          ),
        ));
  }
}
