import 'package:flutter/material.dart';

class CoffeeCard extends StatelessWidget {
  List<String> images = [
    "images/Capture.PNG",
    "images/final2.png",
  ];

  List<String> CoffeeName = [
    'Americano Espresso',
    'Macchiato Lungo',
  ];

  List<String> ingredients = ["With Goat Milk", 'With Cinnamon Powder'];
  List<String> price = [
    "10.50",
    "8.50",
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color(0xff161c21),
                    borderRadius: BorderRadius.circular(15)),
                height: 140,
                width: MediaQuery.of(context).size.width,
                child: Row(children: [
                  Container(
                      height: 120,
                      width: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(images[index]),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(15))),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        CoffeeName[index],
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        ingredients[index],
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                 const      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                      const     Text(
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
                          SizedBox(
                            width: 60,
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
                          )
                        ],
                      )
                    ],
                  )
                ]),
              ),
              const SizedBox(
                height: 9,
              )
            ],
          );
        });
  }
}
