import 'package:app/app.dart';
import 'package:app/repositories/abstract_coins.dart';
import 'package:app/repositories/coins/coins_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void main() {
  GetIt.I
      .registerLazySingleton<AbstractCoins>(() => CoinsRepository(dio: Dio()));
  return runApp(const StartApp());
}
