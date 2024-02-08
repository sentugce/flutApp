import 'package:flutapp/UserDashboard.dart';
import 'package:flutapp/widgets/CategoriesDetailList.dart';
import 'package:flutapp/widgets/Favorites.dart';
import 'package:flutapp/widgets/Recipe.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: HomePageBottomTabBar(), debugShowCheckedModeBanner: false);
  }
}

class HomePageBottomTabBar extends StatefulWidget {
  const HomePageBottomTabBar({
    super.key,
  });

  @override
  State<HomePageBottomTabBar> createState() => _HomePageBottomTabBarState();
}

class _HomePageBottomTabBarState extends State<HomePageBottomTabBar>
    with SingleTickerProviderStateMixin {
  var tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        floatingActionButton: SizedBox(
          height: 60.0,
          width: 60.0,
          child: FittedBox(
            child: FloatingActionButton(
              onPressed: () {},
              child: const Icon(
                Icons.add_shopping_cart_outlined,
                color: Colors.white,
              ),
              // elevation: 5.0,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        backgroundColor: const Color.fromARGB(255, 20, 20, 20),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 20, 20, 20),
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          title: const Center(
              child: Text("flutapp", style: TextStyle(color: Colors.redAccent))),
          bottom: HomePageTabBar(),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
          ],
        ),
        body: TabBarView(controller: tabController, children: [
          Container(child: const UserDashboard()),
          Container(
            child: const Recipe(),
          )
        ]),
        bottomNavigationBar: const HomePageBottomNavigationBar(),
      ),
    );
  }

  TabBar HomePageTabBar() {
    return TabBar(
      controller: tabController,
      tabs: const [Tab(text: "Sipariş"), Tab(text: "Tarif")],
    );
  }
}

class HomePageBottomNavigationBar extends StatefulWidget {
  const HomePageBottomNavigationBar({
    super.key,
  });

  @override
  State<HomePageBottomNavigationBar> createState() =>
      _HomePageBottomNavigationBarState();
}

class _HomePageBottomNavigationBarState
    extends State<HomePageBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(30.0),
        topRight: Radius.circular(30.0),
      ),
      child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          color: Colors.red,
          child: SizedBox(
            height: 75,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  iconSize: 30.0,
                  color: Colors.white,
                  padding: const EdgeInsets.only(left: 25.0),
                  icon: const Icon(Icons.home),
                  onPressed: () {},
                ),
                IconButton(
                  iconSize: 30.0,
                  color: Colors.white,
                  padding: const EdgeInsets.only(right: 25.0),
                  icon: const Icon(Icons.heart_broken_outlined),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (ancientWorldContext) => Favorites()));
                  },
                ),
                IconButton(
                  iconSize: 30.0,
                  color: Colors.white,
                  padding: const EdgeInsets.only(left: 25.0),
                  icon: const Icon(Icons.search_off_outlined),
                  onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (ancientWorldContext) => CategoriesDetailList()));
                  },
                ),
                IconButton(
                  iconSize: 30.0,
                  color: Colors.white,
                  padding: const EdgeInsets.only(right: 25.0),
                  icon: const Icon(Icons.person_outline_sharp),
                  onPressed: () {},
                )
              ],
            ),
          )),
    );
  }
}
