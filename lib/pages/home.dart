import 'package:dukaan/model/home_list.dart';
import 'package:dukaan/pages/payments.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
   Home({super.key});

  final List<HomeList> list = [
    HomeList(
      nav: Payments(), 
      title: "Payments"),
  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        itemCount: list.length,
        itemBuilder: (context, index){
        return ListTile(
          title: Text(list[index].title),
          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_){
            return list[index].nav;
          })),
        );
      }),
    );
  }
}