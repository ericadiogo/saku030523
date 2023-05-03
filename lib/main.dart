import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    var stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.red[500],),
        Icon(Icons.star, color: Colors.orange[500],),
        Icon(Icons.star, color: Colors.yellow[500],),
        Icon(Icons.star, color: Colors.green[500],),
        Icon(Icons.star, color: Colors.lightBlue[500],),
        Icon(Icons.star, color: Colors.blue[500],),
        Icon(Icons.star, color: Colors.deepPurple[500],),
      ],
    );

    final ratings = Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          stars,
          Text(' Rate this app', style: TextStyle(
                color: Colors.deepPurpleAccent,
                fontWeight: FontWeight.w800,
                letterSpacing: 0.5,
                fontSize: 20,
              ))
          ],
      ),
    );

    const descTextStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w800,
    fontFamily: 'Roboto',
    letterSpacing: 0.5,
    fontSize: 20,
    );

final iconList = DefaultTextStyle(
    style: descTextStyle,
     child: Container(
       padding: EdgeInsets.all(20),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
           Column(
             children: [
               Icon(Icons.kitchen, color: Colors.green[500],),
               Text('Prep'),
               Text('25 min'),
             ],
           ),
         Column(
           children: [
           Icon(Icons.kitchen, color: Colors.green[500],),
           Text('Cook'),
           Text('1 hour'),
           ],
         ),
        Column(
          children: [
          Icon(Icons.kitchen, color: Colors.green[500],),
          Text('Portions'),
          Text('4-6'),
        ],
      )

    ]
       ),
     ));

final leftColumn = Container(
  child: Column(
    children: [
      Text('Strawberry Pavlova'),
      Text('Description'),
      ratings,
      iconList,
    ]
  )
);

return MaterialApp(
      title: 'Demo Page',
      home: Scaffold(
        appBar: AppBar(
          title: Text('One Piece!'),
        ),
      body:
          Center(
            child: Container(
              margin: EdgeInsets.fromLTRB(0,40, 0, 30),
              height: 600,
              child: Card(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 200,
                      child: leftColumn,
                    ),
                    SizedBox(
                      width: 200,
                      child: Image.asset('assets/606284.jpg'),
                    )
                  ],
                ),
              ),
            )
          )
      )
    );
  }
}
