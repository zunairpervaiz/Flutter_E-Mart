import 'package:emart_app/consts/consts.dart';

import 'package:emart_app/widgets_common/app_logo_widget.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';
import 'package:emart_app/widgets_common/custom_text_field.dart';
import 'package:emart_app/widgets_common/our_button.dart';
import 'package:get/route_manager.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool? isCheck = false;
  @override
  Widget build(BuildContext context) {
    return bgWidgdet(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            appLogoWidget(),
            10.heightBox,
            "Join The $appname".text.white.size(18).make(),
            15.heightBox,
            Column(
              children: [
                customTextField(title: name, hint: nameHint),
                customTextField(title: email, hint: emailHint),
                customTextField(
                  title: password,
                  hint: passwordHint,
                ),
                customTextField(
                  title: reTyoePassword,
                  hint: reTypepassHint,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {}, child: forgetPassword.text.make()),
                ),
                5.heightBox,
                Row(
                  children: [
                    Checkbox(
                        checkColor: redColor,
                        value: isCheck,
                        onChanged: (newValue) {
                          setState(() {
                            isCheck = newValue;
                          });
                        }),
                    10.widthBox,
                    Expanded(
                      child: RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: "I agree to the",
                              style:
                                  TextStyle(fontFamily: bold, color: fontGrey),
                            ),
                            TextSpan(
                              text: privecyPolicy,
                              style:
                                  TextStyle(fontFamily: bold, color: redColor),
                            ),
                            TextSpan(
                              text: tramsCondation,
                              style:
                                  TextStyle(fontFamily: bold, color: fontGrey),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                5.heightBox,
                ourButton(
                        title: signup,
                        color: isCheck == true? redColor : lightGrey,
                        textColor: whiteColor,
                        onPress: () {})
                    .box
                    .white
                    .rounded
                    .width(context.screenWidth - 50)
                    .make(),
              ],
            )
                .box
                .white
                .rounded
                .padding(
                  const EdgeInsets.all(16),
                )
                .width(context.screenWidth - 70)
                .shadowSm
                .make(),
            10.heightBox,
            // wrap with gusterdetector
            RichText(
              text: const TextSpan(children: [
                TextSpan(
                  text: alreadyHaveAnAccount,
                  style: TextStyle(
                    fontFamily: bold,
                    color: fontGrey,
                  ),
                ),
                TextSpan(
                  text: logIn,
                  style: TextStyle(
                    fontFamily: bold,
                    color: redColor,
                  ),
                ),
              ]),
            ).onTap(() {
              Get.back();
            }),
          ],
        ),
      ),
    ));
  }
}
