enum EnumLoginStatus {
  loginSuccessful(1),
  newUserLogin(2),
  invalidToken(3),
  incorrectPassword(4);

  const EnumLoginStatus(this.value);

  final int value;
}

enum EnumRoles {
  none(0),
  store(1),
  customer(2),
  admin(3);

  const EnumRoles(this.value);

  final int value;
}

enum EnumFormMode {
  view(0),
  modify(1),
  insert(2);

  const EnumFormMode(this.value);

  final int value;
}

enum EnumLookupTable {
  entityType(1),
  storeType(2),
  productCategory(3),
  PackagingType(4),
  dietType(5);

  const EnumLookupTable(this.value);

  final int value;
}

enum EnumTimeCategory {
  timeFron(1),
  timeTo(2);

  const EnumTimeCategory(this.value);

  final int value;
}

enum EnumOrderStatus {
  paymentVerificationPending(1),
  paymentRejected(2),
  payrentVerified(3),
  readyToPick(4),
  picked(5),
  delivered(6),
  cancelled(7);

  const EnumOrderStatus(this.value);

  final int value;
}

enum EnumPaymentStatus {
  pending(1),
  rejected(2),
  verified(3);

  const EnumPaymentStatus(this.value);

  final int value;
}

enum EnumHomePagePanel {
  BakedGoods(1),
  Groceries(2),
  Meals(3), //
  Preference(4),
  Favorite(5),
  SoldOut(6),
  Remaning(7),
  Recommend(8); //

  const EnumHomePagePanel(this.value);

  final int value;
}

enum EnumProductFilterSoldStatus {
  HideSold(1),
  ShowSold(2);

  const EnumProductFilterSoldStatus(this.value);

  final int value;
}
