part of 'coins_bloc.dart';

abstract class CoinsEvent extends Equatable {}

class LoadList extends CoinsEvent {
  LoadList({required this.completer});
  final Completer? completer;

  @override
  List<Object?> get props => [completer];
}
