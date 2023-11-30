import 'package:testes_cwi/home/data/datasources/get_items_datasource.dart';
import 'package:testes_cwi/home/domain/entities/item.dart';

class GetItemsLocalDatasourceImp implements GetItemsDatasource {
  @override
  Future<List<Item>> call() {
    return Future.delayed(const Duration(seconds: 3), () {
      return List.generate(15, (index) => Item(description: 'Item ${index + 1}', amount: index + 2));
    });
  }
}
