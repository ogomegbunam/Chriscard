import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: ChrisCard(),
    ));

class ChrisCard extends StatefulWidget {
  @override
  _ChrisCardState createState() => _ChrisCardState();
}

class _ChrisCardState extends State<ChrisCard> {
  int CHIRSLEVEL = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[700],
      appBar: AppBar(
        title: Text('ChrisCard'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange[300],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            CHIRSLEVEL += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.deepOrange[600],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 30, 30, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/og.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.deepOrange[600],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.deepOrange[400],
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Chris-ricky',
              style: TextStyle(
                color: Colors.blueAccent[400],
                letterSpacing: 2.0,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'CURRENT CHRIS LEVEL',
              style: TextStyle(
                color: Colors.deepOrange[400],
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '$CHIRSLEVEL',
              style: TextStyle(
                color: Colors.deepOrange[400],
                letterSpacing: 2.0,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(children: <Widget>[
              Icon(Icons.email, color: Colors.deepOrange[100]),
            ]),
            SizedBox(
              width: 10.0,
            ),
            Text(
              'Ricky@chris',
              style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 18.0,
                letterSpacing: 1.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
