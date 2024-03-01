import 'package:dukaan/model/grid_view_model.dart';
import 'package:flutter/material.dart';

class Manage extends StatelessWidget {
  Manage({super.key});

  final List<GridViewModel> list = [
      GridViewModel(
      icon: const Icon(Icons.speaker,color: Colors.white,), 
      title: "Marketing Designs",
      color: Colors.orange,
      ),
      GridViewModel( 
      icon: const Icon(Icons.currency_rupee,color: Colors.white,), 
      title: "Online Payments",
      color: Colors.green,
      ),
      GridViewModel(
      icon: const Icon(Icons.percent_outlined,color: Colors.white,), 
      title: "Discount Coupons",
      color: Colors.amber,
      ),
      GridViewModel(
      icon: const Icon(Icons.person_2_outlined,
      color: Colors.white,), 
      title: "My Customers",
      color: Colors.teal,
      ),
      GridViewModel(
      icon: const Icon(Icons.qr_code_scanner_outlined,color: Colors.white,), 
      title: "Store QR Code",
      color: Colors.grey,
      ),
      GridViewModel(
      icon: const Icon(Icons.currency_rupee,color: Colors.white,), 
      title: "Extra Charges",
      color: Colors.deepPurple,
      ),
      GridViewModel(
      icon: const Icon(Icons.document_scanner_outlined,color: Colors.white,), 
      color: Colors.purpleAccent,
      container: true,
      title: "Order Form",
      ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Manage Store")),     
      backgroundColor: Colors.grey[300],
      body: GridView.builder(
        
        padding: const EdgeInsets.all(8.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        ),
        itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.all(5.0),
          child: ConstrainedBox(
            constraints: const BoxConstraints.expand(height: 130,width: 180),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children : [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: 30,
                            width: 40,
                            color: list[index].color,
                            child: list[index].icon,
                          ),
                        ),
                        if(list[index].container)
                        ClipRRect(
                          borderRadius: BorderRadius.circular(6),
                          child: Container(
                            height: 20,
                            width: 30,
                            color: Colors.green[500],
                            child: const Center(
                              child: Text('NEW',
                              style: TextStyle(fontSize: 9,
                              color: Colors.white,
                              ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Title(
                      color: Colors.black,
                      child: Text(list[index].title,
                      style: const TextStyle(fontSize: 20),),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
        },
        itemCount: list.length,
        ),
    );
  }
}