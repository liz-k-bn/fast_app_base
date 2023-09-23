import 'package:flutter/material.dart';

class BigButton extends StatelessWidget {
  final String text;
  // final void Function() onTap;
  // 아무것도 돌려주지 않는, papameter가 없는 function type
  final VoidCallback onTap;

  const BigButton(this.text, {super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
