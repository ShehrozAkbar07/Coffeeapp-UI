import 'package:coffeeapp/coffeedetalil.dart';
import 'package:flutter/material.dart';

class List1 extends StatelessWidget {
  List<String> images = [
    "images/Capture.PNG",
    "images/final2.png",
  ];

  List<String> ingredients = ["With Goat Milk", 'With Cinnamon Powder'];
  List<String> price = [
    "10.50",
    "8.50",
  ];
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: images.length,
          itemBuilder: ((context, index) {
            return Row(
              children: [
                Container(
                  height: 250,
                  width: 160,
                  child: Column(children: [
                    const SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Detail()));
                      },
                      child: Container(
                        height: 135,
                        width: 140,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(images[index]),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Cappuccino',
                            style: TextStyle(color: Colors.white),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            ingredients[index],
                            style: const TextStyle(
                                color: Colors.grey, fontSize: 10),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              const Text(
                                "\$ ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Color(0xffC97B43)),
                              ),
                              Text(
                                price[index],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                              const SizedBox(
                                width: 28,
                              ),
                              Container(
                                height: 28,
                                width: 28,
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                decoration: BoxDecoration(
                                    color: Color(0xffC97B43),
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
                  decoration: BoxDecoration(
                      color: const Color(0xff161c21),
                      borderRadius: BorderRadius.circular(20)),
                ),
                const SizedBox(
                  width: 15,
                )
              ],
            );
          })),
    );
  }
}
