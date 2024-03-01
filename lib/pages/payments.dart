import 'package:dukaan/components/choice_chip.dart';
import 'package:dukaan/components/paymets_listview.dart';
import 'package:dukaan/model/payment_list.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Payments extends StatelessWidget {
  Payments({super.key});

  final List<PaymentList> list = [
    PaymentList(
      leading: Container(
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('lib/images/tshirt.jpg'))
          )
        ),
      title: "Order #1688068", 
      subTitle: "Jul 12, 02:06 PM", 
      deposited: "₹799 deposited to: 58860200000138", 
      price: "₹799", 
      successful: "Successful"
    ),
    PaymentList(
      leading: Container(
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('lib/images/tshirt.jpg'))
          )
        ),
      title: "Order #1688068", 
      subTitle: "Jul 12, 02:06 PM", 
      deposited: "₹799 deposited to: 58860200000138", 
      price: "₹799", 
      successful: "Successful"
    ),
    PaymentList(
      leading: Container(
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('lib/images/tshirt.jpg'))
          )
        ),
      title: "Order #1688068", 
      subTitle: "Jul 12, 02:06 PM", 
      deposited: "₹799 deposited to: 58860200000138", 
      price: "₹799", 
      successful: "Successful"
    ),
    
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Payments'),
        centerTitle: true,
        actions: const [
          Icon(Icons.info),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // transaction limit
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 const Text('Transanction Limit',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const Text("A free limit up to which you will receive the online payments directly in your bank",
                  style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 15,),
                  LinearPercentIndicator(
                    padding: EdgeInsets.zero,
                    lineHeight: 10,
                    percent: 0.3,
                    progressColor: const Color.fromARGB(255, 122, 194, 249),
                    barRadius: const Radius.circular(12),
                  ),
                  const SizedBox(height: 10,),
                  const Text("36,668 left out of ₹50,000",
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height:30,),
                  MaterialButton(
                    onPressed: (){},
                    color: Colors.blue[700],
                    child: const Text("Increase limit",
                    style: TextStyle(color: Colors.white)),
                  )
                ],
              ),
          
             const SizedBox(height: 30,),
             //default method
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Default Method",
                        style: TextStyle(fontSize: 17),
                      ),
                      Row(
                        children: [
                          Text("Online Payment",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Icon(Icons.arrow_right),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Payment Profile",
                        style: TextStyle(fontSize: 17),
                      ),
                      Row(
                        children: [
                          Text("Bank Account",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Icon(Icons.arrow_right),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 1,
                    color: Colors.grey,
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              // Payments Overview
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Payments Overview",
                      style: TextStyle(fontWeight: FontWeight.bold),),
                      Row(
                        children: [
                          Text("Life Time"),
                          Icon(Icons.arrow_drop_down),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  // amount 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          height: 100,
                          width: 170,
                          color: Colors.orange,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("AMOUNT ON HOLD",
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(height: 10,),
                              Text("₹0",
                                style: TextStyle(color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          height: 100,
                          width: 170,
                          color: Colors.green,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("AMOUNT RECEIVED",
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(height: 10,),
                              Text("₹13,332",
                                style: TextStyle(color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: 10,),
              const Text("Transaction",
                style: TextStyle(fontWeight:FontWeight.bold),
              ),
              const SizedBox(height: 10,),
              // choice chip
              const ChoiceChips(),
              
              // listview
              SizedBox(
                height: 200,
                child: PaymentsListview(list: list)
              ),
            ],
          ),
        ),
      ),
    );
  }
}