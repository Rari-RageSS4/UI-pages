import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Order #1688068',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('May 31, 05:42 PM'),
                  Row(
                    children: [
                      Icon(
                        Icons.circle,
                        size: 14,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Delivered')
                    ],
                  )
                ],
              ),
        
              Divider(
                color: Colors.grey[700],
              ),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '1 ITEM',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const Row(
                    children: [
                      Icon(
                        Icons.receipt_outlined,
                        size: 18,
                        color: Color.fromARGB(255, 9, 109, 192),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'RECEIPT',
                        style: TextStyle(color: Color.fromARGB(255, 9, 102, 179)),
                      ),
                    ],
                  ),
                ],
              ),
        
              // List Tile
              //------------------------------
              const SizedBox(height: 10,),
              Row( 
                children: [
                  //image
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 60,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: const DecorationImage(image: AssetImage('lib/images/tshirt.jpg')),
                        border: Border.all(
                          color: Colors.grey
                        )
                      ),
                    ),
                  ),
                  const SizedBox(width: 15,),
                  //title and description
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10,),
                      const Text('Explore | Men | Navy Blue'),
                      const SizedBox(height: 5,),
                      const Text('1 piece'),
                      const Text('Size: XL'),
                      const SizedBox(height: 5,),

                      SizedBox(
                        width: 260,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 20,
                                  width: 20,
                                  padding: const EdgeInsets.all(1),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.blue
                                    ),
                                    borderRadius: const BorderRadius.all(Radius.circular(2))
                                    ),
                                  child: const Text('1'),
                                  
                                ),
                                const Text(' x ₹799'),
                              ],
                            ),
                            const Text('₹799'),
                          ],
                        ),
                      )
                    ],
                  ),
                  //price

                  
                ],
              ),

              const SizedBox(height: 10,),
        
              Divider(
                color: Colors.grey[700],
              ),
        
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Item Total'),
                  Text('₹799'),
                ],
              ),
              const SizedBox(
                height: 7,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Delivery'),
                  Text(
                    'FREE',
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Grand Total',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    '₹799',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  )
                ],
              ),
        
              const SizedBox(
                height: 10,
              ),
        
              Divider(
                color: Colors.grey[700],
              ),
        
              const SizedBox(
                height: 10,
              ),
        
              // Customer Details
        
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'CUSTOMER DETAILS',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.share,
                        size: 17,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'SHARE',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  )
                ],
              ),
        
              const SizedBox(
                height: 10,
              ),
        
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Deepa',
                        style:
                            TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '+91-7829000484',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.blue,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.phone,
                        color: Colors.green,
                        size: 30,
                      ),
                    ],
                  )
                ],
              ),
        
              const SizedBox(
                height: 10,
              ),
        
              // Address
        
              const Text(
                'Address',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text('D 1101 Chartered Beverly'),
              const Text('Hills, Subramanyapura P.O'),
        
              const SizedBox(height: 15,),
        
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'City',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text('Bangalore'),
                    ],
                  ),
                  SizedBox(width: 80,),
                  Column(
                    children: [
                      Text(
                        'Pincode',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text('560061'),
                    ],
                  )
                ],
              ),
        
              const SizedBox(
                height: 10,
              ),
        
              // payment
        
              const Text(
                'Payment',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Online'),
                  ClipRRect(
                    borderRadius:BorderRadius.circular(5),
                    child: Container(
                      alignment: Alignment.center,
                      height: 20,
                      width: 50,
                      color: Colors.green[100],
                      child: Text(
                        'PAID',
                        style: TextStyle(color: Colors.green[700],
                        fontWeight: FontWeight.bold,),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10,),
        
              Divider(color: Colors.grey[700],),
        
              const SizedBox(height: 15,),
        
              Text(
                'ADDITIONAL INFORMATION',
                style: TextStyle(
                  color: Colors.grey[600]
                ),
              ),
        
              const SizedBox(
                height: 10,
              ),
        
              const Text(
                'State',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5,),
              const Text('Karnataka'),
        
              const SizedBox(
                height: 15,
              ),
        
              const Text(
                'Email',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5,),
              const Text('greeniceaqua@gmail.com'),

              const SizedBox(height: 20,),

              SizedBox(
                width: 400,
                height: 50,
                child: OutlinedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)))),
                  onPressed: () {},
                  child: const Text(
                    'Share receipt',
                    style: TextStyle(color: Colors.blue,
                    fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
