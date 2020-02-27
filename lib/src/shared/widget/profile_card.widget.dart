import 'package:flutter/material.dart';
import 'package:random_people/src/shared/widget/widget_spacer.widget.dart';

class ProfileCard extends StatelessWidget {
  ProfileCard({this.cardColor});

  final Color cardColor;

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
          BottomAppBar(
            color: Colors.transparent,
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _avatarSection() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        border: Border(bottom: BorderSide(color: Colors.grey)),
      ),
      height: 120.0,
//            color: Colors.amber,
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
      height: 300,
      color: Colors.teal,
    );
  }
}
