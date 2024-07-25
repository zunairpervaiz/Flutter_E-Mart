import 'package:emart_app/consts/consts.dart';

Widget appLogoWidget() {
  //using velocity X Here
  return Image.asset(icappLogo)
      .box
      .white
      .size(77, 77)
      .padding(const EdgeInsets.all(8))
      .rounded
      .make();
}
