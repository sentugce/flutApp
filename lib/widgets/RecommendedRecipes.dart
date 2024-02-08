import 'package:flutter/material.dart';

class RecommendedRecipes extends StatelessWidget {
  RecommendedRecipes({super.key});
  List<Category> allCategory = List.generate(
    10,
    (index) => Category(index + 1, "Restoran Adı ${index + 1}"),
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 125,
          // margin: EdgeInsets.only(top: 20),
          margin: const EdgeInsets.symmetric(vertical: 20.0),
          child: PageView(
            children: <Widget>[
              ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  var newAnt = allCategory[index];
                  return  Container(
                      //color: Colors.white,
                      width: 230,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/images/makarna.jpg"),fit: BoxFit.cover),
                        color:Colors.white,borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                       child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              newAnt.title.toString(), textAlign: TextAlign.end,
                              style: const TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ]),
                    );
                },
                itemCount: allCategory.length,
              ),
            ],
          ),
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
