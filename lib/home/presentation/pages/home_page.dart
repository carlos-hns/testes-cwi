import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:testes_cwi/home/domain/entities/item.dart';
import 'package:testes_cwi/home/presentation/controllers/home_page_controller.dart';
import 'package:testes_cwi/home/presentation/widgets/square_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomePageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = GetIt.I.get<HomePageController>();
    _controller.loadItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: _controller.homeState,
        builder: (BuildContext context, HomePageState state, Widget? child) {
          if (state is InitHomePageState) {
            return const SizedBox.shrink();
          }

          if (state is LoadingHomePageState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: ListView.builder(
                itemCount: _controller.items.length,
                itemBuilder: (context, index) {
                  Item item = _controller.items[index];

                  return SquareWidget(
                    text: item.description,
                    amount: item.amount.toString(),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
