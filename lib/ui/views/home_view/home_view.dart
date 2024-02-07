import 'package:flutter/material.dart';

import 'package:demo_app/ui/widgets/primary_button.dart';

import 'package:jitsi_meet_flutter_sdk/jitsi_meet_flutter_sdk.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            PrimaryButton(text: 'CHAT', onPressed: () => Navigator.pushNamed(context, 'chatbot')),
            const SizedBox(height: 15.0),
            PrimaryButton(text: 'VÍDEO CHAT', onPressed: () => videoChat(context)),
            const SizedBox(height: 15.0),
            PrimaryButton(text: 'AGENDAR CITA', onPressed: () => agendarCita())
          ],
        ),
      ),
    );
  }

  videoChat(BuildContext context) {

    // var options = JitsiMeetConferenceOptions(
    //   serverURL: "https://meet.jit.si",
    //   room: "jitsiIsAwesomeWithFlutter",
    //   configOverrides: {
    //     "startWithAudioMuted": false,
    //     "startWithVideoMuted": false,
    //     "subject" : "Jitsi with Flutter",
    //   },
    //   featureFlags: {
    //     "unsaferoomwarning.enabled": false
    //   },
    //   userInfo: JitsiMeetUserInfo(
    //       displayName: "Flutter user",
    //       email: "user@example.com"
    //   ),
    // );

    print("VÍDEO CHAT!");
    var name = "Stiven Gomez";
    var jitsiMeet = JitsiMeet();
    var options = JitsiMeetConferenceOptions(
      serverURL: "https://meet.jit.si/moderated/3c801580063eb8f32274a2c133d0a608c4cbebb6772e7e90b05b366486bd7acc",
      room: 'jitsiIsAwesome',
      configOverrides: {
        "startWithAudioMuted": true,
        "startWithVideoMuted": true,
        "subject" : "Conferencia con $name",
      },
      userInfo: JitsiMeetUserInfo(
        displayName: name,
        email: "stivenalexander7u7@gmail.com"
      ),
    );
    jitsiMeet.join(options);
  }

  agendarCita() {
    print("AGENDAR CITA!");
  }

}