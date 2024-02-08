import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  Categories({super.key});

  List<Category> allCategory = List.generate(
    10,
    (index) => Category(index + 1, "Kategori Adı ${index + 1}"),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         const Text("dfsdfsdf",style:TextStyle(color:Colors.white)),
       
        Expanded(
          flex: 1,
          child: PageView(
              children: <Widget>[
                ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    var newAnt = allCategory[index];
                    return Container(
                      width: 160,
                      height: 30,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      child:
                          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                        ElevatedButton.icon(
                          icon: const Icon(Icons.cake,color: Colors.orange),
                          label: Text(newAnt.title.toString()),
                          onPressed: () => print("it's pressed"),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black, backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        )
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
