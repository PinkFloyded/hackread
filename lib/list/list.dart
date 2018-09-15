import 'package:flutter/material.dart';

@immutable
class NewsItemWidget extends StatefulWidget {
  final NewsItem newsItem;

  NewsItemWidget(this.newsItem);

  @override
  State<StatefulWidget> createState() => _NewItemWidgetState(newsItem);

}

class _NewItemWidgetState extends State<NewsItemWidget> {
  NewsItem item;

  _NewItemWidgetState(this.item);

  @override
  Widget build(BuildContext context) =>
      ListTile(
          title: Padding(padding: EdgeInsets.only(bottom: 7.0),
              child: RichText(
                text: TextSpan(
                  text: item.title,
                  style: DefaultTextStyle
                      .of(context)
                      .style,
                  children: <TextSpan>[
                    TextSpan(
                      text: " (${item.url})" ?? "",
                      style: new TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 9.0,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              )),
          subtitle: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 7.0),
                  child: Text(item.author),
                ),
                InkWell(
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(7.0, 3.0, 3.0, 3.0),
                      child:
                      Row(
                          children: <Widget>[
                            Icon(
                                Icons.comment, size: 17.0,
                                color: Colors.lightBlueAccent
                            ),
                            Padding(
                                padding: EdgeInsets.all(3.0),
                                child: Text(item.numComments.toString(),)
                            ),
                          ]
                      )
                  ),
                  onTap: () =>
                      Scaffold.of(context).showSnackBar(SnackBar
                        (content: Text("hahaha"))),
                )
              ]),
          trailing: Column(
            children: <Widget>[
              Icon(Icons.keyboard_arrow_up),
              Text(item.numUpvotes.toString()),
            ],
          )
      );

//          child: Row(
//            mainAxisAlignment: MainAxisAlignment.start,
//            children: <Widget>[
//              Expanded(child: Column(
//                crossAxisAlignment: CrossAxisAlignment.start,
//                children: <Widget>[
//                  Text(item.title),
//                  Row(
//                    children: <Widget>[
//                      Text(item.author),
//                      Icon(Icons.comment),
//                      Text("${item.numComments}")
//                    ],
//                  )
//                ],
//              )),
//
//              Column(
//                children: <Widget>[
//                  Icon(Icons.keyboard_arrow_up),
//                  Text("${item.numUpvotes}")
//                ],
//              ),
//            ],
}

class NewsItem {
  final String title;
  final String author;
  final String url;
  final bool isUpvoted;
  final int numComments;
  final int numUpvotes;

  NewsItem(this.title, this.author, this.url, this.isUpvoted, this.numComments,
      this.numUpvotes);
}
