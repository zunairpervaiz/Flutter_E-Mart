import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/pages/auth_screen/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';


class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final User? user = Auth().currentUser;

  Future<void> signOut() async {
    await Auth().signOut();
  }

  Widget _title() {
    return const Text("e-Student");
  }

  Widget _userUid() {
    return Text(user?.email ?? "User Email");
  }

  Widget _signOutButton() {
    return ElevatedButton(onPressed: signOut, child: const Text("Sign Out"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: _title(),
      ),
      body: Container(
        // height: double.infinity,
        // width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: <Widget>[_userUid(), _signOutButton()],
        ),
      ),
    );
  }
}
