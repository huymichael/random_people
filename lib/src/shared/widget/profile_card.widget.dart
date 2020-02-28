import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:random_people/src/shared/widget/widget_spacer.widget.dart';
import 'package:random_people/src/views/screens/home/widgets/address.widget.dart';
import 'package:random_people/src/views/screens/home/widgets/lock.widget.dart';
import 'package:random_people/src/views/screens/home/widgets/people_info.widget.dart';
import 'package:random_people/src/views/screens/home/widgets/phone.widget.dart';

class ProfileCard extends StatefulWidget {
  ProfileCard({this.cardColor});

  final Color cardColor;

  @override
  _ProfileCardState createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _avatarSection(),
          WidgetSpacer(height: 70.0),
          _contentSection(),
          WidgetSpacer(height: 20.0),
          _bottomButton()
        ],
      ),
    );
  }

  Widget _avatarSection() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
      ),
      height: 120.0,
      child: Stack(
        alignment: Alignment.topCenter,
        overflow: Overflow.visible,
        children: <Widget>[
          Positioned.fill(
            bottom: -55.0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
                child: CircleAvatar(
                  radius: 60.0,
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    'assets/images/avatar.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _contentSection() {
    return Container(
      constraints: BoxConstraints(minHeight: 50),
      child: IndexedStack(
        index: _index,
        children: <Widget>[
          Info(),
          Address(),
          Phone(),
          Lock(),
        ],
      ),
    );
  }

  Widget _bottomButton() {
    return Container(
      padding: EdgeInsets.only(bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            color: _index == 0 ? Colors.teal : Colors.grey,
            onPressed: () {
              setState(() {
                _index = 0;
              });
            },
            icon: Icon(Icons.person),
          ),
          IconButton(
            color: _index == 1 ? Colors.teal : Colors.grey,
            icon: Icon(Icons.location_on),
            onPressed: () {
              setState(() {
                _index = 1;
              });
            },
          ),
          IconButton(
            icon: Icon(Icons.phone_android),
            color: _index == 2 ? Colors.teal : Colors.grey,
            onPressed: () {
              setState(() {
                _index = 2;
              });
            },
          ),
          IconButton(
            icon: Icon(Icons.lock),
            color: _index == 3 ? Colors.teal : Colors.grey,
            onPressed: () {
              setState(() {
                _index = 3;
              });
            },
          ),
        ],
      ),
    );
  }
}
