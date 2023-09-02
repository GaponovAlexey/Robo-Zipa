part of 'coins_bloc.dart';

class CoinsEvent {}

class LoadList extends CoinsEvent {
  LoadList({required this.completer});
  final Completer? completer;
}
