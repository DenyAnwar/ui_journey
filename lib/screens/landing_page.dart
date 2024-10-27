import 'package:flutter/material.dart';
import 'package:ui_journey/screens/home_page.dart';
import 'package:ui_journey/utilities/colors.dart';
import 'package:ui_journey/widgets/confirm_button_widget.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: JourneyColors.white,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Column(
          children: [
            Expanded(
              flex: 62,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(45),
                  bottomRight: Radius.circular(45),
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    'assets/scenary/scenary1.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 38,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Perjalanan Menuju Kedamian',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    const Text(
                      'Temukan kedamaian di tengah pelukan alam di dalam perjalanan anda.',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ),
                          );
                        },
                        child: const ConfirmButton(
                          actionName: 'Ayo Mulai Perjalanan',
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
