import 'package:testes_cwi/home/domain/entities/item.dart';
import 'package:testes_cwi/home/domain/repositories/get_items_repository.dart';
import 'package:testes_cwi/home/domain/usecases/get_items_usecase.dart';

class GetItemsUsecaseImp implements GetItemsUsecase {
  final GetItemsRepository _repository;
  GetItemsUsecaseImp(this._repository);

  @override
  Future<List<Item>> call() {
    return _repository();
  }
}
