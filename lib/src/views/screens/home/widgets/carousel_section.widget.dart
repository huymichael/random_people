import 'package:flutter/material.dart';
import 'package:random_people/src/shared/widget/profile_card.widget.dart';

class CarouselSection extends StatefulWidget {
  @override
  _CarouselSectionState createState() => _CarouselSectionState();
}

class _CarouselSectionState extends State<CarouselSection> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ProfileCard(
          cardColor: Colors.teal,
        ),
      ],
    );
  }
}
