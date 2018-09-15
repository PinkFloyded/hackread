import 'package:flutter/material.dart';
import 'list.dart';

class ListPage extends StatefulWidget {
  ListPage({Key key}) : super(key: key);

  final String title = "hackread";

  @override
  _ListPageState createState() => new _ListPageState();
}

class _ListPageState extends State<ListPage> {


  List<NewsItem> items = List.generate(100, (idx) =>
  idx.isEven
      ? NewsItem(
      "A new way to do ", "hackread", "www.google.com", true, 200, 400)
      : NewsItem("Testing a very long string title. Can my item handle it? Am"
      " sure it can.",
      "hackread", "www.facebook.com", true, 216, 20));


  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
                tabs: [
                  Tab(text: "News"),
                  Tab(text: "Show"),
                  Tab(text: "Ask"),
                  Tab(text: "Jobs"),
                ]),
            title: Text("hackread"),
          ),
          body: TabBarView(
              children: [
                ListView.separated(
                    itemCount: items.length,
                    itemBuilder: (BuildContext ctxt, int index) =>
                        buildNewsItem(ctxt, index),
                    separatorBuilder: (BuildContext ctxt, int index) =>
                        buildSeparator(ctxt, index)),
                ListView.separated(
                    itemCount: items.length,
                    itemBuilder: (BuildContext ctxt, int index) =>
                        buildNewsItem(ctxt, index),
                    separatorBuilder: (BuildContext ctxt, int index) =>
                        buildSeparator(ctxt, index)),
                ListView.separated(
                    itemCount: items.length,
                    itemBuilder: (BuildContext ctxt, int index) =>
                        buildNewsItem(ctxt, index),
                    separatorBuilder: (BuildContext ctxt, int index) =>
                        buildSeparator(ctxt, index)),
                ListView.separated(
                    itemCount: items.length,
                    itemBuilder: (BuildContext ctxt, int index) =>
                        buildNewsItem(ctxt, index),
                    separatorBuilder: (BuildContext ctxt, int index) =>
                        buildSeparator(ctxt, index)),
              ])
          ,
        )
    );
  }

  buildSeparator(BuildContext ctxt, int index) => Divider(height: 1.0);

  buildNewsItem(BuildContext ctxt, int index) => NewsItemWidget(items[index]);

}

