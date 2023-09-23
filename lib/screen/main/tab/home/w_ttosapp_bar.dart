// news가 있을 경우 뜨는 red dot을 표현하기 위해 stateful widget으로 appbar생성
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/extension/context_extension.dart';
import 'package:flutter/material.dart';

class TtosAppBar extends StatefulWidget {
  const TtosAppBar({super.key});

  @override
  State<TtosAppBar> createState() => _TtosAppBarState();
}

class _TtosAppBarState extends State<TtosAppBar> {
  // _를 붙인 이유 : showRedDot은 해당 객체 내에서만 사용될 변수이기 때문에
  bool _showRedDot = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      // 유저가 dark mode / light mode로 전환할 경우 theme에 맞게 색상이 전환되도록
      // home 화면의 context에 맞춰 색상 설정
      color: context.appColors.appBarBackground,
      child: Row(
        children: [
          // Width 좌우 여백용
          // const Width(10),
          // 자주 반복사용될 width를 const로 width 10을 만들어서 w_height_and_width에 저장
          width10,
          Image.asset(
            "$basePath/icon/toss.png",
            height: 30,
          ),
          // 가운데 여백
          // Expanded(child: Container(),),
          // 자주 반복사용될 Expanded를 emptyExpanded로 만들어놓음
          emptyExpanded,
          Image.asset(
            "$basePath/icon/map_point.png",
            height: 30,
          ),
          width10,
          Stack(
            children: [
              Image.asset(
                "$basePath/icon/notification.png",
                height: 30,
              ),
              if (_showRedDot)
                Positioned.fill(
                    // news가 있다면 보여줄 빨간 점 Stack으로 합쳐서 표현될 수 있게 함
                    child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 6,
                    height: 6,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                  ),
                )),
            ],
          ),
        ],
      ),
    );
  }
}
