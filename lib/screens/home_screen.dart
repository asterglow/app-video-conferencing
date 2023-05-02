import 'package:app_video_conferencing/utils/colours.dart';
import 'package:app_video_conferencing/widgets/home_meeting_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Meet & Chat'),
        centerTitle: true,
        backgroundColor: backgroundColor,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HomemeetingButton(
                onPressed: () {},
                icon: Icons.videocam,
                text: 'New Meeting',
              ),
              HomemeetingButton(
                onPressed: () {},
                icon: Icons.add_box_rounded,
                text: 'Join Meeting',
              ),
              HomemeetingButton(
                onPressed: () {},
                icon: Icons.calendar_today,
                text: '   Schedule   ',
              ),
              HomemeetingButton(
                onPressed: () {},
                icon: Icons.arrow_circle_up,
                text: 'Share Screen',
              ),
            ],
          ),
          const Expanded(child: Center(child: Text('Create/Join Meetings with just a click'),))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: footerColor,
        onTap: onPageChanged,
        currentIndex: _page,
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 16,
        selectedFontSize: 16,
        iconSize: 30,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.comment_bank),
            label: 'Meet & Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lock_clock),
            label: 'Meetings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
