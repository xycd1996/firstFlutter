import 'package:flutter/material.dart';

class TabBarRoute extends StatefulWidget {
  @override
  _TabBarRoute createState() => _TabBarRoute();
}

class _TabBarRoute extends State<TabBarRoute> with SingleTickerProviderStateMixin {
  int _currentIndex = 1;
  TabController _tabController;
  List tabs = ['新闻', '历史', '图片'];

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: tabs.length, vsync: this);
    // _tabController.addListener(() {
    //   switch (_tabController.index) {
    //     case 1:

    //     default:
    //   }
    // })
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text("App Name"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: null,
          )
        ],
        leading: new Builder(builder: (context) {
          return new IconButton(
              icon: Icon(
                Icons.dashboard,
                color: Colors.black,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              });
        }),
        bottom: new TabBar(
          controller: _tabController,
          tabs: tabs.map((f) => new Tab(text: f)).toList(),
        ),
      ),
      drawer: new Drawer(),
      bottomNavigationBar: new Material(
        child: new TabBar(
          tabs: <Tab>[
            new Tab(icon: new Icon(Icons.new_releases), text: '新闻'),
            new Tab(icon: new Icon(Icons.history), text: '历史'),
            new Tab(icon: new Icon(Icons.image), text: '图片'),
          ],
          controller: _tabController,
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _onAdd,
        backgroundColor: Colors.pink,
        child: new Icon(Icons.add),
      ),
      body: new TabBarView(
          controller: _tabController,
          children: tabs.map((e) {
            return Container(
              alignment: Alignment.center,
              child: Text(e, textScaleFactor: 5),
            );
          }).toList()),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    _tabController.animateTo(index);
  }

  void _onAdd() {}
}
