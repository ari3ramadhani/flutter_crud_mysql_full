import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  List list;
  int index;

  Detail({this.index, this.list});

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("${widget.list[widget.index]['item_name']}"),),
      body: new Container(
        height: 250.0,
        padding: const EdgeInsets.all(20.0),
        child: new Card(
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Padding(padding: const EdgeInsets.only(top: 30)),
                Text(widget.list[widget.index]['item_name'],style: new TextStyle(fontSize: 20.0),),
                Text("Code : ${widget.list[widget.index]['item_code']}",style: new TextStyle(fontSize: 20.0),),
                Text("Price : ${widget.list[widget.index]['price']}",style: new TextStyle(fontSize: 18.0),),
                Text("Stock : ${widget.list[widget.index]['stock']}",style: new TextStyle(fontSize: 18.0),),
                new Padding(padding: const EdgeInsets.only(top: 30)),
                new Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new RaisedButton(
                      child: new Text("Edit"),
                      color: Colors.green,
                      onPressed: (){},
                    ),
                    new RaisedButton(
                      child: new Text("Delete"),
                      color: Colors.red,
                      onPressed: (){},
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
