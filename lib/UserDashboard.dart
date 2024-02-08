import 'package:flutapp/screen/SlideScreen.dart';
import 'package:flutapp/widgets/Categories.dart';
import 'package:flutapp/widgets/RestaurantsByLocation.dart';
import 'package:flutapp/widgets/Trends.dart';
import 'package:flutter/material.dart';

class UserDashboard extends StatelessWidget {
  const UserDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: <Widget>[
                Container(
                    height: 50,
                    padding: const EdgeInsets.all(10),
                    child: Categories()),
                Container(
                    height: 230,
                    padding: const EdgeInsets.all(10),
                    child: const StartScreen()),
                SizedBox(height: 400, child: Trends()),
                SizedBox(height: 200, child: RestaurantsByLocation()),
                /* Padding(padding: const EdgeInsets.only(top: 200), child: RestaurantsByLocation()), */
              ],
            ),
          ),
        ],
      ),
    );
  }
}
