import 'package:beauty_flutter/base_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardFree extends BaseCard {
  @override
  _CardFreeState createState() => _CardFreeState();
}

const BOOK_LIST = [
  {'title': "非暴力沟通", "cover": "51VykQqGq9L._SY346_.jpg", "price": "19.6"},
  {'title': "非暴力沟通", "cover": "51VykQqGq9L._SY346_.jpg", "price": "19.6"},
  {'title': "非暴力沟通", "cover": "51VykQqGq9L._SY346_.jpg", "price": "19.6"},
  {'title': "非暴力沟通", "cover": "51VykQqGq9L._SY346_.jpg", "price": "19.6"},
  {'title': "非暴力沟通", "cover": "51VykQqGq9L._SY346_.jpg", "price": "19.6"},
  {'title': "非暴力沟通", "cover": "51VykQqGq9L._SY346_.jpg", "price": "19.6"},
];

class _CardFreeState extends BaseCardState {
  @override
  void initState() {
//    subTitleColor = Color(0xffb99444);
    super.initState();
  }

  @override
  Widget topTitle(String title) {
    return super.topTitle("免费听书");
  }

  @override
  Widget subTitle(String title) {
    return super.subTitle('第108期');
  }

  @override
  bottomContent() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: <Widget>[
            Expanded(child: _bookList()),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: _bottomButton(),
            )
          ],
        ),
      ),
    );
  }

  _bookList() {
    return GridView.count(
      crossAxisCount: 3,
      mainAxisSpacing: 10,
      crossAxisSpacing: 15,
      childAspectRatio: 0.46,
      padding: EdgeInsets.only(left: 20, right: 20),
      children: BOOK_LIST.map((item) {
        return _item(item);
      }).toList(),
    );
  }

  Widget _item(Map<String, String> item) {
    return Container(
      child: Column(
        children: <Widget>[
          Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              Image.network(
                'http://www.devio.org/io/flutter_beauty/book_cover/${item['cover']}',
                fit: BoxFit.cover,
              ),
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black38),
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(color: Colors.black54),
                  child: Text(
                    '原价${item['price']}',
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              item['title'],
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }

  _bottomButton() {
    return FractionallySizedBox(
      widthFactor: 1,
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: RaisedButton(
          onPressed: () {},
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          padding: EdgeInsets.only(top: 13, bottom: 15),
          color: Colors.blue,
          child: Text(
            '免费领取',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
