import 'package:dukaan/model/list_view_model.dart';
import 'package:flutter/material.dart';


class AdditionalInformation extends StatelessWidget {
  final List<ListViewModel> list = [
    ListViewModel(
      leading: const Icon(Icons.share),
      title: "Share Dukaan App", 
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
    ),
    ListViewModel(
      leading: const Icon(Icons.message),
      title: "Change Language", 
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
    ),
    ListViewModel(
      leading: SizedBox(
        height: 20,
        width: 20,
        child: Image.asset('lib/images/whatsapp.png',
        ),
      ),
      title: "WhatsApp Chat Support", 
      trailing: const Icon(Icons.toggle_off_sharp),
    ),
    ListViewModel(
      leading: const Icon(Icons.lock),
      title: "Privacy Policy", 
      trailing: const SizedBox(),
    ),
    ListViewModel(
      leading: const Icon(Icons.star_border),
      title: "Rate Us", 
      trailing: const SizedBox(),
    ),
    ListViewModel(
      leading: const Icon(Icons.logout),
      title: "Sign Out", 
      trailing: const SizedBox(),
    ),
  ];

  AdditionalInformation ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Additional Information'),
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context,index){
          return ListTile(
            leading: list[index].leading,
            title: Text(list[index].title),
            trailing: list[index].trailing,
          );
        }
      )
    );
  }
}