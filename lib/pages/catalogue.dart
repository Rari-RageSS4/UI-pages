import 'package:dukaan/components/products.dart';
import 'package:flutter/material.dart';

class Catalogue extends StatelessWidget {
  Catalogue({super.key});

  final List<Catalogue> list = [];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text('Catalogue'),
          centerTitle: true,
          actions: const [
            Icon(Icons.search),
            SizedBox(width: 10,)
          ],
          bottom: const TabBar(
                labelColor: Colors.white,
                indicatorColor: Colors.white,
                tabs: [
                  Tab(
                    text: "Products",
                  ),
                  Tab(
                    text: "Catergories",
                  ),
                ]
              ),
        ),
        body: TabBarView(children: [
          Products(),
          const SizedBox()
        ],)
      ),
    );
  }
}