import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_protfolio/header/header_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zheer Barzan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PortfolioView(),
    );
  }
}

// this is the intial view of our website that we have used in our project
class PortfolioView extends StatelessWidget {
  const PortfolioView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //this code below measures the width and the hight of the screen or the web browser
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    //this code below prints the measurements of the screen
    print(width);
    //this scaffold makes the webpage scrollable by 2 containers
    //each container can hold the value of 100vh if you say height = height
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // changing the height and the width will not change the screen size or resultion instaed it shrinks the container that we have decleared
            //so we have this container
            HeaderView(),
            Container(height: height, width: width, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
