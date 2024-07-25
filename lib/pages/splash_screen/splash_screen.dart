// import 'package:emart_app/consts/consts.dart';
// import 'package:emart_app/pages/auth_screen/login_screen.dart';
// import 'package:emart_app/widgets_common/app_logo_widget.dart';

// import 'package:get/get.dart';

// class MySlashScreen extends StatefulWidget {
//   const MySlashScreen({super.key});

//   @override
//   State<MySlashScreen> createState() => _MySlashScreenState();
// }

// class _MySlashScreenState extends State<MySlashScreen> {
//   changeScreen() {
//     Future.delayed(const Duration(seconds: 2), () {
//       Get.to(() => const LoginScreen());
//     });
//   }

//   @override
//   void initState() {
//     changeScreen();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: redColor,
//       body: Center(
//         child: Column(
//           children: [
//             Align(
//                 alignment: Alignment.topLeft,
//                 child: Image.asset(
//                   icSplashBg,
//                   width: 300,
//                 )),
//             20.heightBox,
//             appLogoWidget(),
//             10.heightBox,
//             appname.text.size(22).white.make(),
//             5.heightBox,
//             appversion.text.white.make(),
//             const Spacer(),
//             credits.text.white.make(),
//             30.heightBox
//           ],
//         ),
//       ),
//     );
//   }
// }
