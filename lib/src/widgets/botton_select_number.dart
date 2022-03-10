import 'package:flutter/material.dart';

class BottomSelectNumber extends StatefulWidget {
  const BottomSelectNumber({Key? key}) : super(key: key);

  @override
  _BottomSelectNumberState createState() => _BottomSelectNumberState();
}

class _BottomSelectNumberState extends State<BottomSelectNumber> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 8,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // menos :
          GestureDetector(
            onTap: () {
              setState(() {
                if (count == 0) {
                  count = 0;
                } else {
                  count--;
                }
              });
            },
            child: Container(
              alignment: Alignment.center,
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey.shade300),
              child: const Text('-', style: TextStyle(fontSize: 18)),
            ),
          ),
          // numero :
          Text('$count', style: const TextStyle(fontSize: 18)),
          // mas :
          GestureDetector(
            onTap: () {
              setState(() {
                count++;
              });
            },
            child: Container(
              alignment: Alignment.center,
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey.shade300),
              child: const Text('+', style: TextStyle(fontSize: 18)),
            ),
          ),
        ],
      ),
    );
  }
}