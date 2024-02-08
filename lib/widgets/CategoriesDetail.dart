import 'package:flutter/material.dart';

class CategoriesDetail extends StatefulWidget {
  var index;
  CategoriesDetail({super.key, this.index});

  @override
  State<CategoriesDetail> createState() => _CategoriesDetailState();
}

class _CategoriesDetailState extends State<CategoriesDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 20, 20),
      body: Stack(children: [
        CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              toolbarHeight: 40,
              //title: Text("Siyah Üzümlü Pankek ${widget.index}"),
              leading: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const CircleAvatar(
                    radius: 5.0,
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                      size: 20,
                    )),
              ),
              expandedHeight: 250,
              floating: true,
              flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                "assets/images/backhaus-kahvalti-tabagi.jpg",
                fit: BoxFit.fill,
              )),
            ),
          ],
        ),
        Positioned.fill(
            top: 230,
            left: -4,
            right: -4,
            child: Card(
              color: const Color.fromARGB(255, 20, 20, 20),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      topLeft: Radius.circular(25))),
              clipBehavior: Clip.antiAlias,
              semanticContainer: true,
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.cake, color: Colors.red),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Pancakes",
                            style:
                                TextStyle(color: Colors.white, fontSize: 17)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.orangeAccent,
                              size: 18,
                            ),
                            Text("4.9",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15)),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Wrap(
                      //alignment: WrapAlignment.start,
                      //spacing: 20.0,
                      //runSpacing: 20.0,
                      children: [
                        Text("Siyah Üzümlü Pankek ${widget.index}",
                            style:
                                const TextStyle(color: Colors.white, fontSize: 20)),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Wrap(children: [
                      Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's standard dummy",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Card(
                             shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                            color: Colors.red,
                            child: Container(
                              width: 70,
                              padding: const EdgeInsets.all(15),
                              child: Column(children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                  color: Colors.orange[300],
                                  child: const Icon(Icons.bar_chart_outlined,color: Colors.white,),
                                ),
                                const Text("Easy"),
                              ]),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Card(
                            shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                            color: Colors.red,
                            child: Container(
                              width: 70,
                              padding: const EdgeInsets.all(15),
                              child: Column(children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                  color: Colors.orange[300],
                                  child: const Icon(Icons.access_alarm,color: Colors.white,),
                                ),
                                const Text("30Dk"),
                              ]),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Card(
                            shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                            color: Colors.red,
                            child: Container(
                              width: 85,
                              padding: const EdgeInsets.all(15),
                              child: Column(children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                    color: Colors.orange[300],
                                    child: const Icon(Icons.whatshot_outlined,color: Colors.white,)),
                                const Text("239 kcal"),
                              ]),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Card(
                            shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                            color: Colors.red,
                            child: Container(
                              width: 70,
                              padding: const EdgeInsets.all(15),
                              child: Column(children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                  color: Colors.orange[300],
                                  child: const Icon(Icons.wine_bar_rounded,color: Colors.white,),
                                ),
                                const Text("Tatlı"),
                              ]),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ))
      ]),
    );
  }
}
