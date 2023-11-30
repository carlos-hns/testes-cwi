import 'package:get_it/get_it.dart';
import 'package:testes_cwi/home/data/datasources/get_items_datasource.dart';
import 'package:testes_cwi/home/data/datasources/get_items_local_datasource_imp.dart';
import 'package:testes_cwi/home/data/repositories/get_items_repository_imp.dart';
import 'package:testes_cwi/home/domain/repositories/get_items_repository.dart';
import 'package:testes_cwi/home/domain/usecases/get_items_usecase.dart';
import 'package:testes_cwi/home/domain/usecases/get_items_usecase_imp.dart';
import 'package:testes_cwi/home/presentation/controllers/home_page_controller.dart';

void setupGetIt() {
  GetIt.I.registerSingleton<GetItemsDatasource>(GetItemsLocalDatasourceImp());
  GetIt.I.registerSingleton<GetItemsRepository>(GetItemsRepositoryImp(GetIt.I.get()));
  GetIt.I.registerSingleton<GetItemsUsecase>(GetItemsUsecaseImp(GetIt.I.get()));
  GetIt.I.registerSingleton<HomePageController>(HomePageController(GetIt.I.get()));
}
