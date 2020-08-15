import 'package:flutter/material.dart';

class OrderDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text("Order Details")),
            backgroundColor: Colors.yellow,
          ),
          body: Card(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  ListTile(
                    title: Text('ORDER ID :XXXXXXXXX ',
                        style: TextStyle(fontWeight: FontWeight.w500)),
                  ),
                  ListTile(
                    title: Text('Date :XX/XX/XXXX',
                        style: TextStyle(fontWeight: FontWeight.w500)),
                  ),
                  ListTile(
                    title: Text('DELIVERY DATE : XX/XX/XXXX',
                        style: TextStyle(fontWeight: FontWeight.w500)),
                  ),
                  ListTile(
                    title: Text('TIME : XX TO XX ',
                        style: TextStyle(fontWeight: FontWeight.w500)),
                  ),
                  ListTile(
                      title: Text.rich(TextSpan(
                    text: 'ORDER STATUS : ',
                    children: <TextSpan>[
                      TextSpan(
                          text: ' Out For delivery ',
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: Colors.green)),
                    ],
                  ))),
                  const Divider(
                    color: Colors.black12,
                    height: 20,
                    thickness: 2,
                    indent: 0,
                    endIndent: 0,
                  ),
                  DataTable(
                    columnSpacing: 20.0,
                    columns: const <DataColumn>[
                      DataColumn(
                          label: Expanded(
                        child: Text(
                          'PRODUCT',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      )),
                      DataColumn(
                          label: Expanded(
                            child: Text(
                              'QUANTITY',
                              style: TextStyle(fontStyle: FontStyle.italic),
                            ),
                          ),
                          numeric: true),
                      DataColumn(
                          label: Expanded(
                            child: Text(
                              'MRP',
                              style: TextStyle(fontStyle: FontStyle.italic),
                            ),
                          ),
                          numeric: true),
                      DataColumn(
                          label: Expanded(
                            child: Text(
                              'DISCOUNT',
                              style: TextStyle(fontStyle: FontStyle.italic),
                            ),
                          ),
                          numeric: true),
                      DataColumn(
                          label: Expanded(
                            child: Text(
                              'CHARGED(RS)',
                              style: TextStyle(fontStyle: FontStyle.italic),
                            ),
                          ),
                          numeric: true),
                    ],
                    rows: const <DataRow>[
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Expanded(child: Text('Sarah'))),
                          DataCell(Text('19')),
                          DataCell(Text('20')),
                          DataCell(Text('22')),
                          DataCell(Text('22')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('Janine')),
                          DataCell(Text('43')),
                          DataCell(Text('55')),
                          DataCell(Text('88')),
                          DataCell(Text('66')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('Willia jjjjuhuu')),
                          DataCell(Text('27')),
                          DataCell(Text('55')),
                          DataCell(Text('888')),
                          DataCell(Text('666')),
                        ],
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.black12,
                    height: 20,
                    thickness: 2,
                    indent: 0,
                    endIndent: 0,
                  ),
                  ListTile(
                      title: Text.rich(TextSpan(
                    text: 'DELIVERY ADDRESS : ',
                    children: <TextSpan>[
                      TextSpan(
                          text: ' XXXXXXXXXXXXXXXXXXXXXXXXX ',
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: Colors.black26)),
                    ],
                  ))),
                ]),
          )),
    );
  }
}
