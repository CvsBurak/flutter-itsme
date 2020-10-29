import 'package:flutter/material.dart';
import 'package:itsme/screens/cardetailscreen.dart';
import './screens/category_card_screen.dart';
import './screens/categoryscreen.dart';
import 'screens/cardetailscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'It\'s Me',
      theme: ThemeData(
        accentColor: Colors.amber,
        primarySwatch: Colors.pink,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'SourceCodePro',
        textTheme: ThemeData.light().textTheme.copyWith(
            body1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
            body2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
            title: TextStyle(
                fontFamily: 'SourceCodePro',
                fontSize: 18,
                fontWeight: FontWeight.bold)),
      ),
      //home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => CategoriesScreen(),
        CategoryCardScreen.routeName: (ctx) => CategoryCardScreen(),
        CardDetailScreen.routeName: (ctx) => CardDetailScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('It\s Me'),
      ),
      backgroundColor: Colors.red,
      body: SafeArea(
          child: Column(
        children: <Widget>[
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('images/ache.JPG'),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Acheli White',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Text(
            'Software Developer',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1.3),
          ),
          SizedBox(
            width: 150,
            height: 20,
            child: Divider(
              color: Colors.white,
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.phone_iphone,
                    color: Colors.red.shade300,
                    size: 25,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '+90 545 801 0808',
                    style: TextStyle(fontSize: 15, color: Colors.red.shade300),
                  )
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.mail,
                    color: Colors.red.shade300,
                    size: 25,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'burak.cavusoglu@huawei.com',
                    style: TextStyle(fontSize: 15, color: Colors.red.shade300),
                  )
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
