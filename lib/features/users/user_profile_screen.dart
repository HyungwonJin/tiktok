import 'package:flutter/material.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: true,
          stretch: true,
          backgroundColor: Colors.teal,
          collapsedHeight: 80,
          expandedHeight: 200,
          flexibleSpace: FlexibleSpaceBar(
            stretchModes: [
              StretchMode.zoomBackground,
              StretchMode.blurBackground,
            ],
            title: Text('User Profile'),
            background: Image(
              image: AssetImage('assets/images/placeholder.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverFillRemaining(
          child: Center(
            child: Text('User Profile'),
          ),
        ),
      ],
    );
  }
}
