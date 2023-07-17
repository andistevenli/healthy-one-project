import 'package:flutter/material.dart';
import 'package:healthy_one_project/view/create_password/create_password_screen.dart';
import 'package:healthy_one_project/view/create_password/create_password_viewmodel.dart';
import 'package:healthy_one_project/view/create_profile/create_profile_screen.dart';
import 'package:healthy_one_project/view/create_profile/create_profile_viewmodel.dart';
import 'package:healthy_one_project/view/home/home_screen.dart';
import 'package:healthy_one_project/view/home/home_viewmodel.dart';
import 'package:healthy_one_project/view/login_sign_up/login_sign_up_screen.dart';
import 'package:healthy_one_project/view/login_sign_up/login_sign_up_viewmodel.dart';
import 'package:healthy_one_project/view/psikotest/psikotest_screen.dart';
import 'package:healthy_one_project/view/psikotest/psikotest_viewmodel.dart';
import 'package:healthy_one_project/view/verifikasi_otp/verifikasi_otp_screen.dart';
import 'package:healthy_one_project/view/verifikasi_otp/verifikasi_otp_viewmodel.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CreatePasswordViewModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => CreateProfileViewModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => HomeViewModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => LoginSignUpViewModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => PsikotestViewModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => VerifikasiOtpViewModel(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: LoginSignUpScreen.routeName,
        routes: {
          LoginSignUpScreen.routeName: (context) => const LoginSignUpScreen(),
          CreatePasswordScreen.routeName: (context) =>
              const CreatePasswordScreen(),
          CreateProfileScreen.routeName: (context) =>
              const CreateProfileScreen(),
          HomeScreen.routeName: (context) => const HomeScreen(),
          PsikotestScreen.routeName: (context) => const PsikotestScreen(),
          VerifikasiOtpScreen.routeName: (context) =>
              const VerifikasiOtpScreen(),
        },
      ),
    );
  }
}
