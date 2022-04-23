import 'package:coffeeapp/Special.dart';
import 'package:coffeeapp/categoires.dart';
import 'package:coffeeapp/list.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 60, left: 15, right: 15),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                'Find the best\ncoffee for you',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 12,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Search your coffee",
                    hintStyle:
                        const TextStyle(color: Color(0xff5F6265), fontSize: 17),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color(0xff5F6265),
                    ),
                    fillColor: const Color(0xff161c21),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(width: 2),
                    )),
              ),
              const Coffee(),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 250,
                child: List1(),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Special for you',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              CoffeeCard(),
            ]),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          selectedItemColor: Color(0xffC97B43),
          showSelectedLabels: false,
          unselectedItemColor: Color(0xff4d4f52),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ""),
          ],
        ));
  }
}

// Widget form(String name2) {
//   return TextField(
//       decoration: InputDecoration(
//     hintText: name2,
//     hintStyle: const TextStyle(color: Color.fromARGB(255, 114, 106, 106)),
//     enabledBorder: OutlineInputBorder(
//       borderRadius: BorderRadius.circular(8),
//       borderSide: const BorderSide(width: 2, color: Colors.grey),
//     ),
//     focusedBorder: const OutlineInputBorder(
//       borderSide: BorderSide(color: Colors.grey, width: 2),
//     ),
//   ));
// }


