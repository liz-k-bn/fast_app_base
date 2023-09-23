class Bank{
  // class 는 구조 객체가 아닌 구조 객체를 위한 설계도
  // 설계 안에 어떤 필드들이 포함되어 있는지를 나열
  // 실제 값을 담아 객체를 생성 수 있게 constructor가 필요함
  final String name;
  final String logoImagePath;

  Bank(this.name, this.logoImagePath);

}
// Bank class를 이용한 객체 생성이 이루어진 후에 사용 가능
// final bank1 = Bank("카카오뱅크, assets/image/bank1.png");