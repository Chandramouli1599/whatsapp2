import 'package:flutter/material.dart';

class ChatWidget extends StatefulWidget {
  const ChatWidget({super.key});

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
          children: [
            for (int i = 1; i < 16; i++)
              InkWell(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: CircleAvatar(
                            backgroundColor: Colors.blue,
                            child: Image.asset(
                              'assets/images/profile$i.jpeg',
                              height: 65,
                              width: 65,
                              fit: BoxFit.cover,
                            )),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Chandramouli',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Hi Chandramouli\nhow are you i am fine what about you',
                              style: TextStyle(color: Colors.black38),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          const Text(
                            '12:15',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFF0FCE5E),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 27,
                            width: 27,
                            decoration: BoxDecoration(
                                color: const Color(0xFF0FCE5E),
                                borderRadius: BorderRadius.circular(20)),
                            child: const Text(
                              '2',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 16),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
