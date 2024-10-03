import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'app/modules/login/controllers/login_controller.dart';

class Splash extends StatelessWidget {
  Splash({super.key});

  final loginController = Get.put(LoginController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return StreamBuilder<User?>(
      stream: loginController.streamAuthStatus,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            body: Container(
              color: const Color.fromARGB(255, 29, 170, 53),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 100.h,),
                    Image.asset("assets/images/Logo_Gottix.png",width: 500.w,height: 500.h,),
                    SizedBox(height: 150.h,),
                    Text("Transforming Trash, Creating Value",style: TextStyle(fontFamily: 'Pattaya',fontSize: 24.sp,color: Colors.white),),
                    SizedBox(height: 20.h,),
                  ],
                ),
              ),
            ),
          );
        } else {
          Future.delayed(const Duration(seconds: 4), () async {
            if (snapshot.hasData) {
              String uid = snapshot.data!.uid;
              String? role = await loginController.getUserRole(uid);
              if (role == 'Owner') {
                Get.offNamed("/home");
              } else if (role == 'Pegawai') {
                Get.offNamed("/workhome");
              } else {
                Get.offNamed("/login");
              }
            } else {
              Get.offNamed("/login");
            }
          });
          return Scaffold(
            body: Container(
              color: const Color.fromARGB(255, 29, 170, 53),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 100.h,),
                    Image.asset("assets/images/Logo_Gottix.png",width: 500.w,height: 500.h,),
                    SizedBox(height: 150.h,),
                    Text("Transforming Trash, Creating Value",style: TextStyle(fontFamily: 'Pattaya',fontSize: 24.sp,color: Colors.white),),
                    SizedBox(height: 20.h,),
                  ],
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
