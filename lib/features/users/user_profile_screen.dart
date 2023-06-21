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
    return DefaultTabController(
      length: 2,
      child: CustomScrollView(
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
                ),
                Gaps.v14,
                FractionallySizedBox(
                  widthFactor: 0.33,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: Sizes.size12,
                    ),
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(Sizes.size4),
                        )),
                    child: const Text(
                      "Follow",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Gaps.v14,
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: Sizes.size32,
                  ),
                  child: Text(
                    "All highlights and where to watch live matches on FIFA + I wonder how it would look.",
                    textAlign: TextAlign.center,
                  ),
                ),
                Gaps.v14,
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.link,
                      size: Sizes.size12,
                    ),
                    Gaps.h4,
                    Text(
                      "https://google.com",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Gaps.v20,
                Container(
                  decoration: BoxDecoration(
                    border: Border.symmetric(
                      horizontal:
                          BorderSide(color: Colors.grey.shade300, width: 1),
                    ),
                  ),
                  child: const TabBar(
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: Colors.black,
                    labelPadding: EdgeInsets.symmetric(
                      vertical: Sizes.size10,
                    ),
                    labelColor: Colors.black,
                    tabs: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: Sizes.size20,
                        ),
                        child: Icon(Icons.grid_4x4_rounded),
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: Sizes.size20,
                          ),
                          child: FaIcon(FontAwesomeIcons.heart)),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: TabBarView(children: [
                    GridView.builder(
                      keyboardDismissBehavior:
                          ScrollViewKeyboardDismissBehavior.onDrag,
                      itemCount: 10,
                      padding: const EdgeInsets.all(
                        Sizes.size6,
                      ),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: Sizes.size10,
                        mainAxisSpacing: Sizes.size10,
                        childAspectRatio: 9 / 20,
                      ),
                      itemBuilder: (context, index) => Column(
                        children: [
                          Container(
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                Sizes.size4,
                              ),
                            ),
                            child: AspectRatio(
                              aspectRatio: 9 / 16,
                              child: FadeInImage.assetNetwork(
                                fit: BoxFit.cover,
                                placeholder: "assets/images/placeholder.jpg",
                                image:
                                    "https://images.unsplash.com/photo-1685468413971-eb5a98d01f34?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80",
                              ),
                            ),
                          ),
                          Gaps.v10,
                          const Text(
                            "This is a very long caption for my tiktok that i'm upload just now currently",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: Sizes.size16 + Sizes.size2,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Gaps.v8,
                          DefaultTextStyle(
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.w600,
                            ),
                            child: Row(
                              children: [
                                const CircleAvatar(
                                  radius: 12,
                                  backgroundImage: NetworkImage(
                                    "https://avatars.githubusercontent.com/u/86827200?v=4",
                                  ),
                                ),
                                Gaps.h4,
                                const Expanded(
                                  child: Text(
                                    "My avatar is going to be very long",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                ),
                                Gaps.h4,
                                FaIcon(
                                  FontAwesomeIcons.heart,
                                  size: Sizes.size16,
                                  color: Colors.grey.shade600,
                                ),
                                Gaps.h2,
                                const Text(
                                  "1.2k",
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const Center(child: Text("Page two"))
                  ]),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
