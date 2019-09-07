import 'package:beauty_flutter/base_card.dart';
import 'package:flutter/cupertino.dart';

class CardRecommend extends BaseCard {
  @override
  _CardRecommendState createState() => _CardRecommendState();
}

class _CardRecommendState extends BaseCardState {
  @override
  void initState() {
    subTitleColor = Color(0xffb99444);
    super.initState();
  }

  @override
  Widget topTitle(String title) {
    return super.topTitle("本周推荐");
  }

  @override
  Widget subTitle(String title) {
    return super.subTitle('送你一天无限卡 ◆ 全场书籍免费读 >');
  }

  @override
  bottomContent() {
    return Expanded(
      child: Container(
        constraints: BoxConstraints.expand(),
        margin: EdgeInsets.only(top: 20),
        child: Image.network(
          'http://www.devio.org/io/flutter_beauty/card_1.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
