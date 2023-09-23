import 'package:fast_app_base/screen/main/tab/home/banks_dummy.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';

final bankAccountShinhan1 =
    BankAccount(bankShinhan, 30000000, accountTypeName: '신한 주거래 우대통장(저축예금)');
final bankAccountShinhan2 =
    BankAccount(bankShinhan, 500000000, accountTypeName: '저축예금');
final bankAccountShinhan3 =
    BankAccount(bankShinhan, 200000000, accountTypeName: '저축예금');
final bankAccountKakao1 =
    BankAccount(bankKakao, 10000000, accountTypeName: '입출금통장');
final bankAccountTtos1 = BankAccount(bankTtos, 5000000);

// list로 만들어 줌 명시적으로 타입을 주지 않아도 dart가 추론하여 자동으로 type 설정
final bankAccounts = [
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountKakao1,
  bankAccountTtos1
];

// test code를 넣어 main을 실행시켜본 뒤 실행이 되지 않는다면 import의 depth를 확인해볼 것,
// 참조에 대한 정리 필요

// main() {
//   // print(bankAccounts[0].accountTypeName);
//
//   for (final item in bankAccounts) {
//     print(item.accountTypeName);
//   }
// }

// List type을 명시할 경우
// final List<BankAccount> bankAccounts = [
//   bankAccountShinhan1,
//   bankAccountShinhan2,
//   bankAccountShinhan3,
//   bankAccountKakao1,
//   bankAccountTtos1
// ];

// List

// main(){
//   // print(bankAccounts[0].accountTypeName);
//
//   for (final item in bankAccounts) {
//     print(item.accountTypeName);
//   }
// }

// Map
// main() {
//   final shinhanBank = bankMap["shinhan1"];
//   // print(shinhanBank == bankAccountShinhan1);
//
//   // entries라는 interable 형태의 객체를 가져오면 전체 순회를 시작하게 됨
//   // entry는 키참조, value 가져오기 가능
//   for(final entry in bankMap.entries) {
//     // accountTypeName 이 null이라면 "" 를 대신 넘김 ??
//     print(entry.key + ';' +(entry.value.accountTypeName ?? ""));
//
//   }
// }
// final bankMap = {
//   // 순서가 보장되지 않기 때문에 map의 형태에 따라 사용을 조심해야함
//   "shinhan1": bankAccountShinhan1,
//   "shinhan2": bankAccountShinhan2,
// };

// Set

// List와 map의 중간

// 데이터를 가져오는 용도보다는 데이터가 있는지 체크하는 용도로 많이 사용됨
// main() {
//   // contains : 데이터가 있다면 true 반환
//   // List와 Set의 contains 의 차이 : 시간 복잡도
//   // List는 중복을 허용하고 Map 과 Set은 중복을 허용하지 않음
//   // Set은 중복 데이터를 넣어도 알아서 소거됨 .count로 개수 확인시 중복제거된 숫자가 나옴
//
//   // Set contains 시간복잡도 O(1)
//   // Set에서 contains 사용시 = Set안의 hashtag를 통해 즉시 item 존재 여부 체크
//   print(bankSet.contains(bankAccountShinhan1));
//   // List contains 시간 복잡도 : O(n)
//   // List에서 contains 사용시 = 모든 list item을 돌며 해당 item이 있는지 여부 체크
//   print(bankAccounts.contains(bankAccountShinhan1));
//
//   // List를 Set으로
//   bankAccounts.toSet();
//
//   // Set을 List로
//   bankSet.toList();
// }
//
// final bankSet = {
//   bankAccountShinhan1,
//   bankAccountShinhan2,
//   bankAccountShinhan3,
//   bankAccountKakao1,
//   bankAccountTtos1
// };
