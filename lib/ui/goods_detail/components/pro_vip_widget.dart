import 'package:flutter/material.dart';
import 'package:flutter_app/constant/colors.dart';
import 'package:flutter_app/constant/fonts.dart';
import 'package:flutter_app/ui/goods_detail/model/goodDetail.dart';
import 'package:flutter_app/utils/router.dart';

///开通pro-vip
class ProVipWidget extends StatelessWidget {
  final SpmcBanner spmcBanner;

  const ProVipWidget({Key key, this.spmcBanner}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _proVip(context);
  }

  _proVip(BuildContext context) {
    if (spmcBanner != null) {
      return GestureDetector(
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 15, 10, 0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6), color: backWhite),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                height: 40,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.horizontal(left: Radius.circular(6)),
                  color: backYellow,
                ),
                alignment: Alignment.center,
                child: Text(
                  '${spmcBanner.spmcTagDesc}',
                  style: t14blackBold,
                ),
              ),
              Expanded(
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 5),
                        height: 40,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/detail_vip_icon.png"),
                              fit: BoxFit.fitWidth),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.horizontal(
                              end: Radius.circular(6),
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: RichText(
                                text: TextSpan(style: t14black, children: [
                                  TextSpan(
                                      text: '${spmcBanner.spmcDesc}',
                                      style: TextStyle(
                                          color: Color(0xFFFFF1D2),
                                          fontSize: 14)),
                                  TextSpan(
                                      text: '${spmcBanner.spmcPrice}',
                                      style: t14Yellow),
                                ]),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 6, vertical: 3),
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0xFFFFD883),
                                      Color(0xFFEFB965),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                '开通',
                                style: t12black,
                              ),
                            ),
                            SizedBox(width: 5),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        onTap: () {
          Routers.push(
              Routers.webView, context, {'url': '${spmcBanner.spmcLinkUrl}'});
        },
      );
    } else {
      return Container();
    }
  }
}
