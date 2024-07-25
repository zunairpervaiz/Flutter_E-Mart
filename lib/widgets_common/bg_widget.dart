import 'package:emart_app/consts/consts.dart';

Widget bgWidgdet({Widget? child}) {
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(imgBackground),fit: BoxFit.fill
      ),
      
    ),
    child:child ,
  );
}
