import 'package:flutter/material.dart';

class RecipeSildes extends StatelessWidget {
  RecipeSildes({super.key});
  List<Category> allCategory = List.generate(
    10,
    (index) => Category(index + 1, "Restoran Adı ${index + 1}"),
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
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
                      width: 340,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/images/makarna.jpg"),fit: BoxFit.cover),
                        color:Colors.white,borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                    /*   child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              newAnt.title.toString(),
                              style: TextStyle(fontSize: 30, color: Colors.black),
                            ),
                          ]), */
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
