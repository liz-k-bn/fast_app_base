// import 'package:fast_app_base/common/cli_common.dart';
// import 'package:fast_app_base/common/common.dart';
import 'package:after_layout/after_layout.dart';
import 'package:fast_app_base/common/cli_common.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

import '../main/s_main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with AfterLayoutMixin{
  // 일반적으로는 initState 안에 직접 화면 전환이나 데이터를 로드할 경우,
  // crash가 날 경우가 많다
  // 값 변경만 해야하고 화면에 실질적으로 영향을 주려고 하면 안됨
  // => 화면초기화시에는 class 에 with AfterLayoutMixin 을 추가해서
  // afterFirstLayout override 하여 사용

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    // history가 남는 방식 : back button 입력시 지난 history로 돌아감
    // Nav.push(const MainScreen());
    // stack clear
    // delay(() {}, Duration(milliseconds: 1500));
    delay(() {
      Nav.clearAllAndPush(const MainScreen());
    }, 1500.ms);


  }
  void initState() {


    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Image.asset("assets/image/splash/splash.png",
            width: 192, height: 192));
  }


}
