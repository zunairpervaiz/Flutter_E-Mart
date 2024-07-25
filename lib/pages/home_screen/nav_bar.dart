import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/controller/home_controller.dart';
import 'package:emart_app/pages/home_screen/home_screen.dart';
import 'package:emart_app/pages/massage_screen/massage_screen.dart';
import 'package:emart_app/pages/notifacation_screen/notifacation_screen.dart';
import 'package:emart_app/pages/profile/profile_screen.dart';

import 'package:get/get.dart';

class NavBarScreen extends StatelessWidget {
  const NavBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    var navBarItem = [
      BottomNavigationBarItem(
        label: home,
        icon: Image.asset(
          icHome,
          width: 26,
        ),
      ),
      BottomNavigationBarItem(
        label: message,
        icon: Image.asset(
          icChata,
          width: 26,
        ),
      ),
      BottomNavigationBarItem(
        label: notification,
        icon: Image.asset(
          icNotifacation,
          width: 26,
        ),
      ),
      BottomNavigationBarItem(
        label: profile,
        icon: Image.asset(
          icProfile,
          width: 26,
        ),
      ),
    ];

    var navBody = [
      HomeScreen(),
      MassageScreen(),
      NotifacationScreen(),
      ProfileScreen(),
    ];

    return Scaffold(
      body: Column(
        children: [
          Obx(
            () => Expanded(
              child: navBody.elementAt(controller.currentNavIndex.value),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
            onTap: (value) {
              controller.currentNavIndex.value = value;
            },
            currentIndex: controller.currentNavIndex.value,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: redColor,
            backgroundColor: whiteColor,
            items: navBarItem),
      ),
    );
  }
}
