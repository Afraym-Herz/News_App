import 'package:flutter/material.dart';

void main() {
  runApp(BussinesCardApp());
}

class BussinesCardApp extends StatefulWidget {
  @override
  State<BussinesCardApp> createState() => _BussinesCardAppState();
}

class _BussinesCardAppState extends State<BussinesCardApp> {
  int pointsTeamA =0 , pointsTeamB =0 ;

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.orange,
              title: const Text('Points Counter'),
            ),
            body: Column(
              children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        "Team A",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "$pointsTeamA",
                        style: TextStyle(fontSize: 80),
                      ),
                      SizedBox(height: 8),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                          ),
                          onPressed: () {
                            setState(() {
                              pointsTeamA++;
                            });
                          },
                          child: Text(
                            "add 1 Point",
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          )),
                      SizedBox(height: 8),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                          ),
                          onPressed: () {
                            setState(() {
                              pointsTeamA+=2;
                            });
                          },
                          child: Text(
                            "add 2 Point",
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          )),
                      SizedBox(height: 8),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                          ),
                          onPressed: () {
                            setState(() {
                              pointsTeamA+=3;
                            });
                          },
                          child: Text(
                            "add 3 Point",
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 260,
                    child: VerticalDivider(
                      thickness: 3,
                      color: Color.fromARGB(179, 105, 105, 105),
                    ),
                  ),
                  Column(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Team B",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            "$pointsTeamB",
                            style: TextStyle(fontSize: 80),
                          ),
                          SizedBox(height: 8),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                              ),
                              onPressed: () {
                                setState(() {
                              pointsTeamB++;
                            });
                              },
                              child: Text(
                                "add 1 Point",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              )),
                          SizedBox(height: 8),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                              ),
                              onPressed: () {
                                setState(() {
                              pointsTeamB+=2;
                            });
                              },
                              child: Text(
                                "add 2 Point",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              )),
                          SizedBox(height: 8),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                              ),
                              onPressed: () {
                                setState(() {
                              pointsTeamB+=3;
                            });
                              },
                              child: Text(
                                "add 3 Point",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              )),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                              ),
                              onPressed: () {
                                setState(() {
                              pointsTeamA=0;
                              pointsTeamB=0;
                            });
                              },
                              child: Text(
                                "Reset the Points",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              )),
                ],
              )
            ]
            )
            ));
  }
}
