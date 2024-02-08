import 'package:flutapp/widgets/CategoriesDetail.dart';
import 'package:flutter/material.dart';

class CategoriesDetailList extends StatelessWidget {
  CategoriesDetailList({super.key});
  List<String> breakfastCategory = ["Popüler", "En Son", "Vegan", "Hızlı"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 20, 20),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      TextButton.icon(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                          label: const Text("")),
                      const SizedBox(height: 40),
                      const Text("Kahvaltı",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                      const SizedBox(height: 10),
                      const Text("17 Tarif",
                          style: TextStyle(fontSize: 12, color: Colors.grey))
                    ],
                  ),
                ),
                const SizedBox(width: 100),
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(25),
                        bottomLeft: Radius.circular(25)),
                    child: Image.asset(
                      "assets/images/5c8dc06a45d2a09e009e9386.jpg",
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: breakfastCategory
                  .map((item) => ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black, backgroundColor: Colors.white,
                        minimumSize: const Size(30, 30),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.only(right: 10, left: 10),
                      ),
                      onPressed: () {},
                      child: Text(item)))
                  .toList()),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 200,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  CategoriesDetail(index: index)));
                    },
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      semanticContainer: true,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      margin: const EdgeInsets.all(10),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/backhaus-kahvalti-tabagi.jpg"),
                              fit: BoxFit.cover),
                        ),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Container(
                              width: 400,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.topCenter,
                                  colors: [
                                    //Colors.black,
                                    Colors.black.withOpacity(1),
                                    Colors.black.withOpacity(0.9),
                                    Colors.black.withOpacity(0.6),
                                    Colors.black.withOpacity(0.1),
                                  ],
                                  stops: const [0.10, 0.45, 0.80, 0.90],
                                ),
                              ),
                              child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                    padding:
                                        const EdgeInsets.only(top: 15, left: 160),
                                    child: Column(
                                      children: [
                                        Text("Siyah Üzümlü\nPankek $index",
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 20)),
                                        const SizedBox(height: 15),
                                        Container(
                                          padding: const EdgeInsets.only(
                                              left: 60, bottom: 5),
                                          child: const Row(
                                            children: [
                                              Icon(Icons.cake,
                                                  color: Colors.white,
                                                  size: 18),
                                                  SizedBox(width: 5),
                                              Text("Pankaces",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 13))
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.only(
                                              left: 60, bottom: 5),
                                          child: const Row(
                                            children: [
                                              Icon(Icons.lock_clock,
                                                  color: Colors.white,
                                                  size: 18),
                                                   SizedBox(width: 5),
                                              Text("30 Dakika",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 13))
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.only(
                                              left: 60, bottom: 5),
                                          child: const Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.white,
                                                size: 18,
                                              ),
                                               SizedBox(width: 5),
                                              Text("4.9",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 13))
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.all(7),
                                          child: const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Icon(
                                                Icons.heart_broken,
                                                color: Colors.white,
                                                size: 15,
                                              ),
                                              Text("4.9",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 13))
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ))),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
