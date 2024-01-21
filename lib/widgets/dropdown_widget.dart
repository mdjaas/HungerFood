import 'package:flutter/material.dart';

const List<String> list = <String>['Business', 'Customer', 'Farmer', 'Delivery Rider'];

class DropdownWidget extends StatefulWidget{
  const DropdownWidget({super.key});

  @override
  State<DropdownWidget> createState() => _DropdownState();

}

class _DropdownState extends State<DropdownWidget>{
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context){
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: DropdownMenu<String>(
          width: MediaQuery.of(context).size.width*0.9,
          initialSelection: list.first,
          onSelected: (String? value){
            setState(() {
              dropdownValue = value!;
            });
          },
          dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((String value) {
            return DropdownMenuEntry<String>(value: value, label: value);
          }).toList(),
        ),
    );
  }
}