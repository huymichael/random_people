import 'package:flutter/material.dart';
import 'package:random_people/src/views/screens/home/widgets/carousel_section.widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            CarouselSection(),
          ],
        ),
      ),
    );
  }
}
