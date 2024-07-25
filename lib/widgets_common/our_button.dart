import 'package:emart_app/consts/consts.dart';

Widget ourButton({onPress, color, textColor, String? title}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: redColor, padding: const EdgeInsets.all(12)),
      onPressed: onPress,
      child: title!.text.color(textColor).make());
}
