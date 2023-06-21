import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';
import 'package:tiktok_clone/features/users/widget/follow_count.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: const Text("JIN"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.gear,
                size: Sizes.size20,
              ),
            ),
          ],
        ),
        SliverToBoxAdapter(
            child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              foregroundColor: Colors.indigo,
              foregroundImage: NetworkImage(
                "https://avatars.githubusercontent.com/u/86827200?v=4",
              ),
              child: Text("JIN"),
            ),
            Gaps.v20,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "@JIN",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: Sizes.size18,
                  ),
                ),
                Gaps.h5,
                FaIcon(
                  FontAwesomeIcons.solidCircleCheck,
                  size: Sizes.size16,
                  color: Colors.cyan.shade200,
                ),
              ],
            ),
            Gaps.v24,
            SizedBox(
              height: Sizes.size44,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const FollowCount(count: "97", category: "Following"),
                  VerticalDivider(
                    width: Sizes.size32,
                    thickness: Sizes.size1,
                    color: Colors.grey.shade400,
                    indent: Sizes.size14,
                    endIndent: Sizes.size14,
                  ),
                  const FollowCount(count: "10M", category: "Followers"),
                  VerticalDivider(
                    width: Sizes.size32,
                    thickness: Sizes.size1,
                    color: Colors.grey.shade400,
                    indent: Sizes.size14,
                    endIndent: Sizes.size14,
                  ),
                  const FollowCount(count: "194.3M", category: "Likes"),
                ],
              ),
            )
          ],
        ))
      ],
    );
  }
}
