import 'package:flutter/material.dart';
import 'package:shuttle/features/select_location/presentation/widgets/info_card.dart';

// our data
const phone = "0123456789";
const email = "testing@test.com";

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('SProfile'),
        ),
        body: SafeArea(
          minimum: const EdgeInsets.only(top: 100),
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('lib/icons/profile.png'),
                backgroundColor: Colors.green.shade100,
              ),
              Text(
                "POLIUMS",
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
                width: 200,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              InfoCard(text: phone, icon: Icons.phone),
              InfoCard(
                text: email,
                icon: Icons.email,
              ),
            ],
          ),
        ));
  }
}
