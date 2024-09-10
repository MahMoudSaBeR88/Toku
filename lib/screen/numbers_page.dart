import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/items.dart';
import '../models/number.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<Number> numbers = const [
    Number(
        image: 'assets/images/numbers/number_one.png',
        jpName: 'ichi',
        enName: 'One',
        sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    Number(
        image: 'assets/images/numbers/number_two.png',
        jpName: 'Ni',
        enName: 'Two',
        sound: 'sounds/numbers/number_two_sound.mp3',
    ),
    Number(
        image: 'assets/images/numbers/number_three.png',
        jpName: 'San',
        enName: 'Three',
      sound: 'sounds/numbers/number_three_sound.mp3',
    ),
    Number(
        image: 'assets/images/numbers/number_four.png',
        jpName: 'Shi',
        enName: 'Four',
      sound: 'sounds/numbers/number_four_sound.mp3',
    ),
    Number(
        image: 'assets/images/numbers/number_five.png',
        jpName: 'Go',
        enName: 'Five',
      sound: 'sounds/numbers/number_five_sound.mp3',
    ),
    Number(
        image: 'assets/images/numbers/number_six.png',
        jpName: 'Roku',
        enName: 'Six',
      sound: 'sounds/numbers/number_six_sound.mp3',
    ),
    Number(
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'Sebun',
        enName: 'Seven',
      sound: 'sounds/numbers/number_seven_sound.mp3',
    ),
    Number(
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'Hashi',
        enName: 'Eight',
      sound: 'sounds/numbers/number_eight_sound.mp3',
    ),
    Number(
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'ichi',
        enName: 'Nine',
      sound: 'sounds/numbers/number_nine_sound.mp3',
    ),
    Number(
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'ichi',
        enName: 'Ten',
      sound: 'sounds/numbers/number_ten_sound.mp3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Numbers',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff45322B),
        iconTheme: const IconThemeData(
          color: Colors.white, //change your color here
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) => item(number: numbers[index]),
        // children:
        //   getList(numbers),
      ),
    );
  }

  List<Widget> getList(List<Number> numbers) {
    List<Widget> itemList = [];
    for (int i = 0; i < numbers.length; i++) {
      itemList.add(
        item(number: numbers[i]),
      );
    }
    return itemList;
  }
}
