import 'package:demo_app/ui/widgets/primary_button.dart';
import 'package:flutter/material.dart';

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
            PrimaryButton(text: 'CHAT', onPressed: chat()),
            const SizedBox(height: 15.0),
            PrimaryButton(text: 'VÍDEO CHAT', onPressed: chat()),
            const SizedBox(height: 15.0),
            PrimaryButton(text: 'AGENDAR CITA', onPressed: chat())
          ],
        ),
      ),
    );
  }


  chat() {
    print("CHAT!");
  }

  videoChat() {
    print("VÍDEO CHAT!");
  }

  agendarCita() {
    print("AGENDAR CITA!");
  }

}