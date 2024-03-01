import 'package:dukaan/model/product_model.dart';
import 'package:flutter/material.dart';

class Products extends StatelessWidget {
 Products({super.key});

  final List<Product> list = [
    Product(
     image: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            image: const DecorationImage(image: AssetImage('lib/images/pouch.jpg')),
            borderRadius: BorderRadius.circular(8)
          )
        ),
      price: "₹799", 
      quantity: "1 piece", 
      title: "Couch Potato | Women"
    ),
    Product(

      image: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            image: const DecorationImage(image: AssetImage('lib/images/mug2.jpg')),
            borderRadius: BorderRadius.circular(8)
          )
        ),
 
      price: "₹799", 
      quantity: "1 piece", 
      title: "Mug | Explore"
    ),

    Product(
     image: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            image: const DecorationImage(image: AssetImage('lib/images/pouch.jpg')),
            borderRadius: BorderRadius.circular(8)
          )
        ),
      price: "₹799", 
      quantity: "1 piece", 
      title: "Couch Potato | Women"
    ),
    Product(

      image: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            image: const DecorationImage(image: AssetImage('lib/images/mug2.jpg')),
            borderRadius: BorderRadius.circular(8)
          )
        ),
 
      price: "₹799", 
      quantity: "1 piece", 
      title: "Mug | Explore"
    ),

    Product(
     image: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            image: const DecorationImage(image: AssetImage('lib/images/pouch.jpg')),
            borderRadius: BorderRadius.circular(8)
          )
        ),
      price: "₹799", 
      quantity: "1 piece", 
      title: "Couch Potato | Women"
    ),
    Product(

      image: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            image: const DecorationImage(image: AssetImage('lib/images/mug2.jpg')),
            borderRadius: BorderRadius.circular(8)
          )
        ),
 
      price: "₹799", 
      quantity: "1 piece", 
      title: "Mug | Explore"
    ),

    Product(
     image: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            image: const DecorationImage(image: AssetImage('lib/images/pouch.jpg')),
            borderRadius: BorderRadius.circular(8)
          )
        ),
      price: "₹799", 
      quantity: "1 piece", 
      title: "Couch Potato | Women"
    ),
    Product(

      image: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            image: const DecorationImage(image: AssetImage('lib/images/mug2.jpg')),
            borderRadius: BorderRadius.circular(8)
          )
        ),
 
      price: "₹799", 
      quantity: "1 piece", 
      title: "Mug | Explore"
    )
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      list[index].image,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 200,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(list[index].title),
                                const Icon(Icons.more_vert_outlined)
                              ],
                            ),
                          ),
                          Text(list[index].quantity,
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 12
                            ),
                          ),
                          const SizedBox(height: 5,),
                          Text(list[index].price,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(
                            width: 200,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('In stock',
                                  style: TextStyle(color: Colors.green),
                                ),
                                Switch(value: true, onChanged: (value){})
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Divider(),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.share),
                      SizedBox(width: 10,),
                      Text('Share Product')
                    ],
                  )
                ],
              ),
            ),
          );
      }
    );
  }
}