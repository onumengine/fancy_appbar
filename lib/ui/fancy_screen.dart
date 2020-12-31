import 'package:fancy_appbar/ui/searchbar.dart';
import 'package:fancy_appbar/ui/tab_screen.dart';
import 'package:flutter/material.dart';

class FancyScreen extends StatefulWidget {
  FancyScreenState createState() => FancyScreenState();
}

class FancyScreenState extends State<FancyScreen> {
  final String text = 'Direct';

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                pinned: true,
                iconTheme: IconThemeData(color: Colors.black),
                actionsIconTheme: IconThemeData(color: Colors.black),
                backgroundColor: Colors.white,
                automaticallyImplyLeading: true,
                title: Text(this.text,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    )),
                expandedHeight: 200.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: SearchBar(),
                    ),
                  ),
                ),
                actions: <IconButton>[
                  IconButton(
                    icon: Icon(Icons.ac_unit_rounded),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.account_box_rounded),
                    onPressed: () {},
                  ),
                ],
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(50.0),
                  child: Row(
                    children: <Widget>[
                      TabBar(
                        isScrollable: true,
                        labelColor: Colors.black,
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                        indicatorColor: Colors.black,
                        indicatorWeight: 1.0,
                        tabs: <Widget>[
                          Tab(
                            text: 'Primary',
                          ),
                          Tab(
                            text: 'General',
                          ),
                        ],
                      ),
                      Expanded(
                        child: SizedBox(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: Text(
                          '9+ requests',
                          style: TextStyle(color: Colors.blue, fontSize: 16.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverFillRemaining(
                child: TabBarView(
                  children: <Widget>[
                    TabScreen(),
                    TabScreen(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
