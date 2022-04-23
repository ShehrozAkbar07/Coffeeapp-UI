import 'package:flutter/material.dart';

class Coffee extends StatelessWidget {
  const Coffee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 15, top: 25),
        child: Row(
          children: [
            const Text(
              'Cappuccino',
              style: TextStyle(
                  color: Color(0xffC97B43),
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              width: 15,
            ),
            Text2('Americano'),
            const SizedBox(
              width: 15,
            ),
            Text2('Espresso'),
            const SizedBox(
              width: 15,
            ),
            Text2('Doppio'),
            const SizedBox(
              width: 15,
            ),
            Text2('Macchiato'),
            const SizedBox(
              width: 15,
            ),
            Text2('Red Eye'),
            const SizedBox(
              width: 15,
            ),
            Text2('Galao'),
            const SizedBox(
              width: 15,
            ),
            Text2('Lungo'),
            const SizedBox(
              width: 15,
            ),
            Text2('Cortado'),
            const SizedBox(
              width: 5,
            ),
          ],
        ),
      ),
    ));
  }
}

Widget Text2(String coffee) {
  return Text(
    coffee,
    style: const TextStyle(
        color: Color(0xff5F6265), fontSize: 15, fontWeight: FontWeight.w500),
  );
}
