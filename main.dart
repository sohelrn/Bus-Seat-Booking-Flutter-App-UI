import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bus Booking',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        splashColor: Colors.transparent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Bus Booking'),
          centerTitle: true,
          backgroundColor: Colors.orange,
          elevation: 0.0,
          bottom: PreferredSize(
              child: TabBar(
                indicatorColor: Colors.deepPurple,
                tabs: [
                  Tab(text: 'Block'),
                  Tab(text: 'Available'),
                ],
              ),
              preferredSize: Size(0.0, 40.0)),
        ),
        bottomNavigationBar: Container(
          height: 50,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  offset: Offset(0, 0),
                  blurRadius: 10,
                )
              ]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total: 1457 for 2 seat',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text('Next'),
                  color: Colors.orange,
                )
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              physics: BouncingScrollPhysics(),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      padding: EdgeInsets.only(left: 12.0),
                      child: Center(child: Text('GATE')),
                    ),
                    Container(
                      height: 50,
                      padding: EdgeInsets.only(right: 12.0),
                      child: Center(child: Text('DRIVER')),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SeatWidget(name: 'A1', color: Colors.grey[200]),
                    Spacer(),
                    SeatWidget(name: 'A2', color: Colors.grey[200]),
                    SeatWidget(name: 'A3', color: Colors.grey[200]),
                  ],
                ),
                Row(
                  children: [
                    SeatWidget(name: 'B1', color: Colors.grey[200]),
                    SeatWidget(name: 'B2', color: Colors.grey[200]),
                    Spacer(),
                    SeatWidget(name: 'B3', color: Colors.grey[200]),
                    SeatWidget(name: 'B4', color: Colors.grey[200]),
                  ],
                ),
                Row(
                  children: [
                    SeatWidget(name: 'C1', color: Colors.red[100]),
                    SeatWidget(name: 'C2', color: Colors.grey[200]),
                    Spacer(),
                    SeatWidget(name: 'C3', color: Colors.red[100]),
                    SeatWidget(name: 'C4', color: Colors.grey[200]),
                  ],
                ),
                Row(
                  children: [
                    SeatWidget(name: 'D1', color: Colors.grey[200]),
                    SeatWidget(name: 'D2', color: Colors.red[100]),
                    Spacer(),
                    SeatWidget(name: 'D3', color: Colors.red[100]),
                    SeatWidget(name: 'D4', color: Colors.grey[200]),
                  ],
                ),
                Row(
                  children: [
                    SeatWidget(name: 'E1', color: Colors.green[100]),
                    SeatWidget(name: 'E2', color: Colors.green[100]),
                    Spacer(),
                    SeatWidget(name: 'E3', color: Colors.grey[200]),
                    SeatWidget(name: 'E4', color: Colors.grey[200]),
                  ],
                ),
                Row(
                  children: [
                    SeatWidget(name: 'F1', color: Colors.red[100]),
                    SeatWidget(name: 'F2', color: Colors.grey[200]),
                    Spacer(),
                    SeatWidget(name: 'F3', color: Colors.grey[200]),
                    SeatWidget(name: 'F4', color: Colors.grey[200]),
                  ],
                ),
                Row(
                  children: [
                    SeatWidget(name: 'G1', color: Colors.grey[200]),
                    SeatWidget(name: 'G2', color: Colors.grey[200]),
                    Spacer(),
                    SeatWidget(name: 'G3', color: Colors.red[100]),
                    SeatWidget(name: 'G4', color: Colors.grey[200]),
                  ],
                ),
                Row(
                  children: [
                    SeatWidget(name: 'H1', color: Colors.grey[200]),
                    SeatWidget(name: 'H2', color: Colors.grey[200]),
                    Spacer(),
                    SeatWidget(name: 'H3', color: Colors.grey[200]),
                    SeatWidget(name: 'H4', color: Colors.red[100]),
                  ],
                ),
                Row(
                  children: [
                    SeatWidget(name: 'I1', color: Colors.grey[200]),
                    SeatWidget(name: 'I2', color: Colors.grey[200]),
                    Spacer(),
                    SeatWidget(name: 'I3', color: Colors.grey[200]),
                    SeatWidget(name: 'I4', color: Colors.grey[200]),
                  ],
                ),
                Row(
                  children: [
                    SeatWidget(name: 'J1', color: Colors.grey[200]),
                    SeatWidget(name: 'J2', color: Colors.grey[200]),
                    SeatWidget(name: 'J3', color: Colors.grey[200]),
                    SeatWidget(name: 'J4', color: Colors.grey[200]),
                    SeatWidget(name: 'J5', color: Colors.grey[200]),
                  ],
                ),
              ],
            ),
            Container(
              child: Center(child: Text('Available')),
            ),
          ],
        ),
      ),
    );
  }
}

class SeatWidget extends StatelessWidget {
  final String name;
  final Color color;

  const SeatWidget({Key key, @required this.name, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 5 - 4;
    return Container(
      margin: EdgeInsets.all(2.0),
      width: width,
      height: width / 1.5,
      color: color,
      child: Center(
          child: Text(name.toString(),
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold))),
    );
  }
}
