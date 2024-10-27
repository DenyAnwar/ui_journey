import 'package:flutter/material.dart';

class ScrollingToolTipsWidget extends StatefulWidget {
  const ScrollingToolTipsWidget({super.key});

  @override
  State<ScrollingToolTipsWidget> createState() =>
      _ScrollingToolTipsWidgetState();
}

class _ScrollingToolTipsWidgetState extends State<ScrollingToolTipsWidget> {
  int selectedIndex = 0;

  final List<String> categories = [
    'Semua',
    'Alam',
    'Pegunungan',
    'Pantai',
    'Perkotaan',
    'Pedesaan',
    'Gurun',
    'Hutan',
    'Kepulauan',
    'Danau',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 25),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                decoration: BoxDecoration(
                  // Jika item ditekan, maka warnanya menjadi hitam.
                  // Jika tidak maka akan menjadi transparan.
                  color: selectedIndex == index
                      ? Colors.black
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                    // Jika item ditekan, maka bordernya menjadi transparan.
                    // Jika tidak maka akan berwarna abu-abu dengan opacity 7.
                    color: selectedIndex == index
                        ? Colors.transparent
                        : Colors.grey.withOpacity(.7),
                    width: 1,
                  ),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 28),
                alignment: Alignment.center,
                child: Text(
                  // Mengambil teks dari list "categories".
                  categories[index],
                  style: TextStyle(
                    fontSize: 16,
                    // Jika item ditekan, maka ketebalan huruf menjadi 400.
                    // Jika tidak maka ketebalan huruf menjadi 300.
                    fontWeight: selectedIndex == index
                        ? FontWeight.w400
                        : FontWeight.w300,
                    // Jika item ditekan, maka warna huruf menjadi putih.
                    // Jika tidak maka warna huruf menjadi hitam.
                    color: selectedIndex == index ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
