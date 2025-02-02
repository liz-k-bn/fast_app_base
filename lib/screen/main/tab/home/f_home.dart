import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/round_button_theme.dart';
import 'package:fast_app_base/common/widget/w_big_button.dart';
import 'package:fast_app_base/common/widget/w_round_button.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:fast_app_base/screen/dialog/d_message.dart';
import 'package:fast_app_base/screen/main/tab/home/bank_accounts_dummy.dart';
import 'package:fast_app_base/screen/main/tab/home/w_bank_account.dart';
import 'package:fast_app_base/screen/main/tab/home/w_ttosapp_bar.dart';
import 'package:flutter/material.dart';

import '../../../dialog/d_color_bottom.dart';
import '../../../dialog/d_confirm.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Stack(
        // 두가지의 겹쳐진 영역을 표현가능
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 60),
            child: Column(
              children: [
                BigButton(
                  "토스뱅크",
                  onTap: () {
                    context.showSnackbar("토스뱅크를 눌렀어요.");
                  },
                ),
                height10,
                RoundedContainer(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "자산".text.bold.white.make(),
                      height5,
                      //  Iterable<T> map<T>(T toElement(E e)) => MappedIterable<E, T>(this, toElement);
                      // map 을 통해 dummy data list인 bankAccounts에서 interable 을 갖고옴
                      // .toList 로 widget list 로 변환
                      // widget list 를 현재 Column 상의 children 안의 list 로 넣어야 함
                      // ... spread 연산자를 사용함
                      //
                      // map 함수는 toElement 라는 함수를 받음
                      // 본인의 type e를 원하는 타입 t로 바꿔줌
                      // 아래에서는 bankAccount의 e를 Text 로 변경
                      // ...bankAccounts
                      //     .map((e) => Text(e.accountTypeName ?? e.bank.name,
                      //         style: TextStyle(color: Colors.white)))
                      //     .toList(),
                      ...bankAccounts.map((e) => BankAccountWidget(e)).toList(),
                    ],
                  ),
                ),
              ],
            ).pSymmetric(h: 20),
          ),
          const TtosAppBar(),
        ],
      ),
    );
  }

  void showSnackbar(BuildContext context) {
    context.showSnackbar('snackbar 입니다.',
        extraButton: Tap(
          onTap: () {
            context.showErrorSnackbar('error');
          },
          child: '에러 보여주기 버튼'
              .text
              .white
              .size(13)
              .make()
              .centered()
              .pSymmetric(h: 10, v: 5),
        ));
  }
//
// Future<void> showConfirmDialog(BuildContext context) async {
//   final confirmDialogResult = await ConfirmDialog(
//     '오늘 기분이 좋나요?',
//     buttonText: "네",
//     cancelButtonText: "아니오",
//   ).show();
//   debugPrint(confirmDialogResult?.isSuccess.toString());
//
//   confirmDialogResult?.runIfSuccess((data) {
//     ColorBottomSheet(
//       '❤️',
//       context: context,
//       backgroundColor: Colors.yellow.shade200,
//     ).show();
//   });
//
//   confirmDialogResult?.runIfFailure((data) {
//     ColorBottomSheet(
//       '❤️힘내여',
//       backgroundColor: Colors.yellow.shade300,
//       textColor: Colors.redAccent,
//     ).show();
//   });
// }
//
// Future<void> showMessageDialog() async {
//   final result = await MessageDialog("안녕하세요").show();
//   debugPrint(result.toString());
// }
//
// void openDrawer(BuildContext context) {
//   Scaffold.of(context).openDrawer();
// }
}
