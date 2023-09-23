import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/all/f_all.dart';
import 'package:fast_app_base/screen/main/tab/benefit/f_benefit.dart';
import 'package:fast_app_base/screen/main/tab/home/f_home.dart';
import 'package:fast_app_base/screen/main/tab/stock/f_stock.dart';
import 'package:fast_app_base/screen/main/tab/ttospay/f_ttospay.dart';
import 'package:flutter/material.dart';

enum TabItem {
  home(Icons.home, '홈', HomeFragment()),
  benefit(Icons.star, '혜택', BenefitFragment()),
  ttospay(Icons.payment, '토스페이', TtospayFragment()),
  stock(Icons.candlestick_chart, '주식', StockFragment()),
  all(Icons.menu, '전체', AllFragment());

  // 직접 이미지를 넣을 경우 직접 아이콘 path를 삽입 후
  // BottomNavigationBarItem 생성시에 Icon 에 이미지 삽입하는 로직 추가
  // final String activeImagePath;
  final IconData activeIcon;
  final IconData inActiveIcon;
  final String tabName;
  final Widget firstPage;

  const TabItem(this.activeIcon, this.tabName, this.firstPage, {IconData? inActiveIcon})
      : inActiveIcon = inActiveIcon ?? activeIcon;

  BottomNavigationBarItem toNavigationBarItem(BuildContext context, {required bool isActivated}) {
    return BottomNavigationBarItem(
        icon: Icon(
          key: ValueKey(tabName),
          isActivated ? activeIcon : inActiveIcon,
          color:
              isActivated ? context.appColors.iconButton : context.appColors.iconButtonInactivate,
        ),
        label: tabName);
  }
}
