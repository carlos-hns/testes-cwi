import 'package:testes_cwi/home/data/datasources/get_items_datasource.dart';
import 'package:testes_cwi/home/domain/entities/item.dart';
import 'package:testes_cwi/home/domain/repositories/get_items_repository.dart';

class GetItemsRepositoryImp implements GetItemsRepository {
  final GetItemsDatasource _datasource;
  GetItemsRepositoryImp(this._datasource);

  @override
  Future<List<Item>> call() {
    return _datasource();
  }
}
