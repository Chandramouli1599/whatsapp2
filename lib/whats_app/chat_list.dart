import 'package:flutter/material.dart';
import 'package:whats_app/whats_app/ststus_screen.dart';

import 'calls_screen.dart';
import 'chat_widget.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(70),
            child: AppBar(
              backgroundColor: const Color(0xFF075E55),
              elevation: 20,
              title: const Text(
                'WhatsApp',
                style: TextStyle(fontSize: 20),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(top: 12, right: 15),
                  child: IconButton(
                    icon: const Icon(
                      Icons.search,
                      size: 25,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
                PopupMenuButton(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  iconSize: 28,
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: 1,
                      child: Text(
                        "New Group",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 2,
                      child: Text(
                        "New broadCast",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 3,
                      child: Text(
                        "Linked devices",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 4,
                      child: Text(
                        "Starred messages",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 5,
                      child: Text(
                        "Settings",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          body: Column(
            children: [
              Container(
                color: const Color(0xFF075E55),
                child: TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.white,
                  indicatorWeight: 4,
                  labelStyle: const TextStyle(fontSize: 16),
                  tabs: [
                    const SizedBox(
                      width: 24,
                      child: Tab(
                        icon: Icon(Icons.camera_alt),
                      ),
                    ),
                    SizedBox(
                      width: 90,
                      child: Tab(
                        child: Row(
                          children: [
                            const Text('CHATS'),
                            const SizedBox(
                              width: 8,
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 22,
                              width: 22,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Text(
                                '10',
                                style: TextStyle(
                                  color: Color(0xFF075E55),
                                  fontSize: 13,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 85,
                      child: Tab(
                        child: Text('STATUS'),
                      ),
                    ),
                    const SizedBox(
                      width: 85,
                      child: Tab(
                        child: Text('CALLS'),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(child: TabBarView(
                children: [
                  Container(color: Colors.white,),
                  const ChatWidget(),
                  const StatusScreen(),
                  const CallScreen(),

                ],
              ))
            ],
          )),
    );
  }
}
