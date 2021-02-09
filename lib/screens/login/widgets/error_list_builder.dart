import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/widgets.dart';
import 'package:memory_lamp/package/size.dart';

// ------ possible errors for email form
final RegExp emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String emptyEmail = "Please Enter your Email";
const String invalidEmail = "Please Enter Valid Email";

// ------ possible errors for password form
const String emptyPassword = "Please Enter your Password";
const String invalidPassword = "Please Enter a Valid Password";
const String shortPassword = "Password should be atleast 8 characters";

// ------ signup specific errors
const String mismatchPassword = "Password don't match";
const String emptyUsername = "Please Enter your Username";
const String tooLongUsername = ""; //should we add this?

// ------ I don't know exactly how to implement these yet but I'll add them here just in case, we might need more endpoints for these
const String emailExists = "Your email is already in use, Please Login instead";
const String userName =
    "Your Username is already taken, Please use another one";

class ErrorListBuilder extends StatelessWidget {
  final List<String> errors;
  const ErrorListBuilder({
    Key key,
    @required this.errors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        errors.length,
        (index) => _errorItem(
          error: errors[index],
        ),
      ),
    );
  }

  Row _errorItem({String error}) {
    return Row(
      children: [
        SvgPicture.asset(
          "assets/icons/Error.svg",
          height: getProportionateScreenWidth(14),
          width: getProportionateScreenWidth(14),
        ),
        SizedBox(
          width: getProportionateScreenWidth(10),
        ),
        Text(error),
      ],
    );
  }
}
