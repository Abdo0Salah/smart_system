import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_system/features/home/presentation/screens/home.dart';

import 'features/home/presentation/screens/1.dart';
import 'features/home/presentation/screens/2.dart';
import 'features/home/presentation/screens/3.dart';
import 'features/home/presentation/screens/4.dart';
import 'features/home/presentation/screens/5.dart';
import 'features/home/presentation/screens/6.dart';
import 'features/home/presentation/screens/7.dart';
import 'features/home/presentation/screens/8.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: HomeScreen.routeName,
          routes: {
            HomeScreen.routeName: (context) => HomeScreen(),
            SR.routeName: (context) => SR(),
            M.routeName: (context) => M(),
            T.routeName: (context) => T(),
            N.routeName: (context) => N(),
            Ss.routeName: (context) => Ss(),
            P.routeName: (context) => P(),
            S.routeName: (context) => S(),
            Q.routeName: (context) => Q(),
          },
        );
      },
    );
  }
}
