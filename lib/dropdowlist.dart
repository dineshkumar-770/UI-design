import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class DropDownList extends StatefulWidget {
  @override
  State<DropDownList> createState() => _DropDownListState();
}

class _DropDownListState extends State<DropDownList> {
  String? valueChoose1;

  String? valueChoose2;

  String? valueChoose3;

  List<String> itemList1 = [
    'Faclities 1',
    'Faclities 2',
    'Faclities 3',
    'Faclities 4',
    'Faclities 5',
  ];

  List<String> itemList2 = [
    'Date 1',
    'Date 2',
    'Date 3',
    'Date 4',
    'Date 5',
  ];

  List<String> itemList3 = [
    'Shift 1',
    'Shift 2',
    'Shift 3',
    'Shift 4',
    'Shift 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 20, 0, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 30,
            decoration: BoxDecoration(
                color: Color(0xfff2f2f2),
                borderRadius: BorderRadius.circular(5)),
            width: 120,
            child: Padding(
              padding: const EdgeInsets.only(left: 7.5, right: 7.5),
              child: DropdownButton(
                isExpanded: true,
                icon: Icon(Icons.arrow_drop_down),
                hint: Text('Faclities'),
                underline: SizedBox(),
                value: valueChoose1,
                onChanged: (newValue) {
                  setState(() {
                    valueChoose1 = newValue.toString();
                  });
                },
                items: itemList1.map((valueItem) {
                  return DropdownMenuItem(
                      value: valueItem, child: Text(valueItem));
                }).toList(),
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Container(
            height: 30,
            decoration: BoxDecoration(
                color: Color(0xfff2f2f2),
                borderRadius: BorderRadius.circular(5)),
            width: 90,
            child: Padding(
              padding: const EdgeInsets.only(left: 7.5, right: 7.5),
              child: DropdownButton(
                isExpanded: true,
                icon: Icon(Icons.arrow_drop_down),
                hint: Text('Date'),
                underline: SizedBox(),
                value: valueChoose2,
                onChanged: (newValue) {
                  setState(() {
                    valueChoose2 = newValue.toString();
                  });
                },
                items: itemList2.map((valueItem) {
                  return DropdownMenuItem(
                      value: valueItem, child: Text(valueItem));
                }).toList(),
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Container(
            height: 30,
            decoration: BoxDecoration(
                color: Color(0xfff2f2f2),
                borderRadius: BorderRadius.circular(5)),
            width: 90,
            child: Padding(
              padding: const EdgeInsets.only(left: 7.5, right: 7.5),
              child: DropdownButton(
                isExpanded: true,
                icon: Icon(Icons.arrow_drop_down),
                hint: Text('Shifts'),
                underline: SizedBox(),
                value: valueChoose3,
                onChanged: (newValue) {
                  setState(() {
                    valueChoose3 = newValue.toString();
                  });
                },
                items: itemList3.map((valueItem) {
                  return DropdownMenuItem(
                      value: valueItem, child: Text(valueItem));
                }).toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
