import 'package:flutter/material.dart';
import 'const.dart';

class AwesomeEndDrawer extends StatefulWidget {
  @override
  _AwesomeEndDrawerState createState() => _AwesomeEndDrawerState();
}

class _AwesomeEndDrawerState extends State<AwesomeEndDrawer> {
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Container(
        width: (MediaQuery.of(context).size.width / 100) * 80,
        child: Stack(
          children: <Widget>[
            // background of the drawer
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: (MediaQuery.of(context).size.width / 100) * 75,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black87, Colors.grey[800]],
                  ),
                ),
              ),
            ),

            Positioned(
              left: 0,
              right: 0,
              top: (MediaQuery.of(context).size.height / 100) * 10,
              bottom: 0,
              child: Container(
                // color: Colors.red,
                child: ListView(
                    children: List.generate(30, (x) {
                  return Container(
                    //color: Colors.green,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            flex: 1,
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  height: 50,
                                  width: 50,
                                  margin: EdgeInsets.only(
                                    top: 40,
                                  ),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white),
                                  padding: EdgeInsets.all(5),
                                  child: CircleAvatar(
                                    backgroundImage:
                                        NetworkImage('${imageurl[0]}'),
                                    radius: 40,
                                    backgroundColor: Colors.grey,
                                  ),
                                ),
                              ],
                            )),
                        Expanded(
                          flex: 5,
                          child: Container(
                            height: 130,
                            width: 150,
                            margin: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(0, 5.0),
                                    blurRadius: 2.0,
                                    color: colors[0][0],
                                  )
                                ],
                                color: colors[0][0],
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  flex: 2,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        child: Text(
                                          "John Doe",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        child: Text(
                                          "18:50",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                      '$SOMETEXT',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                })),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: (MediaQuery.of(context).size.width / 100) * 75,
                    height: (MediaQuery.of(context).size.height / 100) * 10,
                    color: Colors.transparent,
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: (MediaQuery.of(context).size.height / 100) * 3),
                      child: Text(
                        'TITLE',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
          ),
        ],
      ),
      body: new Container(
        child: Center(
          child: Text("Tap the Menu on Top Right"),
        ),
      ),
    );
  }
}
