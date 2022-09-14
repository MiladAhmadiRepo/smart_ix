import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../login_screen/login_screen.dart';

// class Body extends StatelessWidget {
//   const Body({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(
//         horizontal: 14,
//         vertical: 14,
//       ),
//       decoration: const BoxDecoration(
//         color: Color(0xFF464646),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           SizedBox(
//             height:  20),
//           ),
//           Material(
//             child: Image.asset('assets/images/splash_img.png'),
//             color: Colors.transparent,
//           ),
//           Text(
//             'Sweet & Smart Home',
//             style: Theme.of(context).textTheme.headline1!.copyWith(
//                   color: Colors.white,
//                 ),
//           ),
//           Text(
//             'Smart Home can change\nway you live in the future',
//             style: Theme.of(context).textTheme.headline3!.copyWith(
//                   color: const Color(0xFFBDBDBD),
//                 ),
//           ),
//           ElevatedButton(
//             onPressed: () {
// 	            Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
//             },
//             child: Text(
//               'Get Started',
//               style: Theme.of(context).textTheme.headline2,
//             ),
//             style: ElevatedButton.styleFrom(
//               elevation: 0,
//               padding: EdgeInsets.symmetric(
//                 horizontal:  70),
//                 vertical:  15),
//               ),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(20), // <-- Radius
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: (5)),
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Lottie.asset(
        'assets/images/auto.json',
        controller: _controller,
        height: MediaQuery.of(context).size.height * 1,
        animate: true,
        onLoaded: (composition) {
          _controller
            ..duration = composition.duration
            ..forward().whenComplete(() =>
                Navigator.of(context).pushReplacementNamed(LoginScreen.routeName)
            //     Navigator.pushReplacement(
            //   context,
            //   MaterialPageRoute(builder: (context) => HomePage()),
            // ),
            );
        },
      ),
    );
  }
}