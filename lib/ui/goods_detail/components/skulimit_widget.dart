import 'package:flutter/material.dart';
import 'package:flutter_app/constant/fonts.dart';
import 'package:flutter_app/widget/global.dart';

class SkulimitWidget extends StatelessWidget {
  final String skuLimit;

  const SkulimitWidget({Key key, this.skuLimit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildWidget();
  }

  _buildWidget() {
    return (skuLimit == null || skuLimit == '')
        ? Container()
        : Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            decoration: bottomBorder,
            child: Row(
              children: <Widget>[
                Container(
                  child: Text(
                    '限制：',
                    style: t14grey,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    skuLimit,
                    style: t14black,
                  ),
                ),
              ],
            ),
          );
  }
}
