import 'package:dukaan/model/payment_list.dart';
import 'package:flutter/material.dart';

class PaymentsListview extends StatelessWidget {
  const PaymentsListview({super.key, required this.list});

 final List<PaymentList> list;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
              separatorBuilder: (context, index){
                return Column(
                  children: [
                    Text(list[index].deposited),
                    const Divider(),
                  ],
                );
              },
              itemCount: list.length,
              itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: list[index].leading,
                      title: Text(list[index].title),
                      subtitle: Text(list[index].subTitle),
                      trailing: SizedBox(
                        height: 50,
                        width: 90,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(list[index].price),
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Container(
                                    height: 10,
                                    width: 10,
                                    color: Colors.green,
                                  ),
                                ),
                                Text(list[index].successful)
                              ],
                            ),   
                          ],
                        ),
                      ),
                     ),
                    
                );
              }
              );
  }
}