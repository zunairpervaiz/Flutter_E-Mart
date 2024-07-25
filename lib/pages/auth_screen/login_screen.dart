import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/pages/auth_screen/auth.dart';
import 'package:emart_app/pages/auth_screen/sign_up_Screen.dart';

import 'package:emart_app/widgets_common/app_logo_widget.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';
import 'package:emart_app/widgets_common/custom_text_field.dart';
import 'package:emart_app/widgets_common/our_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/route_manager.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? errorMessage = "";
  bool login = true;
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

// login

  Future<void> signInWithEmailAndPassword() async {
    showDialog(
        context: context,
        builder: (context) {
          return const Center(child: CircularProgressIndicator());
        });
    try {
      await Auth().signInWithEmailAndPassword(
          email: _controllerEmail.text, password: _controllerPassword.text);
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
    Navigator.of(context).pop();
  }

  // sing up

  Future<void> createUserWithUserAndPassword() async {
    try {
      await Auth().createUserWithUserAndPassword(
          email: _controllerEmail.text, password: _controllerPassword.text);
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  // error msg
  Widget _errormsg() {
    return Text(errorMessage == "" ? "" : "Humm ? $errorMessage");
  }

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
            "Log in to $appname".text.white.size(18).make(),
            15.heightBox,
            Column(
              children: [
                customTextField(
                  controller: _controllerEmail,
                  title: email,
                  hint: emailHint,
                ),
                customTextField(
                  controller: _controllerPassword,
                  title: password,
                  hint: passwordHint,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {}, child: forgetPassword.text.make()),
                ),
                5.heightBox,
                ourButton(
                  title: logIn,
                  color: redColor,
                  textColor: whiteColor,
                  onPress: signInWithEmailAndPassword,
                ).box.white.rounded.width(context.screenWidth - 50).make(),
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
            _errormsg(),
          ],
        ),
      ),
    ));
  }
}
