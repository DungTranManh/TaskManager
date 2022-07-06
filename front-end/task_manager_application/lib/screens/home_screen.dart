import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        color: Colors.yellow,
        home: DefaultTabController(
          child: Scaffold(
            body: TabBarView(
              children: [
                Container(
                  color: Colors.yellow,
                ),
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.blue,
                ),
              ],
            ),
            appBar: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(
                  icon: Icon(
                    Icons.rss_feed,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.perm_identity,
                  ),
                ),
              ],
              labelColor: Colors.yellow,
              unselectedLabelColor: Colors.blue,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding: EdgeInsets.all(7.0),
              indicatorColor: Colors.red,
            ),
            backgroundColor: Colors.black,
          ),
          length: 3,
        ),
      ),
    );
  }
}
