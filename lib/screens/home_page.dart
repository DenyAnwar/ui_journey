import 'package:flutter/material.dart';
import 'package:ui_journey/utilities/colors.dart';
import 'package:ui_journey/widgets/destination_list_widget.dart';
import 'package:ui_journey/widgets/header_widget.dart';
import 'package:ui_journey/widgets/navigation_bar_widget.dart';
import 'package:ui_journey/widgets/scrolling_tool_tips_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: JourneyColors.white,
      body: Stack(
        children: [
          Positioned.fill(
            child: ListView(
              padding: const EdgeInsets.only(bottom: 100),
              children: [
                const SizedBox(height: 70),
                const HeaderWidget(),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: RichText(
                    text: const TextSpan(
                      text: 'Selamat Datang, ',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: 'Deny',
                          style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    'Kemana pikiranmu mengembara ?',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const ScrollingToolTipsWidget(),
                const SizedBox(height: 20),
                const DestinationListWidget(shiftIndex: 0),
                const SizedBox(height: 15),
                const DestinationListWidget(shiftIndex: 5),
                const SizedBox(height: 15),
                const DestinationListWidget(shiftIndex: 9),
              ],
            ),
          ),
          const NavigationBarWidget(),
        ],
      ),
    );
  }
}
