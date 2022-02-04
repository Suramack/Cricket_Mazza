import 'package:cricket_mazza/Live_Line/live/components.dart/style.dart';
import 'package:flutter/material.dart';

class BatsmanTable extends StatefulWidget {
  const BatsmanTable({Key? key}) : super(key: key);

  @override
  _BatsmanTableState createState() => _BatsmanTableState();
}

class _BatsmanTableState extends State<BatsmanTable> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: DataTable(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 3,
                color: Colors.black12,
              ),
            ],
            borderRadius: BorderRadius.circular(10),
          ),
          headingTextStyle: batsmanTableHeadingTextStyle(),
          columns: const [
            DataColumn(label: Text('BATSMAN')),
            DataColumn(label: Text('R')),
            DataColumn(label: Text('B')),
            DataColumn(label: Text('4s')),
            DataColumn(label: Text('6s')),
            DataColumn(label: Text('SR')),
          ],
          rows: [
            DataRow(cells: [
              DataCell(
                Text(
                  'Paul Stirling',
                  maxLines: 1,
                  style: batsmanNameHeadingTextStyle(),
                ),
              ),
              DataCell(Text('2')),
              DataCell(Text('2')),
              DataCell(Text('2')),
              DataCell(Text('2')),
              DataCell(Text('2')),
            ]),
            DataRow(cells: [
              DataCell(Text(
                "Kevin O'Brien",
                maxLines: 1,
                style: batsmanNameHeadingTextStyle(),
              )),
              DataCell(Text('2')),
              DataCell(Text('2')),
              DataCell(Text('2')),
              DataCell(Text('2')),
              DataCell(Text('2')),
            ]),
          ]),
    );
    // return Table(
    //   children: const [
    //     TableRow(children: [
    //       Text('1'),
    //       Text('2'),
    //       Text('3'),
    //     ]),
    //     TableRow(children: [
    //       Text('1'),
    //       Text('2'),
    //       Text('3'),
    //     ]),
    //     TableRow(children: [
    //       Text('1'),
    //       Text('2'),
    //       Text('3'),
    //     ]),
    //   ],
    // );
  }
}
