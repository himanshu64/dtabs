library dtabs;

import 'package:flutter/material.dart';

class DTabs extends StatefulWidget {
  int currentIndex;
  TabController tabController;
  List<String> tabList;

  DTabs({
    Key key,
    this.currentIndex,
    @required this.tabController,
    @required this.tabList,
  }) : super(key: key);
  @override
  _DTabsState createState() => _DTabsState();
}

class _DTabsState extends State<DTabs> with TickerProviderStateMixin {
  List<Widget> _generalWidgets = List<Widget>();
  List<Tab> _tabs = List<Tab>();
  TabController _tabController;
  TabController getTabController() {
    return TabController(
        length: _tabs.length, vsync: this, initialIndex: widget.currentIndex);
  }

  @override
  void initState() {
    _tabController = widget.tabController;
    _tabs = getTabs(widget.tabList.length);
    _tabController = getTabController();
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<Tab> getTabs(int count) {
    for (int i = 0; i < count; i++) {
      _tabs.add(getTab(widget.tabList[i]));
    }
    return _tabs;
  }

  Tab getTab(String tabName) {
    return Tab(
      text: "$tabName",
    );
  }

  Widget getWidget(int widgetNumber) {
    return Center(child: Text("${widget.tabList[widgetNumber]}"));
  }

  List<Widget> getWidgets() {
    _generalWidgets.clear();
    for (int i = 0; i < _tabs.length; i++) {
      _generalWidgets.add(getWidget(i));
    }
    return _generalWidgets;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      initialIndex: widget.currentIndex,
      child: Column(
        children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(height: 50),
            child: TabBar(
                controller: _tabController,
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.blue,
                physics: BouncingScrollPhysics(),
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: _tabs),
          ),
          Expanded(
            child: Container(
              child: TabBarView(
                children: getWidgets(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
