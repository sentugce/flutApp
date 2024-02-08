import 'package:flutter/material.dart';

class Favorites extends StatelessWidget {
  Favorites({super.key});
  List<String> restaurant = [
    "restaurant 1",
    "restaurant 2",
    "restaurant 3",
    "restaurant 3"
  ];
  List<String> listData = List.generate(4, (index) => '$index');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 20, 20),
      appBar: AppBar(
        title: const Text("Favoriler"),
        backgroundColor: const Color.fromARGB(255, 20, 20, 20),
      ),
      body: GridView.builder(
        itemCount: 4,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            alignment: Alignment.bottomCenter,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15)),
              image: DecorationImage(
                  image: AssetImage("assets/images/görsel_restoran.jpg"),
                  fit: BoxFit.contain,
                  alignment: Alignment.topRight),
            ),
            margin: const EdgeInsets.all(18),
            child: Padding(
              padding: const EdgeInsets.only(top: 110),
              child: Column(
                children: [
                  Text("Restoran $index",
                      textAlign: TextAlign.end,
                      style: const TextStyle(fontSize: 15, color: Colors.black)),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.yellow.shade800),
                            const Text("4.5/5"),
                          ],
                        ),
                        const Row(
                          children: [
                            Icon(Icons.lock_clock,color:Colors.red),
                            Text("35 dk"),
                          ],
                        )
                        ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );

    /*     Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          //mainAxisAlignment: MainAxisAlignment.center,
          children: restaurant
              .map((item) => 
                     Column(
                       children: [
                         Container(
                          margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                            height: 50,
                           // width: 100,
                            padding: const EdgeInsets.all(8),
                           // margin: const EdgeInsets.all(2),
                            child: Card(child: Text(item))
                            ),
                       ],
                     ),
                        
                  )
              .toList(),
        ); */
  }
}
