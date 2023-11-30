import 'package:flutter/material.dart';
import 'package:testes_cwi/home/domain/entities/item.dart';
import 'package:testes_cwi/home/domain/usecases/get_items_usecase.dart';

abstract class HomePageState {}

class LoadingHomePageState extends HomePageState {}

class InitHomePageState extends HomePageState {}

class ItemsLoadedHomePageState extends HomePageState {}

class HomePageController {
  final GetItemsUsecase _getItemsUsecase;

  List<Item> items = [];

  ValueNotifier<HomePageState> homeState = ValueNotifier<HomePageState>(InitHomePageState());

  HomePageController(this._getItemsUsecase);

  void loadItems() async {
    homeState.value = LoadingHomePageState();
    items = await _getItemsUsecase();
    homeState.value = ItemsLoadedHomePageState();
  }
}
