import 'package:flutter/material.dart';

class RestaurantsByLocation extends StatelessWidget {
  RestaurantsByLocation({super.key});

  List<Category> allCategory = List.generate(
    10,
    (index) => Category(index + 1, "Restoran Adı ${index + 1}"),
  );

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            var newAnt = allCategory[index];
            return Container(
              margin:
                  const EdgeInsets.only(bottom: 35, left: 10, right: 0, top: 0),
              padding: const EdgeInsets.all(2),
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(children: [
                  Expanded(
                      child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15)
                    ),
                    child: Image.asset(
                      "assets/images/pide.jpeg",
                    ),
                  )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        newAnt.title.toString(),
                        textAlign: TextAlign.left,
                        style: const TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      Icon(Icons.star, color: Colors.yellow.shade800),
                    ],
                  ),
                  /*              Expanded(
                     child: Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.grey,textStyle: TextStyle(fontSize: 12)),
                          onPressed: () {},
                          child: const Text('Fast Food'),
                        ),
                         ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.grey,),
                          onPressed: () {},
                          child: const Text('Izgara'),
                        ),
                         ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.grey,),
                          onPressed: () {},
                          child: const Text('Lahmacun'),
                        ),
                      ],
                                     ),
                   ), */
                ]),
              ),
            );
          },
          itemCount: allCategory.length,
        ),
      ],
    );
  }
}

class Category {
  final int id;
  final String title;

  Category(this.id, this.title);

  @override
  String toString() {
    return "$title, $id";
  }
}
