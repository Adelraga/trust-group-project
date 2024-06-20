import 'package:flutter/material.dart';
import 'package:trust_group_project/cors/Themeing/colors.dart';
import 'package:trust_group_project/cors/Widgets/CustomButton.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../cors/Helpers/spacing.dart';

import 'rating_text_input.dart';

class RatingViewBody extends StatelessWidget {
  const RatingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 300, left: 40, right: 40),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextField(
                textDirection: TextDirection.rtl, // Ensuring RTL text direction
                decoration: InputDecoration(
                  hintText: 'اكتب المزيد من المعلومات التي  تريد معرفتها',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 17.0,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            verticalSpace(30),
            CustomButton(
              title: "Submit",
              textColor: Colors.white,
              buttonColor: ColorsManager.primaryColor,
              onPressed: () {},
              height: 60.h,
              width: 200.w,
            )
          ],
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomeScreen(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Text(
//                 'تقييم',
//                 style: TextStyle(
//                   color: Colors.blue,
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                 ),
//                 textDirection: TextDirection.rtl, // Ensuring RTL text direction
//               ),
//               SizedBox(height: 20),
//               Container(
//                 padding: EdgeInsets.symmetric(horizontal: 16.0),
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Colors.grey),
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//                 child: TextField(
//                   maxLines: 5,
//                   textDirection: TextDirection.rtl, // Ensuring RTL text direction
//                   decoration: InputDecoration(
//                     hintText: 'اكتب المزيد من المعلمات تريد معرفتها',
//                     border: InputBorder.none,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.blue,
//                   padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(25),
//                   ),
//                 ),
//                 child: Text(
//                   'Submit',
//                   style: TextStyle(fontSize: 16, color: Colors.white),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
