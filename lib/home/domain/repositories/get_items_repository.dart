import 'package:testes_cwi/home/domain/entities/item.dart';

abstract class GetItemsRepository {
  Future<List<Item>> call();
}
