import 'package:flutter/material.dart';

import '../widgets/home_meeting_button.dart';

class MeetingScreen extends StatelessWidget {
  const MeetingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
