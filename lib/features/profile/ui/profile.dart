import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 50),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Hello, user.username',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        MaterialButton(
            onPressed: () {},
            child: const Row(
              children: [
                Text('Logout', style: TextStyle(fontSize: 16)),
                Spacer(),
                Icon(Icons.logout),
              ],
            )),
      ],
    ));
  }
}
