import 'package:flutter/material.dart';

class BusInfoCard extends StatelessWidget {
  // the values we need
  final String text;
  final String subtitle;
  final IconData icon;

  BusInfoCard({required this.text, required this.icon, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          leading: Icon(
            icon,
            color: Colors.teal,
          ),
          title: Text(
            text,
            style: TextStyle(
              color: Colors.teal,
              fontSize: 20,
            ),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(
              color: Colors.teal,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
