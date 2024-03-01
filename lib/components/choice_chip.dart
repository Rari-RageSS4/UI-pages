import 'package:flutter/material.dart';

class ChoiceChips extends StatefulWidget {
  const ChoiceChips({super.key});

  @override
  State<ChoiceChips> createState() => _ChoiceChipsState();
}

class _ChoiceChipsState extends State<ChoiceChips> {

   bool _isSelected1 = false;
   bool _isSelected2 = false;
   bool _isSelected3 = false;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ChoiceChip(
          label: const Text("On hold"), 
          selected: _isSelected1,
          selectedColor: Colors.blue,
          onSelected: (newBoolValue){
            setState(() {
              _isSelected1 = newBoolValue;
            }); 
          },
        ),
        const SizedBox(width: 10,),
        ChoiceChip(
          label: const Text("Payouts(15)"), 
          selected: _isSelected2,
          selectedColor: Colors.blue,
          onSelected: (newBoolValue){
            setState(() {
              _isSelected2 = newBoolValue;
            });
          },
        ),
        const SizedBox(width: 10,),
        ChoiceChip(
          label: const Text("Refunds"), 
          selected: _isSelected3,
          selectedColor: Colors.blue,
          onSelected: (newBoolValue){
            setState(() {
              _isSelected3 = newBoolValue;
            });
          },
        )
      ],
    );
  }
}