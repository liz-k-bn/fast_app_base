import 'vo_bank.dart';

class BankAccount {
  // 변할 수 없는 것 : final
  // 변할 수 있는 것
  final Bank bank;
  int balance;

  // 계좌 이름이 그냥 은행 이름을 참조하여 별도의 계좌 이름을 넣지 않을 수도 있음
  // null 이 가능하도록 처리 - Nullable
  final String? accountTypeName;

  BankAccount(
    this.bank,
    this.balance, {
      // account type name은 nullable로 Optional하게 입력하도록 처리 => {}
    this.accountTypeName,
  });
}
