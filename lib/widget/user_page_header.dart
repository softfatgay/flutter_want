import 'package:flutter/material.dart';
import 'package:flutter_app/constant/colors.dart';
import 'package:flutter_app/ui/mine/model/userModel.dart';
import 'package:flutter_app/utils/router.dart';
import 'package:flutter_app/utils/user_config.dart';

class UserHeader extends SliverPersistentHeaderDelegate {
  final double collapsedHeight;
  final double expandedHeight;
  final double paddingTop;
  final Widget child;
  final String title;
  final UserModel userInfo;
  final bool showBack;

  UserHeader({
    this.collapsedHeight,
    this.expandedHeight,
    this.paddingTop,
    this.child,
    this.title,
    this.userInfo,
    this.showBack = false,
  });

  @override
  // TODO: implement maxExtent
  double get maxExtent => this.expandedHeight;

  @override
  // TODO: implement minExtent
  double get minExtent => this.collapsedHeight + this.paddingTop;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return true;
  }

  Color makeStickyHeaderBgColor(shrinkOffset) {
    final int alpha = (shrinkOffset / (this.maxExtent - this.minExtent) * 255)
        .clamp(0, 255)
        .toInt();
    return Color.fromARGB(0, 0, 0, 0);
  }

  Color makeStickyHeaderTextColor(shrinkOffset, isIcon) {
    if (shrinkOffset <= 50) {
      return isIcon ? Colors.white : Colors.transparent;
    } else {
      final int alpha = (shrinkOffset / (this.maxExtent - this.minExtent) * 255)
          .clamp(0, 255)
          .toInt();
      return Color.fromARGB(alpha, 255, 255, 255);
    }
  }

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build

    print('--------------$shrinkOffset');

    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: lineColor, blurRadius: 1, spreadRadius: 0.2)
        ],
      ),
      height: maxExtent,
      width: double.infinity,
      //堆叠布局,和frame差不多,一层一层堆叠
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          //定位,相当于绝对布局
          _userInfo(context, shrinkOffset),
          Positioned(
            child: GestureDetector(
              child: Image.asset(
                'assets/images/mine/setting.png',
                width: 20,
                height: 20,
              ),
              onTap: () {
                Routers.push(Routers.setting, context, {'id': 2});
              },
            ),
            right: 20 + _settingOffet(context, shrinkOffset),
            top: MediaQuery.of(context).padding.top + 15,
          ),
        ],
      ),
    );
  }

  double _settingOffet(BuildContext context, double shrinkOffset) {
    var leftOffset = 0.0;
    var topOffet = MediaQuery.of(context).padding.top + 50;
    if (shrinkOffset < topOffet) {
      leftOffset = shrinkOffset / 2.5;
    } else {
      leftOffset = topOffet / 2.5;
    }
    return leftOffset;
  }

  _userInfo(BuildContext context, double shrinkOffset) {
    var offsetTop = MediaQuery.of(context).padding.top + 50;
    var d = shrinkOffset / offsetTop;
    var e = d / offsetTop;
    if (d < 1) {
      d = shrinkOffset / offsetTop;
    } else {
      d = 1;
    }
    print('>>>>>>>>>>>$d');
    print('===========$e');

    return Container(
      padding:
          EdgeInsets.fromLTRB(15, MediaQuery.of(context).padding.top, 18, 0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFEFB965),
            Color(0xFFFFD883),
          ],
        ),
      ),
      height: 140 + MediaQuery.of(context).padding.top,
      child: Stack(
        children: [
          GestureDetector(
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 50 - 10 * d,
                    height: 50 - 10 * d,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      image: DecorationImage(
                        image: NetworkImage('$user_icon_url'),
                        fit: BoxFit.cover,
                      ),
                    ), // 通过 container 实现圆角
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          userInfo.userSimpleVO.nickname,
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        Text(
                          userInfo.userSimpleVO.memberLevel == 0
                              ? "普通用户"
                              : "vip用户",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Image.asset(
                          'assets/images/mine/mine_page_qr.png',
                          color: backWhite,
                          width: 25,
                          height: 25,
                        ),
                      ),
                      onTap: () {
                        Routers.push(
                            Routers.userInfoPageIndex, context, {'id': 1});
                      },
                    ),
                  )
                ],
              ),
            ),
            onTap: () {
              Routers.push(Routers.userInfoPage, context);
            },
          ),
        ],
      ),
    );
  }
}
