import 'package:testes_cwi/home/domain/entities/item.dart';

abstract class GetItemsDatasource {
  Future<List<Item>> call();
}
