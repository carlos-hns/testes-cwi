import 'package:testes_cwi/home/domain/entities/item.dart';

abstract class GetItemsUsecase {
  Future<List<Item>> call();
}
