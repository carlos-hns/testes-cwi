import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
      'CONTEXTO: '
      '\n\tDADO que estou testando a tela da Home'
      '\n\tE não houve nenhum erro durante o carregamento', () {
    testWidgets(
      '\n\n\tCENARIO: '
      '\n\tDADO que a tela foi renderizada pela primeira vez'
      '\n\n\tQUANDO a tela for carregada'
      '\n\tENTAO deve ser mostrado um Loader por 3 segundos'
      '\n\tenquanto os items estão sendo carregados',
      (widgetTester) async {
        // Escreva o teste aqui
      },
    );
  });

  test(
      '\nCENARIO: '
      '\n\tDADO que estou testando se o GetItemsRepository retorna'
      '\n\tos itens corretamente'
      '\n\n\tQUANDO o GetItemsDatasource for chamado'
      '\n\tENTAO deve retornar uma Lista de Item', () {
    // Escreva o teste aqui
  });
}
