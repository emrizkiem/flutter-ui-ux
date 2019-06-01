import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'wisata.dart';

class WisataList extends StatefulWidget {
  WisataList({Key key, this.title}) : super(key: key);

  final String title;
  final List<Wisata> wisata = Wisata.getWisata();

  @override
  _WisataListState createState() => _WisataListState();
}

class _WisataListState extends State<WisataList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(241, 251, 246, 1),
      appBar: appBar(),
      body: bodyList(),
    );
  }

  Widget appBar() {
    return AppBar(
      elevation: 8,
      title: Text(widget.title),
    );
  }

  Widget bodyList() {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: widget.wisata.length,
        itemBuilder: setItem,
      ),
    );
  }

  Widget setItem(BuildContext context, int index) {
    return Card(
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      elevation: 8,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(8.0)),
              child: Image.network(
                widget.wisata[index].imagePath,
                height: 200,
                fit: BoxFit.cover,
                ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 8),
                        child: Text(
                          widget.wisata[index].nameWisata,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(112, 112, 112, 1),
                          ),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            widget.wisata[index].rating,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.deepOrange,
                            ),
                          ),
                          SizedBox(width: 5,),
                          Icon(
                            Icons.star,
                            color: Colors.deepOrange,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.deepOrange,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.deepOrange,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.deepOrange,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.deepOrange,
                            size: 15,
                          ),
                          SizedBox(width: 5,),
                          Text(
                            widget.wisata[index].ulasan,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 8),
                        child: Text(
                          widget.wisata[index].slogan,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 20),
            margin: EdgeInsets.only(bottom: 16),
            child: Text(
              widget.wisata[index].description,
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.black54
              ),
            ),
          ),
        ],
      ),
    );
  }
}