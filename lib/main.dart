import 'package:flutter_web/material.dart';

void main() => runApp(MyApp());

var primaryColor = Color(0xFF2A93D5);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryColor,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: <Widget>[
            _buildMainBackground(mediaQuery),
            _buildHeader(mediaQuery),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(MediaQueryData mediaQuery) {
    return Padding(
      padding: const EdgeInsets.only(left: 48.0, top: 48.0, right: 48.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: mediaQuery.size.width / 8,
            child: Text(
              'Duis',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 38.0),
            ),
          ),
          Container(
            width: mediaQuery.size.width / 9,
            child: SizedBox(
              height: 28.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Walking Holidays",
                    style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      fontFamily: "sans-serif",
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Container(
                    width: 24.0,
                    height: 2.0,
                    color: primaryColor,
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: mediaQuery.size.width / 9,
            child: SizedBox(
              height: 28.0,
              child: Text(
                "Cycling Holidays",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontFamily: "sans-serif",
                ),
              ),
            ),
          ),
          Container(
            width: mediaQuery.size.width / 9,
            child: SizedBox(
              height: 28.0,
              child: Text(
                "Camino Tours",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontFamily: "sans-serif",
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: "sans-serif",
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 48.0),
                Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMainBackground(MediaQueryData mediaQuery) {
    return Positioned(
      top: -200.0,
      right: -190.0,
      child: Container(
        width: mediaQuery.size.height + 100,
        height: mediaQuery.size.height + 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: NetworkImage("assets/img_traveling.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
