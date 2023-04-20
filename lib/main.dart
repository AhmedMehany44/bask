import 'package:flutter/material.dart';

void main() {
  runApp(basketball_points_counter());
}

class basketball_points_counter extends StatefulWidget {
  @override
  _basketball_points_counterState createState() => _basketball_points_counterState();
}

class _basketball_points_counterState extends State<basketball_points_counter> {
  int TeamApoints=0;

  int TeamBpoints=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('Basketball Points Counter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'TEAM A',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        '$TeamApoints',
                        style: TextStyle(
                          fontSize: 80,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            TeamApoints++;
                          });
                        },
                        child: Text('Add 1 point', style:TextStyle(fontSize: 20.0),),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal,
                          onPrimary: Colors.black,
                          minimumSize: Size(160, 40),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            TeamApoints +=2 ;
                          });
                        },
                        child: Text('Add 2 points', style:TextStyle(fontSize: 20.0),),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal,
                          onPrimary: Colors.black,
                          minimumSize: Size(160, 40),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            TeamApoints +=3 ;
                          });
                        },
                        child: Text('Add 3 points', style:TextStyle(fontSize: 20.0),),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal,
                          onPrimary: Colors.black,
                          minimumSize: Size(160, 40),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  height: 450,
                  child: VerticalDivider(
                    thickness: 1.0,
                    color: Colors.blueGrey,
                  ),
                ),

                Container(
                  height: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'TEAM B',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        '$TeamBpoints',
                        style: TextStyle(
                          fontSize: 80,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            TeamBpoints++ ;
                          });
                        },
                        child: Text('Add 1 point', style:TextStyle(fontSize: 20.0),),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal,
                          onPrimary: Colors.black,
                          minimumSize: Size(160, 40),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            TeamBpoints +=2 ;
                          });
                        },
                        child: Text('Add 2 points', style:TextStyle(fontSize: 20.0),),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal,
                          onPrimary: Colors.black,
                          minimumSize: Size(160, 40),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            TeamBpoints +=3 ;
                          });
                        },
                        child: Text('Add 3 points', style:TextStyle(fontSize: 20.0),),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal,
                          onPrimary: Colors.black,
                          minimumSize: Size(160, 40),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            
            ElevatedButton(
                      onPressed: () {
                        setState(() {
                            TeamApoints = 0;
                            TeamBpoints = 0;
                          });
                      },
                      child: Text('Reset', style:TextStyle(fontSize: 20.0),),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.teal,
                        onPrimary: Colors.black,
                        minimumSize: Size(160, 40),
                      ),
                    ),
          ],
        ),

      ),
    );
  }
}
