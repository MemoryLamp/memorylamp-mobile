import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:memory_lamp/package/size.dart';

// ------ for transparent appBar
AppBar transparentAppbar(title) => AppBar(
      title: Text(title),
      backgroundColor: Colors.transparent,
      elevation: 0,
    );

// ------ suffix icon for forms
class FormSuffixIcon extends StatelessWidget {
  const FormSuffixIcon({
    Key key,
    @required this.svgIcon,
  }) : super(key: key);

  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        getProportionateScreenWidth(20),
        getProportionateScreenWidth(20),
        getProportionateScreenWidth(20),
      ),
      child: SvgPicture.asset(
        svgIcon,
        height: getProportionateScreenWidth(18),
      ),
    );
  }
}
