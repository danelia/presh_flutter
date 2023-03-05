import 'dart:convert';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:preshfood_app/app/common/enums.dart';

class ResultData {
  final bool success;
  dynamic result;
  final int statusCode;
  final String? errorMsg;
  final List<String>? errorList;

  ResultData({
    required this.success,
    required this.statusCode,
    this.errorMsg,
    this.result,
    this.errorList,
  });

  factory ResultData.fromJson(Map<String, dynamic> json) {
    return ResultData(
      success: json['success'],
      errorMsg: json['errorMsg'],
      statusCode: json['statusCode'],
      result: json['result'],
    );
  }
}


class UserAuthencate {
  String? userToken;
  int? userID;
  int? loginStatus;
  String? loginStatusDescripon;
  String? emailId;
  int? countryID;
  bool? emailVerified;
  List<Roles>? userRole;
  ExternalLogin? ExternalLogin;
  String? deviceID;
  String? ipAddress;

  UserAuthencate({
    this.loginStatus,
    this.emailVerified, this.emailId,
    this.loginStatusDescripon,
    this.userID, this.countryID,
    this.userToken, this.userRole,
    this.ExternalLogin, this.deviceID, this.ipAddress,
  });


  factory UserAuthencate.fromJson(Map<String, dynamic> json) {
    return UserAuthencate(
      loginStatus: json['loginStatus'],
      emailVerified: json['emailVerified'],
      loginStatusDescripon: json['loginStatusDescripon'],
      emailId: json['emaild'],
      userID: json['userID'],
      userToken: json['userToken'],
      userRole: json["userRole"] != null
          ? List<Roles>.from(json["userRole"]?.map((x) => Roles.fromJson(x)))
          : null,
    );
  }


  Map<String, dynamic> toJson() =>
      {
        "emailId": emailId,
        "countryID": countryID,
        "ExternalLogin": ExternalLogin,
        "deviceId": deviceID,
        "ipAddress": ipAddress,
      };
}


class ExternalLogin {
  String? accessToken;
  String? idToken;
  int? loginProviderID;

  // ExternalLogin({
  // ? List<Roles>.from(json["userRole"]?.map((x) => Roles.fromJson(x)))
  // factory UserAuthencate.fronJson(Map<String, dynamic> json) {
  // emailVerified: json['emailVerified'],
  // loginStatus: json['loginStatus'],
  // }
  factory ExternalLogin.fromJson(Map<String, dynamic> json) {
    return ExternalLogin(
      accessToken: json['accessToken'],
      idToken: json['idToken'],
      loginProviderID: json['loginProviderID'],
    );
  }


  Map<String, dynamic> toJson() =>
      {
        "accessToken": accessToken,
        "idToken": idToken,
        "loginProviderID": loginProviderID,
      }
}

class User {

  int? id;
  String? securityToken;

  String? userName;
  String? fullName;
  String? emailId;
  bool? emailVerified;
  String? emailVerificationToken;
  String? deviceID;
  String? ipAddress;
  String? phone;
  String? phoneCountryCode;
  int? countryID;
  String? password;
  String? newPassword;
  bool? showPreferenceProduct;
  ExternalLogin? externalLogin;

  User({
    this.emailId, this.password,
    this.newPassword, this.securityToken,
    this.id, this.emailVerified,
    this.emailVerificationToken, this.phone, this. phoneCountryCode, this.deviceID, this. countryID, this.ipAddress, this.userName, this.fullName, this.showPreferenceProduct, this.externalLogin,
});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        securityToken: json['securityToken'],
        emailId: json['emailId'],
        id: json['id'],
        emailVerified: json ['emailVerified'],
        deviceID: json['deviceID'],
        countryID: json ['countryID'],
    ipAddress: json['ipAddress'],
        phone: json[ 'phone'] ?? '',
        phoneCountryCode: json['phoneCountryCode'] ?? '',

        password: json['password'],

        fullName: json ['fullName'] ?? '',
        showPreferenceProduct: json['showPreferenceProduct']);
    }

  Map<String, dynamic> toJson () =>
      {
        "emailId": emailId,
        "phone": phone,
        "phoneCountryCode": phoneCountryCode,
        "countryID": countryID ?? 0,
        "password": password,
        "securityToken": securityToken,
        "fullName": fullName,
        "showPreferenceProduct": showPreferenceProduct,
        "emailVerificationToken": emailVerificationToken,
        "externalLogin": externalLogin,
        "newPassword": newPassword,
        "ipAddress": ipAddress,
        "deviceID": deviceID,
      };
}


class Store {

  int? id;
  String? name;
  int? UserID;
  int? entityID;

  User? user;
  int storeTypeID;
  String zipCode;
  String addressLine;
  String city;
  double? longitude;
  double? latitude;
  String? vat;
  bool? isVerified;
  double? commissionRatio;
  int? entityTypeID;
  int? countryID;
  bool? step1;
  bool? step2;
  bool? step3;
  bool? step4;
  bool? step5;

  String? phone;
  String? phoneCountryCode;
  
  String? logo;
  List<Product>? product;
  int? totalOrder;
  String? serviceDuration;
  bool stepCompleted;
  String? accountTitle;
  String? accountNumber;
 /// TODO Stopped here
  Store({
  this.id,

  this.name,

  this.userID,

  this.entityID,

  this.user,

  this.storeTypeID

  =

  ,

  this.zipCode

  =

  '

  ',

  this.addressLine

  =

  '

  *,

  this.city

  =

  '

  *,

  this.name,

  this.name,

  this.vat,

  this.isVerified,

  this.commissionRao,

  this.entyTypelD,

  this.countrylD,

  this.step1,

  this.step2,

  this.step3,

  this.vat,

  this.vat,

  this.phone,

  this.phoneCountryCode,

  this.logo,

  this.product

  =

  const

  [

  ],

  this.totalOrder = ©,
  this.serviceDuration = '', I
  this.phone,
  this.accountTitle = '',
  this.phone,
  jo H
  factory Store. fronJson(Map<String, dynamic> json) {
  return Store(
  id: json[*id'],
  name: json['name'],
  userID: json['userID'],
  entyID: json['entyID'],
  user: json['user'],
  userID: json['userID'],
  zipCode: json['zipCode‘'] 2? '',
  addressLine: json('addressLine'] 2? '*,
  city: json['ecity'] 2? '',
  latude: json['latude'],
  longitude: json['longitude'],
  this. totalOrder = ©,
  isVerified: json['isVerified'],
  commissionRao: json['commissionRao''] != null
  citv: deanl‘pitu*) 23
  entyID: json['entyID'],
  entyTypeID: json['entyTypelD'],
  countryID: json['countryID'],
  List<Product>? product;
  step1: json['step1'],
  String? serviceDuration;
  bool stepCompleted;
  step5: json[‘step5'],
  entyID: json[''entyID'],
  ecitv: deanl‘pitu*) 23 4
  countryID: json['countryID'],
  this.id,
  hl €
      : List<Product>. from(
  json["product"].map(
  (x) => Product.fromMap(x),
  2
  (x) => Product. fromMap(x),
  ), // List.from
  serviceDuration: json['serviceDuration'],
  20]
  accountTitle: json['accountTitle'],
  accountNumber: json['accountNumber'],
  List<Product>? product;
  int? totalOrder;
  String? serviceDuration;
  bool stepCompleted;
  String? accountTitle;
  'id': id ?? ©,
  'user': user,
  String? accountTitle;
  this.id,
  ‘addresslLine': addressLine, 
  ‘eity': city,
  ‘latude': latude,
  ‘longitude': longitude,
  ‘vat': vat,
  ‘isVerified': isVerified,
  ‘countryID': countrylD,
  'step1': step1,
  'addressLine'': addresslLine,
  'step3': step3,
  'step4': stepé,
  ‘step5': step$,
  ‘phone': phone,
  ‘phoneCountryCode': phoneCountryCode,
  ‘logo': logo,
  ‘accountTitle': accountTitle, 
  ‘accountNumber': accountNumber,
  IH
  ‘accountTitle': accountTitle,
  String serialize() => json.encode(toJson());
  Store deserialize(String json) => Store.fromJson(jsonDecode(json));
  }
  this.storeld = 0,
  class StoreWeeklySchedule {
  StoreWeeklySchedule({
  String? ipAddress;
  this.weekDayId = 0,
  this.storeld = 0,
  Store deserialize(String json) => Store.fromJson(jsonDecode(json));
  this.meTo = '',
  this.productQty,
  this.isAcve = false,
  this.weekDayName,
  this.pickupmeDaily,
  Bi
  this.pickupmeDaily,
  int? 1d;
  int? weekDayld;
  this.productQty,
  this.weekDayName,
  String meTo;
  int? productQty;
  TextEdingController productQtyController = TextEdingController(text: '');
  bool isAcve;
  String? weekDayName;
  List<PickupmeDaily>? pickupmeDaily;
  String meTo;
  factory StoreWeeklySchedule.froptson(String str) =>
  String meTo;
  OH
  String toJson() => json.encode(toMap());
  meFrom: json["meFrom"] 2? '',
  factory StoreWeeklySchedule.fromMap(Map<String, dynamic> json) =>
  StoreWeeklySchedule(
  id: json["1d"],
  weekDayId: json["weekDayID"],
  storeld: json[“storeID"],
  meFrom: json["meFrom"] 2? **,
  String toJson() => json.encode(toMap());
  productQty: json(“productQty“],
  isAcve: json["isAcve"] ?? false.
  weekDayName: json["weekDayName"],
  );
  1
  id: json["id"],
  "id": id,
  "weekDayID": weekDayld,
  “storelD": storeld,
  logo: json['logo''],
  “meTo": meTo,
  'step4': step4,
  'stepS': step5,
  ‘phone': phone,
  'accountTitle': accountTitle,
  ‘logo': logo,
  ‘accountTitle': accountTitle,
  'accountTitle': accountTitle,
  11
  ‘accountNumber': accountNumber,
  String serialize() => json.encode(toJson());
  }
  }
  return

  json

      .encode

  (

  list

  );
}9

H

this

.

totalReserved

,}
StoreDashboardModel
(
{}this
. totalSold,
‘step4'': stepd,
'step5': steps,
‘phone': phone,
‘phoneCountryCode': phoneCountryCode,
‘logo': logo,
‘accountTitle': accountTitle,
'accountNumber': accountNumber,
FH
‘phoneCountryCode': phoneCountryCode,
String serialize() => json.encode(toJson());
factory StoreDashboardModel.fromMap(Map<String, dynamic> json) =>
StoreDashboardModel (
totalReserved: json["totalReserved"],
totalSold: json["totalSeld“],
J;
}:
factory StoreDashboardModel.fronMap(Map<String, dynamic> json) =>
"totalReserved": totalReserved,
factory StoreDashboardModel.fromMap(Map<String, dynamic> json) =>
factory StoreDashboardModel.fronMap(Map<String, dynamic> json) =>
}
I
class Product {
Product ({
this.storeld = 8,
this.storeld = 8,
this.id = 0,
this.name = '°',
}
this.isBuffet,
this.descripon = '*,
thie desacrinnnTemnlataTh
this.preDayQty = 8,
this.qty = 8,
this.actualPrice = 6.0,
this.discountedPrice = 0.0,
this.baseCurrency = '',
this.backgroundImage = '*,
this.descripon = '',
this.discountedPrice = 0.0,
this.pickUpmeFrom,
this.pickUpmeTo,
this.isAvailable,
this.addionalRecommendaon = '',
this, storeName = "",
this.storelLogo = "“,
this.distance,
this.isFavorite = false,
this.pickUpmeFrom,
this.distancelabel = '',
this. meLabel = '',
this.qtylLabel = '',
this _starelddress =
this.qtyLabel = '',
this.preferenceDiet = '',
this.canglabel = '',
this.distance,
this _nackaninaTvne
this.meLabel = '',
this.homePagePanel,
PA
// if (this.baseCurrency == '') {
// this.baseCurrency = appSetngs.appCulturelnfo.currency;
// }
}
int? id;
int? 1d; I
int? storeld;
DA
String? name;
int? preferenceDieD;
bool? isBuffet = false:
// this.baseCurrency = appSetngs.applulturelnfo.currency;
int? descriponTemplatelD;
int? preDayQty;
int? qty;
}
mekrom: Json|“meFrom") 27 '°,
int? preferenceDietlID;
String? backgroundImage;
String pickInformaon;
int? packagingTypeld;
class Product {
Product ({ I
this.id = @,
this.storeld = 8,
this.categoryld = 0,
int? storeld;
this.storeld = 0,
String pickInformaon;
double? rang;
String distancelabel;
String melLabel;
String qtyLabel;
String storeAddress;
String categoryName;
String preferenceDiet;
String ranglLabel;
double? rang;
String? nackaninoTvne:
}
class Product {
class Product {
Product ({
this.storeld = 8,
}
this.categoryld = 0,
this.name = '°',
}
this.isBuffet,
class Product {
class Product {
Product ({
this.id = ©,
descriponTemplateID: json["descriponTemplateID"],
preDayQty: json[“preDayQty"],
this.name = '°',
this.preferenceDieD = 0,
this.isBuffet, I
baseCurrency: json["baseCurrency"],
backgroundImage: json[“backgroundImage®] 2? '',
pickInformaon: json[“pickInformaon®] 2? '',
'phoneCountryCode': phoneCountryCode,
pickUpmeFrom: json["pickUpmeFrom"],
pickUpmeTo: json["pickUpmeTo"],
isAvailable: json["isAvailable"],
¥
‘accountTitle': accountTitle,
storeLogo: json[“"storelLogo™] 2? '*,
distance: json[“distance"],
}
rang: json["rang"],
}
This.1d = ©,
qtyLabel: json["qtyLabel™] 2? '',
this.weekDayld = 0,
this.storeld = 0,
This.1d = ©,
rangLabel: json["rangLabel"] 2? *'',
this.productQty,
this.isAcve = false,
this.weekDayName,
this.pickupmeDaily,
Bi
),
), // List.from
packagingType: json["packagingType"] 22 '',
this.productQty,
String meFrom; x2 rv
String meTo; x2 Av
int? productQty;
Map<String, dynamic> toMap() => {
"id": id,
String? weekDayName;
qtyLabel: json["gtyLabel"] 2? '', T
“name": name,
“preferenceDieD": preferenceDieD,
StoreWeeklySchedule. fromMap(json.decode(str)); x2 Av
Hi
"descriponTemplateID": descriponTemplatelD,
“preDayQty": preDayQty,
“aty": aty,
StoreWeeklySchedule( w2 Av
"discountedPrice"": discountedPrice,
“baseCurrency": baseCurrency,
distance: json["distance"],
meFrom: json["meFrom"] 2? '',
String toJson() => json.encode(toMap()); ZL
productQty: json["productQty"],
“pickUpmeTo": pickUpmeTo,
“isAvailable": isAvailable,
"addionalRecommendaon": addionalRecommendaon,
“storeName": storeName,
“storelLoge": storelogo,
"distance": distance, T
“weekDayID": weekDayld,
“pang": rang,
“meFrom": meFrom, ¥2 Av
“meTo": meTo,
baseCurrency: json["baseCurrency"],
"isAcve": isAcve,
pickInformaon: json[“pickInformaon®] 2? '°',
packagingTypeld: json[“packagingTypeID"],
}
storeName: json["storeName“] 2? '',
isAvailable: json["isAvailable"],
ProductWithLookup({
baseCurrency: json["baseCurrency"],
1ist.add(element.toMap()); Xia x
}
2 ~~
this.productDesc,
9H
List<ProductDescripon>? productDesc;
List<Product>? products:
this.dietType,
List<Lookup>? dietType;
} 2 rv
this.totalSold, x2 Av
v2 Av
backgroundImage: json[“backgroundImage®] 2? '',
pickInformaon: json["pickInformaon™] 2? '',
packaqinaTypeld: json[“packaainqTypeID"],
factory ProductWithLookup.fromMan(Map<String. dynamic> json) =>
factory StoreDashboardModel. fromJsan(String str) =>
isAvailable: json["isAvailable"],
addionalRecommendaon: json[“addionalRecommendaon"],
baseCurrency: json["baseCurrency"],
“packagingType"": packagingType,
dietType:
‘step5': stepS, x2 Av
totalReserved: json["totalReserved"],
json[“"packageType"]).map((x) => Lookup, framMap(x))), // List.from
productDesc: List<ProductDescripon>.from=(
hl
dietType:
“totalReserved"": totalReserved, 2 Av
“totalSold“: totalSold,
};
ProductFilter({
this.categoryld = const [],
this.preferenceDietlId,
this.pickFrom,
this.pickTo,
this.latude = 0.0,
this.latude = 0.0,
this.longitude = 0.0,
this.radius = 10,
this.pageSize = 25,
this.pagelndex = 1,
this.isFavorite = false,
this.isHomePage = false,
this.soldStatus = -1,
this. homePagePanellD,
this.storeName = '',
OH
int pagelndex;
this.pagelIndex = 1,
this.pagelndex = 1,
String? pickFrom;
String? pickTo;
bool? isHideSold;
this.isFavorite = false,
double longitude;
double radius;
String? pickFrom;
int pagelndex;
double radius; I
int pagelndex;
int? soldStatus;
int? homePagePanellD;
String storeName;
String storeName;
this.pickTo,
ProductFilter.fromMap(json.decode(str));
int? soldStatus;
String toJson() => 1son.encode(toMap()):
this.pagelndex = 1,
this.pagelndex = 1,
preferenceDied: json["preferenceDieD"],
pickFrom: json(“pickFrom").
pickTo: json[“pickTo"],
isHideSold: json["isHideSold“],
latude: json["latude"],
longitude: json["longitude"],
radius: json["radius"],
“packagingTypeID": packagingTypeld,
pagelndex: json["pagelndex“],
isFavorite: json["isFavorite"],
"isAvailable": isAvailable,
); // ProductFilter
I
isHideSold: json[“"isHideSold"],
"categoryID": List<dynamic>.from(categoryId.map((x) => x)),
"preferenceDieD": preferenceDietld,
"pickFrom"": pickFrom,
isFavorite: json["isFavorite"],
"isHideSold": isHideSold,
ProductFilter({
"rangRank": rangRank,
this.preferenceDietld,
this.pickFrom,
this.pickTo,
this.isHideSold,
this.latude = 0.0,
"soldStatus": soldStatus,
ProductFilter({
this.productCat,
};
}
this.productlID,
class ProductReview {
ProductReview({
this. id,
this.orderDetaillD,
this.productlD,
+
+
ProductFilter({
this.categoryld = const [],
this.preferenceDietld,
this.pickFrom,
this.pickTo,
ProductFilter({
this.latude = 0.9,
this.longitude = 0.0,
this.radiuvs = 10,
this.pageSize = 25,
this.categoryld = const [],
factory ProductReview. fromiMap(Map<String, dynamic> json) => ProductReview(
factory ProductReview.fromMap(Map<String, dynamic> json) => ProductReview(
this.pickTo,
3
this.latude = 0.0,
rang: json[“rang"],
ProductFilter({
this.pageSize = 25,
Map<String, dynamic> toMap() => {
// "1d": id,
“orderDetaillD": orderDetaillD,
// "producD": producd,
Ctrninn? arenuntlumban ©
String? accountNumber;
}
1
Map<String, dynamic> toMap() => {
ProductDescripon({
this.id,
this.name,
this.descripon,
this.isTemplate,
this.isCat,
this. languageId,
this.categoryImage,
19H
this.id.
int? 1d
String? name;
String? descripon;
bool? isTemplate;
bool? isCat;
int? languageld;
List<CategoryImage>? categorylmage;

factory ProductDescripon.fronJson(String str) =>
List<CategoryImage>? categorylmage;
String toJson() => json.encode(toMap());
isTemplate: json["isTemplate®],
factory ProductDescripon.fronMap(Map<String, dynamic> json) =>
ProductDescripon(
id: json[“id"],
name: json["name"],
descripon: json["descripon"],
isTemplate: json["isTemplate“],
String toJson() => json.encode(toMap());
this.id,
categoryImage: json["categoryImage"] != null
? List<CategoryImage>.from(
json[“categoryImage"]?.map(
(x) => Categorylmage.fromMap(x),
) be
) // List.from
).
); // ProductDescripon
categoryImage: json["categoryImage"] !'= null
Map<String, dynamic> toMap() => {
"30%: 30.
“name": name,
“descripon": descripon,
“isTemplate": isTemplate,
"isCat“: isCat,
"languageID": languageld,
1d",
};
bop fui BE
class ProductFavorite {
Map<String, dynamic> toMap() => {
// "id": id,
“orderDetaillD": orderDetaillD,
// "producD": producD,
int? id;
| 4
}
bool isSelected;
class ProductDescripon {
ProductDescripon({
ProductFavorite.fromMap(json.decode(str));
userId: json["userID"],
String toJson() => json.encode(toMap());
String toJson() => json.encode(toMap()); 1
factory ProductFavorite.fronfap(Map<String, dynamic> json) => ProductFavorite(
id: json["id"],
producd: json["producD"],
userId: json["userID"],
ProductFavarite,fromMap(json.decode(str));
);
Map<String, dynamic> toMap() => {
// "1d": id,
“orderDetaillD": orderDetaillD,
String? serviceDuration;
“rang": rang,
| H
}
1
class ProductDescripon {
Map<String, dynamic> toMap() => {
fataanruTmanal{
this.id,
this.categoryID,
this.imageURL,
“isCat": isCat,
Name. Jsun| name |,
12H
X22 Av
CategoryImage({
I
CategoryImage.fromMap(json.decode(str));
categoryID: json[“categoryID"],
String toJson() => json.encode(toMap());
id: json["id"],
factory CategorylImage.frontMap(Map<String, dynamic> json) => Categorylmage(
id: json["id"],
categoryID: json[“"categoryID"],
factory CategorylImage.fronlson(String str) =>
);
"id": 1d,
Map<String, dynamic> toMap() => {
"id": 1d,
"categoryID": categoryID,
"imageURL": imageURL,
};
}
X22 Av
"categoryID": categoryID,
| i
int? userlD;
int? rolelD; I
bool? isAcve;
String? roleName;
id: json['1d'],
Roles({this.id, this.userID, this.isAcve, this.roleName, this.rolelD});
rangRank: json["rangRank"] == null $2 rv
factory Roles.fromJson(Map<String, dynamic> json) {
int? userlD;
id: json['id'],
userID: json['userID'],
rolelID: json['roleID'],
isAcve: json['isAcve'],
roleName: json['roleName'],
3:
userID: json['userID'],
I
Map<String, dynamic> toMap() => {
userID: json['userID'],
"userID": userID,
"roleID": rolelD,
"isAcve": isAcve,
categoryID: json["categoryID"],
pickTo: json["pickTe"],
}
I
class UserPreference {
int? preferencelD;
"rolelID": rolelD,
pageIndex: json[“"pageIndex"], x2 Av
int? type;
"isAcve": isAcve,
String? typeDescripon;
String? startme;
String? endme;
"distance": distance,
String? icon;
“storelD": storeld, x2 Av
bool showInFilter;
String? name;
UserPreference ({
String toJson() => json.encode(toMap());
string toJson() => json.encode(toMap());
String toJson() => json.encode(toMap());
id: json["1d"],
factory CategorylImage.fromMap(Map<String, dynamic> json) => Categorylmage(
id: json["id"],
"soldStatus": soldStatus,
factory CategorylImage.fronlson(String str) =>
ib]
this.icon,
*hie nradurtNace
this.showInFilter = true,
class ProductReview { 2 rv
ProductReview({
factory UserPreference.fromJson(Map<String, dynamic> json) {
return UserPreference(
this.productlD,
this.icon,
this. icon, x2 Av
this.latude = 0.60,
image: json['image'],
int? id; x2 Av
String toJson() => json.encode(toMap());
endme: json['endme'],
factory CategoryImage.fromMap(Map<String, dynamic> json) => Catggorylmage(
icon: json['icon'],
categoryID: json[“"categoryID"],
factory CategorylImage,fromJson(String str) =>
b |
Map<String, dynamic> toJson() {
return {
“preferencelD": preferencelD,
factory CategorylImage,fromfap(Map<String, dynamic> json) => Categorylnmage(
“name": name,
"type": type,
imageURL: json["imageURL"],
“typeDescripon": typeDescripon, 1
“descripon": typeDescripon,
“startme": startme,
"endme": endme,
"isSelected": isSelected,
"showInFilter": showInFilter
i
}
    :
"descripon": typeDescripon,
};
int totalReserved:
I
CustomerDashboard({ I
this.totalReserved = 0, I
3H
int totalReserved;
CustomerDashboard.fromMap(json.decode(str));
factory CustomerDashboard.fromJson(String str) =>
String toJson() => json.encode(toMap());
totalReserved: json[“totalReserved"],
factory CustomerDashboard.fromMap(Map<String, dynamic> json) =>
JSUNL raLIngRanK jap
totalReserved: json["totalReserved"],
I
}
Map<String, dynamic> toMap() => {
"totalReserved": totalReserved,
totalReserved: json[“totalReserved"],
}
this.dietary,
rlass GatllserPrefarencesResnanse {
CustomerDashboard({
this.totalReserved = 0,
List<UserPreference>? pickupSlot = [];
bool showPreference;
1
GetUserPreferencesResponse({
bool showPreference;
bool showPreference;
this.pickupSlot,
this.showPreference = false,
OH
“isSelected": isSelected,
factory GetUserPreferencesResponse.fronlson(Map<String, dynamic> json) {
return GetUserPreferencesResponse(
food: json['food''] != null
? List<UserPreference>.from(
this.pickupSlot,
this.pickypSlot,
dietarv: json('dietarv''l != null
? List<UserPreference>.from(
Json['dietary'']?.map((x) => UserPeeference.fromJson(x))) // List.from
    : null,
pickunSlot: json('opickupnSlot']l != pull
dietary: json['dietary''] != null
"isFavorite": isFavorite,
© null,
“qtyLabeL": gtyLabel,
“packagingType": packagingType,
}
"startme": startme,
"endme": endme,
"isSelected": isSelected,
"showInFilter": showInFilter
}; I
}
}
factory CategoryImage,fromJson(String str) =>
class CustomerDashboard {
this.isAcve,
this.sequenceld,
this.language,
this.sequenceld,
int? lookupTableld;
1d: json[*id"], RS
this.isAcve,
factory Roles. fromJson(Map<String, dynamic> json) { x2 Av
this.isAcve,
String? displavValue:
bool? isDefault;
"startme": startme,
"endme": endme,
"isSelected": isSelected,
}
¥
}
}
}
class CustomerDashboard {
id: json["id"],
lookupTableld: json[“lookupTableID"],
“endme": endme,
accessToken: json('accessToken').
“showInFilter": showInFilter
};
id: json["id"],
}
};
id: json["id"],
Map<String, dynamic> toMap() => {
"347:
"lookupTableID": lookupTableld,
"languageID": languageld,
"languagelID": languageld,
"displayValue": displayValve,
“isDefault": isDefault,
"isAcve": 1isAcve,
“sequenceID": sequenceld,
"language": language,
};
"idToken": idToken,
I
Mace DisbunmaNadu J
String? label;
TextEdingController? textController;
meOfDay meOfDay;
EnummeCategory? type;
I
PickupmeDaily({
this. label,
this. textController,
this. label,
this. type,
jo H
PickupmeDaily({
}
class Country {
class Country {
int? 1d;
String? countryCode;
String? currency;
String? name;
class Order {
this.id = 6,
class Order {
order ({
int? id;
"language": language,
"language": language,
this.totalPrice = 68.0,
this.totalActualPrice = 0.0,
this.date,
this.exchangeRate = 0.0,
this.date,
this.currency = '',
this.totalQty = 0,
this.date,
this.statusID = 7,
this. isRefund,
this.comments = '',
this.statusComments = '',
this.orderDetail = const [],
this.statusIDDescripon = '*,
this.redirectURL = '',
this.storeName = '*,
this.isRefund,
this.meLabel = '',
this.storelogo = '',
Map<String, dynamic> toMap() => {
"5d": 3d;
“LlookupTableID": lookupTableld,
"displayValve": displayValue,
"lookupValue": lookupValue,
"displayValuve": displayValue,
"isDefault": isDefault,
"isAcve": isAcve,
"sequenceID": sequenceld,
int customerld;
String? date;
double totalPrice;
double totalActualPrice;
double totalTaxAmount;
double exchangeRate;
String currency;
int totalQty;
thie arrnuntNatailDnafanancal M11
Map<String, dynamic> toMap() => {
String comments;
String statusComments;
List<OrderDetail> orderDetail;
String statusIDDescripon;
“displayValue": displayValue,
int? id:
String storeAddress;
String? userName;
String pickInformaon;
int? storelD;
double rang;
String? transaconld;
int? userPaymentCardID;
String pickInformaon;
bool? isAllowCancel;
bool? isSavePaymennfo;
String toJson() => json.encode(toMap());
dds Seanfviam
factory Order. fronMap(Map<String, dynamic> json) => Order(
id: json["id"] 2? @,
customerId: json["customerID"] ?? 8,
date: json["date"] 2? '',
totalPrice: json[“"totalPrice"] 2? 9.0,
totalActualPrice: json["totalActualPrice"] ?? 0.0,
totalTaxAmount: json["totalTaxAmount"] 2? 0.0,
exchangeRate: json["exchangeRate"] 2? 0.9,
baseCurrency: json["baseCurrency"] 2? '',
currency: json["currency"] 2? '',
totalQty: json["totalQty"] 2? ©,
orderNnumber: json["orderNnumber"] ?? '*,
statusID: json["statusID"] 2? EnumOrderStatus.cancelled.valuve,
isRefund: json["isRefund"],
comments: json[“"comments*] 2? '‘,
exchangeRate: json["exchangeRate"] 2? 0.0,
orderDetail: json["orderDetail®] == null
    : 1
    : List<OrderDetail>.from(
json[“orderDetail™].map(
(x) => OrderDetail.fromMap(x),
Y
), // List.from
2 0
redirectURL: json["redirectURL"] 2? '',
? []
ou [il
meLabel: json["meLabel™] 2? '',
pickInformaon: json["pickInfermaon®] 2? '',
storeLogo: json[“"storelLogo“] ?? '',
storeID: json[“storeID"] ?? -1,
rang: json["rang®] ?? -1,
transaconld: json["transaconld"],
isAllowCancel: json["isAllowCancel],
); // Order
meLabel: json["melLabel™] 22? '°',
Map<String, dynamic> toMap() => {
"id": id,
“customerID": customerld,
// "date": date,
“customerID": customerld,
“totalActualPrice": totalActualPrice,
“totalPrice": totalPrice,
String? phone;
“baseCurrency": baseCurrency,
"id": id,
"totalQty": totalQty,
“orderNnumber": orderNnumber,
“statusID": statusID,
"isRefund": isRefund,
“comments": comments,
"statusfComments"- statusfnmmants
“orderDetail": List<dynamic>.from(orderDetail.map((x) => x.toMap())),
String? ipAddress;
“rang": rang,
“orderNnumber": orderNnumber,
“totalQty": totalQty, I
3
String toJdson() => json.encode(toMap());
factory Order. fronMsp(Map<String, dynamic> json) => Order(
OrderDetail({
this.id = 6,
this.orderld = 0,
totalPrice: json[“"f$otalPrice"] ?? 6.0,
totalActualPrice: json["totalActualPrice"] 2? 0.0,
totalTaxAmount: json[“totalTaxAmount"] ?? 0.0,
this.actuvalUnitPrice = 0.0,
redirectURL: json["redirectURL"] 2? '',
this.productName = '*,
(x) => OrderDetail.fromMap(x),
this.userRang = 0.0, I
19H
this.actvalUnitPrice = 0.0,
int id;
this.actuvalUnitPrice = 0.0,
int productld;
SLuI'enNdmE. JSUIL SLurenamne § rr Nl
String toJdson() => rien. nds CABeBLIT
double actualUnitPrice;
factory Order. fronlap(Map<String, dynamic> json) => Order(
id: json["id"] ?? 0,
customerId: json["customerID"] ?? 9,
String? ipAddress;
totalPrice: json[“"totalPrice"] 2? 0.60,
totalActualPrice: json["totalActualPrice"] ?? 0.0,
totalTaxAmount: json["totalTaxAmount"] 2? 0.0,
UserraymenLLaruiv . userraymenlcaruiv,
String toJson() => json.encode(toMap());
unitPrice: json["unitPrice"],
factory OrderDetail.fromMap(Map<String, dynamic> json) => OrderDetail(
id: dsnnl"id"1
factory OrderDetail.fromMap(Map<String, dynamic> json) => OrderDatail(
producd: json[“producD"],
qty: json[“"qty“],
UserraymenLLaruiv . userraymenlcaruiy,
actvalUnitPrice: json["actvalUnitPrice"],
comments: json["comments"] 2? '',
vserRang: json["userRang*] 2? 0.8,
currency: json("currency"l.
vserRang: json[“"userRang*] 2? 0.8,
)i
comments: json["comments"] 2? '',
comments: json["comments"] ?? '',
bi [ll ©
comments: json["comments"] 2? '',
“producD": productld,
"qty": qty,
"onitPrice": unitPrice,
“"actualUnitPrice": actuvalUnitPrice,
"comments": comments,
“userRang": userRana,
statusID: json[“statusID"] ?? EnumOrderStatus.cancelled.value,
}
I
"atv": atv.
OrderFilter({
this.id,
this.customerld,
this.storeld,
this. fromDate,
“userRang": userRang,
this.statusId,
this.statusld,
this.orderNumber,
this id
1
int? id;
int? customerld;
String? storeld;
String? fromDate;
String? toDate;
int? statusld;
String? toDate;
String? orderNumber;
"qty": qty,
factory OrderFilter.fromJson(String str) =>
OrderFilter.fromMap(json.decode(str));
I
"actuvalUnitPrice": actualUnitPrice,
customerId: json["customerID"],
factory OrderFilter.fronMap(Map<String, dynamic> json) => OrderfFilter(
id: denanl™id"]
customerId: json["customerID"],
storeld: json["storelD"],
orderFilter.fromMap(json.decode(str));
toDate: json[“"toDate"],
statusld: json[“"statusID"],
paymentStatusId: json[“paymentStatusID"],
orderNumber: json["orderNumber®],
Ys
I
Map<String, dynamic> toMap() => {
statusld: json["statusID"],
"customerID": customerld,
statusld: json[“"statusID"],
statusId: json["statusID"], T
comments: json["comments"] 2? '',
productName: json["productName"],
currency: json["currency"],
userRang: json["userRang"] 2? 0.89,
J;
Map<String, dynamic> toMap() => {
Map<String, dynamic> toMap() => {
gd®: sa,
comments: json["comments"] 2? '',
“producD": productld,
this. toDate,
this.datemeRange,
1;
I
TextEdinaController? fromDate:
TextEdingController? toDate;
DatemeRange? datemeRange;
this. toDate,
v2 Av
M"EnamNata": fnamNatae
productName: json["productName"],
currency: json["currency"],
currency: json["currency"],
Map<String, dynamic> toMap() => {
)i
Map<String, dynamic> toMap() => {
34": 29,
comments: json["comments"] 2? '',
“producD": productld,
}
class RangRank {
class RangRank {
RangRank({
this.id = 0,
this.name = '°,
this.icon = '',
} H
1
int id; I
this.loginEnterSCLb16,
String icon;
factory RangRank.fromJson(String str) =>
this.userVerifyEmaillbll,
factory RangRank.fromJson(String str) =>
RangRank.fromMap(json.decode(str));

String toJson() => json.encode(toMap());
factory RangRank.fromMap(Map<String, dynamic> json) => RangRank(
id: json["1d"],
name: json["name"],
icon: json["icon*] 2? *'',
this.countryID,
);
Map<String, dynamic> toMap() =» {
a": AN
"name": name,
"icon": icon,
"color": color,
+;
}
I
class PaymentGatewayResponse {
PaymentGatewayResponse ({
this.orderNo,
this. isCardInfoValid,
Ids LaLLvLEnyudyes sy searcniriliercoie,
String? orderNo;
bool? isCardInfoValid;
I
factory PaymentGatewayResponse.fromJson(String str) =>
isAllowCancel: json["isAllowCancel"],
isTemplate: json["isTemplate"],
3 bd
factory PaymentGatewayResponse.fronfiso(Map<String, dynamic> json) =>
PaymentGatewayResponse(
orderNo: json["orderNo"],
isCardInfoValid: json["isCardInfoValid"l.
);
Map<String, dynamic> toMap() => {
Map<String, dynamic> toMap() => { I
"orderNo": orderNo,
factory PaymentGatewayResponse.fronfiso(Map<String, dynamic> json) =>
I
}
x2 Av
10: jsonp ia,
PaymentCreditCard({
this.id,
this.userld,
}
this.cardToken,
+
this.cardType,
this.cardHolderName,
int id;
String name;
I
int? id;
x2 sv
int? paymentProviderld;
String? cardToken;
this.paymentProviderld,
String toJson() => json.encode(toMap());
String? cardHolderName;
"icon": icon,
T
factory PaymentCreditCard.fromJson(String str) =>
PaymentCreditCard,fromMap(json.decode(str));
factory PaymentCreditCard.fromJson(String str) =>
String toJson() => json.encode(toMap());
v2 Av
String? cardHolderName;
PaymentCreditCard(
id: json{"id"],
int id; 1
String name;
String icon;
String color;
String? userld;
factory RangRank.fromJson(String str) =>
RangRank. fromMap(json.decode(str));
id: json["id"],
String toJson() => json.encode(toMap());
Map<String, dynamic> toMap() => {
»id": I;
"userID": userld,
“paymentProviderID": paymentProviderlId,
factory RangRank.fromJson(String str) =>
“cardToken": cardToken,
String? cardHolderName;
};
Map<String, dynamic> toMap() => {
Map<String, dynamic> toMap() => {
class ApplicaonContent {
TranslaonLanguages? loginLbll;
TranslaonLanguages? loginlLbl2;
TranslaonLanguages? loginLbl3;
TranslaonLanguages? loginEnterEmaillbll;
CLasSs vuelve Lall 1
TranslaonLanguages? loginEnterEmaillbl3;
TranslaonLanguages? loginEnterEmaillblé4;
class ApplicaonContent {
Tranclannl anananac? TaninBSI ATT
TranslaonlLanguages? loginBSLb1l3; 1
TranslaonLanguages? loginBSLbl4;
TranslaonLanguages? welcomeSlideribll;
TranslaonLanguages? welcomeSlideribl2;
TranslaonLanguages? welcomeSliderLbl3;
TranslaonLanguages? welcomeSliderlLblé;
TranslaonLanguages? welcomeSliderLblS5;
TranslaonLanguages? welcomeSliderLblé;
TranslaonLanguages? loginBSLb1l3;
TranslaonLanguages? welcomeSliderLbl8;
TranslaonLanguages? welcomeSliderLbl?;
TranslaonLanguages? welcomeSliderlLbl10;
TranslaonLanguages? loginEnterSCLbL5;
TranslaonLanguages? loginEnterSCLbl1l;
TranslaonlLanguages? loginEnterSCLb12;
TranslaonLanguages? loginEnterSCLb13;
TranslaonLanguages? loginEnterSCLbl4;
TranslaonLanguages? loginEnterSCLbL5;
TranslaonLanguages? welcomeSliderLbl?;
TranslaonLanguages? loginEnterSCLbL3;
TranslaonLanguages? loginEnterSCLb18;
TranslaonLanguages? userVerifyEmaillbll;
factory User. fromJson(Map<String, dynamic> json) {
TranslaonLanguages? userVerifyEmaillbl3;
TranslaonLanguages? welcomeSliderLbl4;
TranslaonLanguages? userVerifyEmaillbl5;
TranslaonLanquages? userVerifyEmaillblé;
TranslaonLanguages? userVerifyEmaillbl7;
TranslaonLanguages? loginBSLb1l3;
TranslaonLanguages? userDashboardlbll;
TranslaonLanguages? userDashboardlLbl2;
TranslaonLanguages? userDashboardlLbl3;
TranslaonLanauaaes? userDashboardlLbl4:
TranslaonLanguages? userDashboardlLbls;
TranslaonLanguages? chooselocaonLbll;
TranslaonLanguages? chooselocaonLbl2;
TranslaonLanguages? chooselocaonlbl3;
TranslaonLanguages? chooselLocaonlbl4;
TranslaonLanguages? loginBSLbl3;
TranslaonLanguages? userDashboardlLbl2;
TranslaonLanguages? productBrowselbll;
TranslaonLanguages? productBrowselbl2;
TranslaonLanguages? productBrowselbl3;
TranslaonLanguages? userDashboardlLbl3;
Tranclannl annananae? nrnducrtReawesl h15-
TranslaonLanguages? userVerifyEmaillbl5;
TranslaonLanguages? userVerifyEmaillblé;
TranslaonLanguages? productBrowselbl8;
TranslaonLanguages? chooselocaonlbll;
TranslaonLanguages? productBrowselbl10;
class ApplicaonContent {
TranslaonLanguages? loginlbll;
TranslaonLanguages? loginlbl2;
TranslaonLanguages? loginlbll;
TranslaonLanguages? loginEnterEmaillbll;
“securityToken": securityToken,
TranslaonLanguages? loginEnterEmaillbl3;
“showPreferenceProduct": showPreferenceProduct,
totalActualPrice: json["totalActualPrice"] 2? 0.0,
"ExternalLogin“: ExternalLogin,
TranslaonLanguages? profileMainlblé4;
TranslaonLanguages? profileMainLbl5;
TranslaonLanguages? welcomeSliderlLblll;
TranslaonLanguages? profileMainlbl7;
TranslaonLanguages? profileMainLbl8;
TranslaonLanguages? profileMainlLbl9;
TranslaonLanguages? profileMainlLbl19;
TranslaonLanguages? loginEnterSCLD15;
TranslaonLangvages? welcomeSliderLbl9;
TranslaonLanguages? accountDetaillbll;
TranslaonLanguages? accountDetaillbl2;
TranslaonLanguages? loginlbll;
TranslaonLanguages? loginlbl2;
TranslaonLanguages? loginlbll;
TranslaonLanguages? loginEnterEmaillbll;
cLasSs vuelve Lall 1
date: json["date"] 2? '‘,
TranslaonLanguages? loginEnterEmaillblé;
class ApplicaonContent {
TranslaonLanguages? loginBSLbl2;
Tranclannl anananac? arcauntNatailPrafilal h1R-
TranslaonLanguages? loginlbll;
TranslaonLanguages? accountDetailProfilelbl18;
TranslaonLanguages? accountDetailProfileEditLbll;
TranslaonLanguages? accountDetailProfileEditLbl2;
TranslaonLanguages? loginEnterEmaillbl2;
TranslaonLanguages? accountDetailProfileEditLbl4;
TranslaonLanguages? accountDetailProfileEditLbl5;
TranslaonLanguages? accountDetailProfilelbls8;
TranslaonLanguages? accountDetailPaymentlbl2;
TranslaonLanguages? accountDetailPaymentLbl3;
TranslaonLanguages? accountDetailPaymentLbl4;
TranslaonLanguages? accountDetailPreferencelbll;
TranslaonLanguages? accountDetailPreferencelbl2;
TranslaonLanguages? accountDetailPreferencelbl3;
TranslaonLanguages? accountDetailPreferencelbl4;
TranslaonLanguages? accountDetailPreferencelbl5;
TranslaonLanguages? accountDetailPreferencelbls;
TranslaonLanguages? accountDetailPreferencelbl2;
TranslaonLanguages? accountDetailPaymentLbl3;
TranslaonLanguages? accountDetailPreferencelbl?;
TranslaonLanguages? orderUserlLbll;
TranslaonLanguages? orderUserlLbl2;
TranslaonLanguages? erderUserlLbl3;
icon: json[“icon"] 2? ‘',
TranslaonLanguages? orderUserlbl5;
TranslaonLanguages? accountDetailPreferencelbl?;
TranslaonLanguages? orderUserDetaillbl2;
TranslaonLanguages? accountDetailPreferencelbl9;
TranslaonLanguages? orderUserlbl2;
TranslaonLanguages? orderUserDetaillbl5;
TranslaonLanguages? orderUserDetaillblé;
TranslaonLanguages? orderUserDetaillbl?;
TranslaonLanguages? orderUserDetaillbl8§;
TranslaonLanguages? orderUserDetaillblll;
IranslaonLanguages? LOginENtersULbLL;
class PaymentGatewayResponse {
TranslaonLanguages? orderUserDetaillbl12;
TranslaonLanguages? orderUserDetaillbl10;
TranslaonLanguages? orderStorelbl2;
TranslaonlLanguages? orderSterelbl3;
TranslaonLanguages? searchFilterLbll;
TranslaonLanguages? orderUserLbl2;
TranslaonLanguages? orderUserlbl3;
TranslaonLanguages? searchFilterlblé;
TranslaonLanguages? orderUserlLbl5;
TranslaonLanguages? searchFilterlLbls;
TranslaonLanguages? searchFilterLbl?;
TranslaonLanguages? orderSterelbl3;
TranslaonLanguages? productDetaillbll;
TranslaonLanguages? productDetaillbl2;
PaymentGatewayResponse(
TranslaonLanguages? productDetaillblé4;
isCardInfovalid: json[“isCardInfoValid"], £2 rv
TranslaonLanguages? productDetaillbls;
TranslaonLanguages? productDetaillbl?7;
TranslaonLanguages? productDetaillbls;
TranslaonLanguages? productDetaillblé;
TranslaonLanguages? productDetaillbl2;
+H
TranslaonLanguages? productDetaillbli2;
TranslaonLanguages? productDetaillbll3;
TranslaonLanguages? productDetaillbll4;
TranslaonLanquages? productDetaillblils;
TranslaonLanguages? productDetaillblils;
TranslaonLanquages? productDetaillbl17;
TranslaonLanguages? productDetaillbl1é;
TranslaonLanguages? productDetaillbli?;
TranslaonLanguages? productDetaillbli2;
IranslaonLanguages? productBrowseLblly;
TranslaonLanguages? accountDetailPaymentLbl3;
TranslaonLanguages? accountDetailPaymentlbl4;
TranslaonLanguages? accountDetailPreferencelbls;
“countryID": countryID 2? 8,
TranslaonLanguages? accountDetailPreferencelbl3;
TranslaonlLanguages? ER i minmy
INT? paymentrrovideria;
TranslaonLanguages? accountDetailPreferencelbls;
countryID: json['countryID'],
TranslaonLanguages? accountDetailPaymentlLbl3;
TranslaonLanguages? storeAccountCreatelbl5;
TranslaonLanguages? storeAccountCreatelblé;
TranslaonLanguages? storeAccountCreatelbl?7;
TranslaonLanguages? storeAccountCreatelbl8;
TranslaonLanguages? storeAccountCreatelbl?;
TranslaonLanguages? storeAccountCreatelbl10;
TranslaonLanguages? storeAccountCreatelblll;
TranslaonLanguages? storeAccountCreatelbl12;
TranslaonLanguages? storeAccountCreatelbl5;
PaymentCreditCard(
Translaonlanguages? accountDetailPaymentLbl3;
"phone": phone,
TranslaonLanguages? accountDetailPreferencelbll;
“countryID": countryID 2? 8,
class Applicaontontent {
TranslaonLanguages? accountDetailPreferencelbls;
TranslaonLanguages? accountDetailPreferencelbl5;
Translannl anauanes? aceountDetailPreferencel h1A-
TranslaonLanguages? accountDetailPreferencelbl?;
TranslaonLanguages? accountDetailPreferencelbl8;
TranslaonLanguages? storeAccountCreatelbl25;
TranslaonLanguages? storeAccountCreatelbl2é package :preshfood_app/app/conmon/models. dart
TranslaonLanguages? storeAccountCreatelbl26;
bool? step1; x2 Av
TranslaonLanguages? storeAccountLoginlbl2; Containing clews: Applicaontontent
TranslaonLanguages? storeAccountlLoginlbl3; | Type: TTR CL
TranslaonLanguages? storeAccountloginlLblé;
TranslaonlLanguages? accountDetailPreferencelbls;
TranslaonlLanguages? storeAccountCreatelbl25;
TranslaonlLanguages? accountDetailPaymentLbl3;
TranslaonLanguages? storeForgotPasswordLbl3;
"idToken": idToken,
Le 11H T
"lookupTableID": lookupTableld,
"displayValue": displayValve,
"lookupValue": lookupValue,
"displayValuve": displayValue,
"isDefault": isDefault,
"isAcve": 1sAcve,
“sequencelID": Ea
"language": language,
};
HH
TranslaonLanguages? storeApprovelbl3;
TextEdingController? textController;
String? label;
TextEdingController? textController;
meOfDay meOfDay;
EnummeCategory? type;
TranslaonLanguages? storeNavDrawerLblS;
PickupmeDaily({
this. label,
this. textController,
required this.meOfDay,
this. type,
)3 H
// can also add ‘required' keyword
}
PickupmeDaily({
class Country {
TranslaonLanguages? storeAccountSetuplbl3;
String? countryCode; I
String? currency;
String? name;
}
this.id = 6,
class Order {
Order ({
int? id;
this.customerld = 8, I
TranslaonLanguages? storeNavDrawerLblé;
this.totalPrice = 6,0,
this.totalActualPrice = 0.0,
this.totalTaxAmount = 0.0,
TranslaonLanguages? chooselLocaonlLbll;
this.baseCurrency = '',
this.orderNnumber = '*,
this.totalQty = 0,
this.date,
TranslaonLanguages? storeAccountSetupDetailsLbl?7;
this.isRefund,
this.comments
this.statusComments = '*,
this.orderDetail = const [],
this.statusIDDescripon = '',
this.redirectURL = '*,
this.storeName = '',
this.storeAddress = '',
this.isRefund,
this.meLabel = '*,
this,.storelogo = '*,
Map<String, dynamic> toMap() => {
"id": id,
this. transaconld,
"displayValve": displayValue,
"lookupValue": lookupValue,
TranslaonLanguages? storeChangePasswordLbl3;
TranslaonLanguages? storeChangePasswordLbl4;
"isAcve": isAcve,
“"lookupValue": lookupValue,
int customerld;
String? date;
double totalPrice;
double totalActualPrice;
double totalTaxAmount;
double exchangeRate;
TranslaonLanguages? storeAccountSetupFoodlLbl2;
TranslaonLanguages? storeAccountSetupFoodlLbl3;
int customerld;
TranslaonLanguages? storeAccountSetupFoodlLbl5;
Trnanel anan! anannanne) anadustNatadill K199
"idToken": idToken,
"loginProviderID": loginProviderID,
"idToken": idToken.
List<OrderDetail> ordertbtaty;
String statusIDDescripon;
class User {
"isDefault": isDefault,
String? securityToken;
String melabel;
String pickInformaon;
String storelogo;
int? storelD;
double rang;
String? transaconld;
int? userPaymentCardID;
bool? isSavePaymennfo;
bool? isAllowCancel;
bool? isSavePaymennfo;
factory Order.fromJson(String str) => Ocrder.fronMap(json.decode(str));
TranslaonLanguages? storeAccountSetupSchedulelbl5;
TranslaonLanguages? storeAccountSetupSchedulelbls;
TranslaonLanguages? storeAccountSetupSchedulelbl7;
TranslaonLanguages? storeAccountSetupSchedulelbl8;
TranslaonLanguages? storeAccountSetupSchedulelbl?;
TranslaonLanguages? storeAccountSetupLearnlbll; v2 Av
TranslaonLanguages? storeAccountSetuplLearnLbl2;
TranslaonLanguages? storeAccountSetuplLearnlbl3;
TranslaonLanguages? storeAccountSetuplLearnLbl4;
TranslaonLanguages? storeAccountSetuplLearnLbl3;
TranslaonLanguages? storeAccountSetuplLearnLblé;
TranslaonLanguages? storeAccountSetupLearnlbl7;
TranslaonLanguages? storeAccountSetupLearnlbl8;
TranslaonLanguages? storeAccountSetupLearnLbl9;
TranslaonLanguages? storeAccountSetupLearnLbl10;
TranslaonLanguages? storeAccountSetuplearnLblll;
TranslaonLanguages? storeAccountSetupLearnLbl12;
TranslaonLanguages? storeAccountSetupLearnLbld3;
TranslaonLanguages? i
TranslaonLanguages? storeAccountSetuplLearnLbl1}3cP00K
TranslaonLanguages? storeAccountSetuplLearnlblls;
TranslaonLanguages? storeAccountSetupVatlbll;
TranslaonLanguages? storeAccountSetupVatLbl2;
TranslaonLanguages? storeAccountSetupVatLbl3;
TranslaonLanguages? storeAccountSetupVatLblé4;
TranslaonlLanguages? storeAccountSetupVatLbls;
TranslaonLanguages? storeAccountSetupVatlblé;
TranslaonLanguages? storeAccountSetupVatLbl7;
this. id
TranslaonLanguages? storeAccountSetupVatLbl?;
TranslaonLanguages? storeDetailsLbll;
TranslaonLanguages? storeDetailsLbl2;
TranslaonLanguages? storeDetailsLbl3;
TranslaonLanguages? storeDetailsLbl4;
TranslaonLanguages? storeDetailsLbl§;
TranslaonLanguages? methodsLbll;
TranslaonLanguages? methodsLbll;
TranslaonLanguages? methodsLbl3;
};
TranslaonLanguages? methodsLbl5;
TranslaonLanguages? methodsLblé;
MetatueTN": etatueld
TranslaonLanguages? methodsLbl8;
TranslaonLanguages? homelbll;
TranslaonLanguages? homelbl2;
TranslaonLanguages? orderStorelblé4;
TranslaonLanguages? orderStorelbl5; fflacooek
TranslaonLanguages? orderStorelblé;
TranslaonLanguages? methodsLblé;
TranslaonLanguages? orderStorelbl8;
TranslaonLanguages? orderStorelbl?;
TranslaonLanguages? orderStorelbl10;
TranslaonLanguages? orderStorelblll;
TranslaonLanguages? storeAccountSetupSchedulelbl10;
TranslaonLanguages? storeAccountSetupSchedulelblll;
TranslaonLanguages? storeAccountSetupFoodLbl22;
TranslaonLanguages? storeAccountLoginLblé;
TranslaonLanguages? storeControllerLbll;
TranslaonLanguages? storeControllerlbl2;
TranslaonLanguages? productControllerlbll;
"newPassword": newPassword,
TranslaonLanguages? storeAccountSetupSchedulelbls;
TranslaonLanguages? storeAccountSetupSchedulelbl7;
TranslaonLanguages? storeAccountSetupSchedulelbl8;
TranslaonLanguages? homelbll;
TranslaonLanguages? storeAccountSetuplLearnLbl2;
TranslaonLanguages? userControllerLbl5;
TranslaonLanguages? storeAccountSetupSchedulelbl5;
TranslaonLanguages? storeAccountSetuplLearnLbl5;
TranslaonLanguages? paymentGatewayLbll; k
TranslaonLanguages? paymentGatewaylLbl2;
TranslaonLanguages? paymentGatewaylLbl3;
ApplicaonContent({
this.loginLbl1,
this. loginlbl2,
this.loginlbl3,
this. loginlbll,
TranslaonLanguages? paymentGatewaylbll; macbook
"EnamNata" foamNate
TranslaonLanguages? storeAccountSetupSchedulelbls;
TranslaonLanguages? storeAccountSetupSchedulelbl?;
TranslaonLanguages? storeAccountSetupSchedulelbls;
TranslaonLanguages? storeAccountSetupSchedulelbl?;
TranslaonLanguages? storeAccountSetupLearnLbll;
TranslaonLanguages? storeAccountSetuplLearnLbl2;
TranslaonLanguages? storeAccountSetupLearnLbl3;
TranslaonLanguages? storeAccountSetupSchedulelbl5;
TranslaonLanguages? storeAccountSetuplLearnlbl$;
this.welcomeSliderLblé,
this.welcomeSliderlbl?,
this.welcomeSliderLbl8,
TranslaonLanguages? storeAccountSetupSchedulelbl?;
this.welcomeSliderLbl16, macbook
this.welcomeSliderLbl1l,
this. loginEnterSCLbl1,
this.welcomeSliderLbl5,
this.loginEnterSCLbL13,
this. loginEnterSCLb14,
this.loginEnterSCLb1S,
"id": id,
"lookupTableID": lookupTableld,
“languageID": languageld,
"lookupValue": lookupValue,
this.userVerifyEmaillbl2,
"isDefault": isDefault,
TranslaonLanguages? storeForgotPasswordLbl3; v2 Av
“sequencelD": ein
“language": language,
¥;
}
I
class PickupmeDaily {
String? label;
TextEdingController? textController;
meOfDay meOfDay;
"language": language,
I
PickupmeDaily({
this. label,
this. textController,
this. label,
this. type,
jo HH
PickupmeDaily({
}
rlass Country {
class Country {
int? id;
String? countryCode;
String? currency;
String? name;
}
this.userBNLD11, macbook
int? id;
Order({
int? id;
this.customerId = 9, I
this.storeBNLD12,
this.totalPrice = 0.6,
this.totalActualPrice = 0.0,
this.baseCurrency = '',
this.exchangeRate = 6.0,
this.baseCurrency = '',
this.currency = '',
this.totalQty = 0,
this.date,
this.statusID = 7,
this.isRefund,
this.comments = '',
this.comments = '',
this.accountDetaillbll,
this.statusIDDescripon = '',
this.redirectURL = '',
this.isRefund,
this.storeAddress = '',
this.pickInformaon = '',
this.melLabel = '',
this.storelogo = '',
Map<String, dynamic> toMap() => {
"id": id,
this. transaconld,
this.isAllowCancel,
"lookupValue": lookupValue,
"displayValue": displayValue,
“showPreferenceProduct": showPreferenceProduct,
"isAcve": isAcve,
"sequencelD": sequenceld,
this.accountDetailProfileEditlbl4,
String? date;
double totalPrice;
double totalActualPrice;
double totalTaxAmount;
double exchangeRate;
String baseCurrency;
this.accountDetailPreferencelbl2,
int totalQty;
String orderNnumber;
this.accountDetailPreferencelbl5, 1
bool? isRefund;
NTT: 3
this.accountDetailPreferencelbl8,
List<OrderDetail> orderDetail;
“lookupValue": lookupValue,
String redirectURL;
"isDefault": isDefault,
this.loginEnterSCLbl4,
String storeName;
this.orderUserDetaillbll,
String storelogo;
int? storelD;
double cang;
String? transaconld:
int? userPaymentCardID;
bool? isSavePaymennfo;
bool? isAllowCancel;
bool? isSavePaymennfo;
factory Order.fromJson(String str) => Ocder.fromMap(json.decode(str));
this.orderUserDetaillbl12,
this.orderStorelbll,
this.orderStorelbl2,
this.orderStorelbl3,
this.orderStorelbls,
this.orderStorelbl5,
"isDefault": isDefault, 2 rv
this.orderStorelbl?,
this.orderStorelLbl8,
this.orderStorelbl?,
*hie nanadurtBnavweal M10
}
this.searchFilterlLbll.
TextFdinaCantroller? textCanteraller:
this.searchFilterLbl3,
TextEdingController? textController;
this.searchFilterlLbl5,
this.searchFilterLbl3,
GZ
PickupmeDaily({ Xz av
this. label,
this.productDetaillbl2,
required this, meOfDay,
this.productDetaillbls4,
this.productDetaillbl5,
this.productDetaillblé,
this.productDetaillbl7,
String? securityToken;
this.orderStorelbl?9,
this.productDetaillbl10, x2 Av
this.productDetaillblll,
this.productDetaillbl12,
this.productDetaillbl13,
¥
this.productDetaillbl1s,
this.productDetaillblié,
this.productDetaillbl17,
IransLacionLanguagess oroeruservetsiiLogs;
this.productDetaillbl19,
this.productDetaillbl26,
this.productDetaillbl21,
factory NrdarFilter fromfenlManeString dvnamiers dean) =5 lNrderEiliracl
this.pavmentPavzelbl2.
this.paymentPayzelbl3,
this.paymentPayzelbl4,
this.currency = '',
this.paymentPayzelblé,
this.productDetaillbl18,
this.storeAccountCreatelbl2,
this.storeAccountCreatelbl3,
this.storeAccountCreatelbld,
this.storeAccountCreatelbl5,
this.storeAccountCreatelbls,
4d" 1d
this.storeAccountCreatelbls,
this.storeAccountCreatelbl3,
this.storeAccountCreatelbl10,
this.productDetaillbl28,
this.storeAccountCreatelbl12,
this.storeAccountCreatelbl13,
Map<String, dynamic> top©) = {
this.orderStorelbll,
this.orderStorelbl2,
this.orderStorelbl3,
this.orderStorelblé4,
this.orderStorelbl3,
this.orderStorelbls,
this.orderUserDetaillblll,
this.orderStorelbl8,
this.storeAccountCreatelbl23.
this.storeAccountCreatelbl24,
this.storeAccountCreatelbl25,
this.storeAccountCreatelbl24,
this.storeAccountCreatelbl24.
this.storeAccountloginlbll,
this.storeAccountloginlbll,
this.storeAccountloginlbl3,
this.storeAccountCreatelbl23.
this.storeAccountloginlbll,
this.orderUserDetaillblil,
Map<String, dynamic> top©) = {
andarNimhanr: deanl "andanMumhan®1
this.orderStorelbl2,
this.orderStorelbl3,
this.orderStorelblé4,
"EnamNata": fonmDate
this.orderStorelbls,
String storeAddress; x2 ~~
this.orderStorelbls,
this.storeChangePasswordLbl4,
this.storeChangePasswordLbl5,
this.orderStorelbll,
this.storeChangePasswordLbl?,
this.orderStorelbl3,
this.orderStorelbld,
this.orderStorelbl5,
this.storeApprovelbls,
this.loginEnterSCLbl4,
this.orderStorelbl8,
this.storeNavDrawerLbl3,
this.storeNavDrawerLblé4,
this.storeNavDrawerlLbl3,
this.storeNavDrawerlLbls,
this.storeNavDrawerLbl?7,
this.storeNavDrawerLbl8, I
this.storeDashboardLbll,
this.storeDashboardlLbl2,
this.storeNavDrawerLbl8,
this.storeDashboardLbl4,
this.storeDashboardlLbls,
this.storeAccountSetuplbll,
this.storeAccountSetuplbl2,
this.storeAccountSetuplbl3,
this.storeAccountSetuplblé,
this.storeAccountSetuplbls,
this.storeAccountSetuplbls,
this.storeAccountSetuplbl?,
this.storeDashboardLbls,
this.storeAccountSetuplbl?,
this.storeAccountSetuplblll,
this.storeAccountSetuplbl12,
this.storeAccountSetuplbll3,
TranslaonLanguages.fromMap(json['storeAccountCreatelbl12']);
this.storeAccountSetupDetailsLbl3,
this.storeAccountSetupDetailsLblé,
this.storeAccountSetupDetailsLbls,
this.storeAccountSetupDetailsLblé,
this.storeAccountSetupDetailsLbl7,
this.storeAccountSetupDetailsLbl8,
this.storeAccountSetupDetailsLbl?y,
this.storeAccountSetuplblls,
this.storeAccountSetupDetailslblll,
this.storeAccountSetupDetailslbl12,
this.storeAccountSetupDetailsLbll3,
this.storeAccountSetupDetailsLblils,
datal 'neaducrtNataill h11A4A'1 =~ +hie nnaductNatsill h1143 +aMan()-
this.storeAccountSetupDetailsLbll?,
this.storeAccountSetupDetailsLblls8,
this.storeAccountSetupDetailsLbl19,
this.storeAccountSetupDetailslLbl20,
this.storeAccountSetupDetailslbl22,
this.storeAccountSetupDetailsLbl2l,
this.storeAccountSetupDetailsLbl24,
this.storeAccountSetupDetailsLbl25,
this.storeAccountSetupDetailslbl26,
this.storeAccountSetupDetailsLbl27,
this.storeAccountSetupDetailsLbl26,
this.storeAccountSetupDetailsLbl29,
this.storeAccountSetunDetailsLbl30.
this.storeAccountSetupDetailsLbl3l,
this.storeAccountSetupDetailsLbl27,
this.storeAccountSetupDetailsLbl28,
this.storeAccountSetupFoodLbl2,
this.storeNavDrawerLbl3,
this.storeAccountSetupFoodLbl5,
this.storeAccountSetupFoodlLblé,
this.storeAccountSetupFoodLbl7,
this.storeAccountSetupFoodLbl8,
entyID: json[''entyID'],
this.storeAccountSetupFoodLbl10,
this.storeDashboardLbl3,
this.storeAccountSetupFoodLbl12, T
this.storeAccountSetupFoodLbl14,
this.storeAccountSetupFoodLbl15,
this.storeAccountSetupFoodLbl16,
this.storeAccountSetupFoodLbl17,
this.storeAccountSetupFoodLbl18,
this.storeAccountSetupFoodLbl19,
this.storeAccountSetupFoodlLbl28,
this.storeAccountSetupFoodLbl13,
this.storeAccountSetupFoodLb122,
this,.storeNavDrawerlLbl3,
List<Product>? product;
this.storeNavDrawerLbls,
String? serviceDuration;
bool stepCompleted;
this.storeAccountSetupFoodLbl8,
this.storeAccountSetupFoodLbl?9,
this.storeDashboardlLbl2,
this.storeAccountSetupSchedulelbll,
this.storeDashboardLbl4,
this.storeAccountSetupSchedulelblll,
this.storeAccountSetuplLearnLbll,
this.storeAccountSetupSchedulelblll, 1
this.storeAccountSetupLearnLbl3,
this.storeNavDrawerLbl?,
this.storeAccountSetupLearnlbl?,
this.storeAccountSetupLearnlbl8,
this.storeAccountSetuplLearnlbl?,
this.storeAccountSetuplLearnlbl10,
this.storeAccountSetuplLearnLbl1l,
this.storeAccountSetuplLearnlbll2,
this.storeAccountSetupLearnlbll3,
this.storeAccountSetupLearnLbllé,
TranslaonLanguages.fromMap(json['storeAccountSetuplearnlblll']);
this.storeAccountSetupVatlbll,
this.storeAccountSetupVatLbl2,
thie antuTn
this.storeAccountSetupVatLbls,
this.storeAccountSetupVatLbl?,
this.storeDetailsLbl2,
this.storeDetailsLbl3,
this.storeDetailsLbl4,
this.storeDetailsLbl5,
this.methodslbll,
this.methodsLbl2,
this.methodsLbl3,
this.methodsLbl4,
this.methodsLbl5,
this.methodslLblé,
this.methodsLbl7,
this.storeDetailsLbls,
this.homelbll,
this.homelbl2,
this.storeControllerLbll, I
this.storeControllerlbl2,
this.productControllerLbll,
this.productControllerlbl2,
this.productControllerlbl3,
this.productControllerLbl4,
this.userControllerlbll,
this.homelbl2,
this.userControllerLbl3,
this.userControllerlblé,
this.userControllerlbl5,
this.userControllerLbls,
this.systemGenericErrorlbll,
this.paymentGatewayLbll,
this.paymentGatewaylLbl2,
this.paymentGatewaylLbl3,
IH
this.userControllerLbls,
factory ApplicaonContent.fromJson(String str) =>
String toJson() => json.encode(toMap());
ApplicaonContent.fromMap(Map<String, dynamic> json) {
loginlbll = TranslaonLanguages.fromMap(json[‘loginLbll']);
ApplicaonContent.fromMap(json.decode(str));
1oginlbl3 = TranslaonlLanguages.fromMap(json(‘loginlbl3'']);
Aonl icannfantent. feomMan( isan. decndaflstr))
TranslaonLanguages.fromMap(json('loginEnterEmaillbll']);
this.storeAccountSetuplLearnlblll,
loginEnterEmaillbl3 =
Translaonlanguages,fromMap(json['loginEnterEmaillbl3']);
loginEnterEmaillblé =
Translaonlanguages.fromMap(json[''loginEnterEmaillbl4']);
1oginBSLb11 = TranslaonLanguages.fromMap(json[‘loginBSLb11']);
10ginBSLbl2 = TranslaonLanguages.fromMap(json[‘loginBSLb12']);
loginEnterEmaillbl2 =
1oginBSLbl4 = TranslaonLanguages.fromMap(jspn(‘loginBSLb1l4']);
welcomeSliderLbl2 = TranslaonLanguages.fromMap(json['welcomeSliderLbl2']);
welcomeSLliderLbl3 = Translaonlanguages.fromMap(json['welcomeSliderLbl3']);
welcomeSliderLbl4 = TranslaonlLanguages,fromMap(json['welcomeSliderLbl4']);
welcomeSliderLbl5 = Translaonlanguages.fromMap(json['welcomeSliderLbl5']);
welcomeSliderlblé = TranslaonlLanguages.fromMap(json[''welcomeSliderLbls']);
welcomeSliderLbl? = TranslannLanguages.fromMap(json['welcomeSliderLbl7']);
welcomeSliderlbl8 = TranslaonlLanguages.fromMap(json['welcomeSliderLbl8']);
welcomeSliderLbll = TranslaonLanguages.fromap(json['welcomeSliderLbll']);
welcomeSliderLbl1e =
TranslaonlLenguages.fromMap(json('welcomeSliderLbl16']);
TranslaonLanguages.fromMap(json['loginEnterEmaillbl2']);
TranslaonLanguages.fromMap(json['welcomeSliderLbl1l']);
this.storeAccountSetupLearnlbl13,
this.storeAccountSetuplearnLbll4,
this.storeAccountSetuplLearnlbll5,
this.storeAccountSetupLearnlLbllé,
1oginEnterSCLLLS = TranslaonLanguages.fronMap(json[''loginEnterSCLD15']);
this.storeAccountSetupLearnLbl10,
loginEnterSCLLL7 = TranslaonLanguages.fromMap(json(['loginEnterSCLb17']);
loginEnterSCLb18 = TranslaonLanguages.fromMap(json[''loginEnterSCLb18']);
userVerifyEmaillbll =
TranslaonLanguages. fromMap(json['vserVerifyEmaillbl1']);
userVerifyEmaillbl2 =
Translaonlanguages. fromMap(json['userVerifyEmaillbl2']);
TranslaonlLanguages.fromMap(json['userVerifyEmaillbl3']);
userVerifyEmaillblé =
userVerifyEmaillbl3 =
TranslaonLanguages.fromMap(json('userVerifyEmaillbl5']);
accountDetailPaymentlbl2 =
userVerifyEmaillbl7 =
userVerifyEmaillbl8 =
TranslaonlLanguages.fronMap(json('userVerifyEmaillbl8']);
accountDetailProfilelblg =
accountDetailProfilelbl8 =
accountDetailProfilelbl10 =
TranslaonlLanguages.fromMap(json['accountDetailProfileLbl16']);
accountDetailProfileEditlbll =
storeBNLb11 = Translaoniangosges,frosMap(json( *storeBNLbl1']);
storeBNLb12 = TranslaonLanguages.fromMap(json['storeBNLbl2']);
profileMainLbll = TranslaonLanguages.fromMap(json(['profileMainLbll']);
profileMainlbl2 = TranslaonLanguages.fromMap(json['profileMainLbl2']);
profileMainlbl3 = TranslaonlLanguages.fromMap(json['profileMainlbl3']);
profileMainlbl5 = IranslaonlLanguages.fromMap(json['profileMainLbl5']);
userBNLbl4 = TranslaonlLanguages.fromfap(json['userBNLb14']);
accountDetailProfilelblé =
profileMainLbl8 = TranslaonlLanguages.fronMap(json['profileMainlbl8']);
profileMainLbl® = Translaonlanguages.fromMap(json['profileMaintbl?']);
profileMainLbl18 = TranslaonlLanguages.fromMap(json['profileMainlbl18']);
profileMainlblll = TranslaonLanguages.fromMap(json['profileMainlbl1l']);
profileMainlbl12 = TranslaonlLanguages.fronMap(json('profileMainlbl12']);
accountDetaillbll = Translaontanguages.fromfap(json['accountBetaillbll'']);
accountDetaillbl2 = Translaontanguages.fromMap(json['accountDetaitlbl2']);
accountDetaillbl3 = TranslaonLanguages.fromfap(json['accountDetaillbl3']);
accountDetaillbld = EE ele oT hm Th
accountDetailProfilelbll =
TranslaonLanguages.fromMap(json('accountDetailProfilelbl1']);
accountDetailProfilelbl2 =
Translaonlanguages.fronMap(json('accountDetailProfilelbl2']);
accountDetailProfilelbl3 =
TranslaonLanguages.fronMap(json['sccountDetailProfilelbl3']);
accountDetailProfilelbld =
TranslaonlLanguages.fromMap(json['accountDetailProfilelbl4']);
accountDetailProfilelbls =
TranslaonLanguages.fromMap(json('sccountDetailPrafilelbl5']);
accountDetailProfileLhls =
TranslaonLanguages.fromMap(json['accountDetailProfilelbl6']);
accountDetailProfilelbl? =
TranslaonLanguages.fronMap(json('eccountDetailProfilelbl7']);
accountDetailProfilelbl8 =
Translaonlanguages.fromMap(json('accountDetailProfilelbl8']);
accountDetailProfilelbl? =
TranslaonLanguages.fronMap(json['sccountDetailProfilelbl9']);
accountDetailProfilelbl18 =
TranslaonLanguages.fronMap(json['accourmtDetailProfilelbl6']);
accountDetailProfileEditlbll =
TranslaonLanguages.fromMap(json('accountDetailPrafileEditlbl1']);
userVerifyEmaillblsé =
TranslaonlLanguages.fronMap(json['userVerifyEmaillblé']);
accountDetailProfileEditlbl3 =
TranslaonlLanguages.fromMap(Json['userVerifyEmaillbdl7']);
accountDetailProfileEditlbl4 =
TranslaonlLanguages.fronMap(json('accountDetailProfileEditLbl4']);
accountDetaillbl3 = TranslaonLanguages.fromfap(json['accountDetaillbl3']);
Translaonlanguages.fromMap(son[‘accountDetailProfileEditLbl1']);
accountDetailProfilelbls =
TranslaonLanguages.fromMap(json('accountDetailPaymentlbll']);
userVerifyEmaillblé =
TranslaonLanauaces.fromMap(1sonl 'accountDetailPavmentLbl2'1):
accountDetailProfilelbl8 =
TranslaonLanguages.fromMap(json['accountDetailPaymentLbl3']);
accountDetailPaymentlbld =
TranslaonLanguages.fromMap(json['accountDetailPaymentLlbl4']);
accountDetailPreferencelbll =
TranslaonLanguages.fromMap(json('accountDetailPaymentlbll']);
accountDetailPreferencelbl2 =
TranslaonLanguages.fronMap(json['accountDetailPreferencelbl2']);
accountDetailPreferencelbl3 =
TranslaonLanguages.fromMap(json['accountDetailPreferencelbl3']);
TranslaonLanguages.fromMap(json['accountDetailPreferencelblé']);
TranslaonLanguages.fromMap(json['accountDetailPreferencelbld']);
accountDetailPreferencelbl5 =
accountDetailPreferencelbl5 =
accountDetailPreferencelbl? =
TranslaonLanguages.fromMap(json['accountDetailPreferencelbl2']);
accountDetailPreferencelbl? =
TranslaonLanguages.fronMap(json['accountDetailPreferencelbl7']);
accountDetailPreferencelbls =
TranslaonlLanguages.fromMap(json['accountDetailPreferencelbl8']);
accountDetailPreferencelbly =
TranslaonlLanguages.fromMap(json['accountDetailPreferencelbl9']);
orderUserLbll = TranslaonlLanguages.fromfap(json['orderUsertbl1']);
orderUserlbl2 = TranslaonLanguages.fromMap(json[‘orderUsertbl2']);
orderUserLbl3 = TrauslaonLanguages.fromMap(json['orderUserLbl3']);
TranslaonLanguages.fromMap(json['accountDetailPreferencelbl?']);
orderUserLbl5 = TranslaonLanguages.fronMap(json['orderUserLbl5']));
orderUserDetaillbll =
TranslaonlLanguages.fromMap(json['orderUserDetaillbll']);
orderUserDetaillbl2 =
TranslaonLanguages.fronMap(json['orderUserDetaillbl2']);
orderUserDetaillbl3 =
TranslaonlLanguages.fromMap(json('arderUserDetaillbl3']);
orderUserDetaillblé =
<A CE (Srp——
orderUserDetaillbls =
this.homelbll,
orderUserDetaillblé =
TranslaonlLanguages.fromMap(Json['orderUserDetaillbl?']);
orderUserDetaillbl? =
TranslaonLanguages.fromMap(json['accountDetailPreferencelbl7']);
orderUserDetaillbl8 =
TranslaonLanguages.fromMap(json['orderUserDetaillbl8']);
orderUserDetaillbly =
TranslaonLanguages.fromMap(json['orderUserDetaillbl9']);
this.serviceDuration = '',
TranslaonLanguages.fromMap(json['orderUserDetaillbl9']);
orderUserDetaillblll =
TranslaonLanguages.fromMap(json[‘'orderUserDetaillblil'']);
orderUserDetaillbll2 =
TranslaonLanguages.fromMap(json[‘'orderUserDetaillbli2']);
orderStorelbll = TranslaonLanguages.fromMap(json['orderStorelbl1']);
orderStorelbl2 = TranslaonLanguages.fromMap(json['orderStorelbl2']);
orderStorelbll = TranslaonLanguages.fromMapfjson['orderStorelbl1']);
orderStorelbl4 = TranslaonLanguages.fromMap(json['orderStorelbl4']);
orderStorelbl2 = TranslaonlLanguages,fromMap(json['orderStorelbl2']);
orderUserDetaillblll =
orderStorelbl? = TranslaonLanguages.fromMap(json['orderStorelbl7']);
profileMainLbl? = TranslasnLanguages.fromMap(json('profileMainlbl9']); 02 Av
orderStorelbl? = TranslaonlLanguages.fromMap(json['orderStorelbl9']);
EAA Rosa LSet ERAS 3)
orderStorelbl7 = TranslaonLanguages.fromMap(json[‘orderStorelbl?7']);
searchFilterLlbll = TranslaonlLangueges.fromMap(json(‘aearchFilterlbll']);
orderStorelbl? = TranslaonLanguages,fromMap(json['orderStorelbl7']);
accountDetaillbl3 = TranslasnLanguages.fromMap(json['accountDetaillbl3*]); v2 Av
orderStorelbl? = TranslaonLanguages.fromMap(json['orderStorelbl7']);
searchFilterlbl5 = TranslaonLanguages.fronMap(json['searchFilterLbl5']);
TranslaonLanguages.fronMap(json['accountDetailPreferencelbl2']);
accountDetailPreferencelbl3 =
TranslaonLanguages.fromMap(json['accountDetailPreferencelbl3']);
TranslaonLanguages.fromMap(json['orderUserDetaillbli2']);
TranslaonLanguages.fronMap(json['accountDetailPreferencelblé']);
productDetaillbl3 = TranslaoniLanguages.fromMap(json[''productDetaillbl3*]);
TranslaonLanguages.fromMap(json['accountDetailPreferencelbl5']);
orderStoreLbl4 = TranslaonLanguages.fromMap(json['orderStorelbl4']);
TranslaonLanguages.fromMap(json['accountDetailPreferencelbl2']);
accountDetailPreferencelbl? =
productDetaillbl8 = TranslaonLanguages.fromMap(json['productDetaillbls']);
productDetaillbl? = TranslaonLanguages.fromMap(json['productDetaillbl?']);
productDetaillbl1e =
TranslaonlLanguages.frooMap(json['productDetaillbl18']);
productDetaillblll =
Translaontanguages.fronMap(json['praoductDetaillblil']);
productDetaillbl8 = TranslaonLanguages.fromMap(json['praductDetaillbls']);
TranstaonLanguages.fromMap(json('productDetaillbli2']);
productDetaillbl8 = TranslaonLanguages.fromMap(json['productDetaillbls']);
TranslaonlLanguages.fronMap(json(''praductDetaillbll3']);
productDetaillblls =
accountDetailPreferencelbl3 =
TranslaonLanguages.fromMap(json['accountDetailPreferencelbl3']);
accountDetailPreferencelbls =
TranslaonLanguages.fronMap(json['accountDetailPreferencelbld']);
accountDetailPreferencelbl5 =
TranslaonLanguages.fronMap(json(['accountDetailPreferencelblS5']);
accountDetailPreferencelblé =
this.storeAccountSetupLearnLbllo,
accountDetailPreferencelbl? =
productDetaillblly =
TranslaonlLanguages.fromMap(json['productDetaillbli9']);
accountDetailPreferencelblé =
TranslaonlLanguages.fromMap(json(['productDetaillbl20']);
productDetaillbl2l =
TranslaonLanguages.fromMap(json['productDetaillbl21']);
accountDetailPreferencelblé =
'addresslLine': addresslLine,
paymentPayzelbl3 = TranslaonLanguages.fromMap(json['paymentPayzelbl3']);
paymentPayzelblé = TranslaonlLanguages,fromMap(json['paymentPayzelbls']);
id
TranslaonLanguages,fromMap(json['storeAccountSetupDetailsilbl26']);
storeAccountCreatelbl3 =
paymentPayzelbl4 = TranslaonlLanguages,fromMap(json['paymentPayzelbl4']);
storeAccountCreatelbld =
TranslaonlLanguages, fromMap(json[''storeAccountCreatelhls']);
storeAccountCreatelbl5 =
TranslaonlLanguages.frooMap(json['storeAccountCreatelbl5']);
storeAccountCreatelbls =
TranslaonlLanguages.fromMap(json['storeAccountCreatelbls']);
storeAccountCreatelbl? =
TranslaonLanguages.fromMap(json['storeAccountCreatelbl?7']);
storeAccountCreatelbl8 =
TranslaonLanguages.fromMap(json['storeAccountCreatelbl4']);
storeAccountCreatelbl? =
TranslaonLanguages.fromMap(json['storeAccountCreatelbl9']);
storeAccountCreatelbl1d =
TranslaonlLanguages,fromMap(json['storeAccountCreatelbl18']);
storeAccountCreatelblll =
TranslaonLanguages.fromMap(json['storeAccountCreateLlbl1l']);
storeAccountCreatelbl12 =
cs I
storeAccountCreatelbll3 =
this.methodsLbl8,
storeAccountCreatelblls =
TranslaonlLanguages.fromMap(json[''storeAccountCreatelbll4']);
storeAccountCreatelbll5 =
TranslaonlLanguages.fromMap(json[''storeAccountCreatelbli5']);
storeAccountCreatelbllé =
TranslaonlLanguages,fromMap(json['storeAccountCreatelbl16']);
storeAccountCreatelbll? =
TranslaonLanguages.fromMap(json['storeAccountCreatelbl17']);
storeAccountCreatelbl18 =
TranslaonLanguages.fromMap(json[''storeAccountCreatelbl17']);
storeAccountCreatelbl19 =
TranslaonLanguages.fromMap(json['storeAccountCreatelbl19']);
storeAccountCreatelbl20 =
TranslaonLanguages.fromMap(json['storeAccountCreatelbl26']);
storeAccountCreatelbl2l = 
TranslaonLanguages.fronMap(json['storeAccountCreatelbl21'));
storeAccountCreatelbl22 =
TranslaonLanguages.fromMap(json[''storeAccountCreatelbl22']);
storeAccountCreatelbl23 =
TranslaonLanguages,fromMap(json['storeAccountCreatelbl19']);
storeAccountCreatelbl24 =
TranslaonLanguages.fronMap(json[''storeAccountCreatelbl24']);
storeAccountCreatelbl25 =
TranslaonLanguages.fromMap(json['storeAccountCreatelbl25'));
storeAccountCreatelbl2é =
TranslaonlLanguages.fromMap(json[''storeAccountCreatelbl26']);
storeAccountCreatelbl27 =
TranslaonlLanguages.fromMap(json[''storeAccountCreatelbl27']);
storeAccountLoginlbll =
TranslaonLanguages.fromMap(json[‘'storeAccountCreatelbl24']);
storeAccountloginlbl2 =
storeAccountloginlbl3 =
storeAccountloginlbl3d =
TranslaonLanguages.fromMap(json['storeAccountloginlbl3']);
storeAccountCreatelbll =
TranslaonLanguages.fromMap(json['storeAccountCreatelbl21°]);
storeAccountloginlbl5 =
TranslaonLanguages.fronMap(json['storeAccountCreatelbl2']);
storeAccountloginlblé =
TranslaonLanguages.fromMap(json['accountDetailProfilelbl5']);
Tranel arian! annuanne frnamManldennl 'ctanalrrnnuntt andinl KIT 1).
TranslaonlLanguages.fromMap(json['storeForgotPasswordlbll']);
storeForgotPasswordLlbl2 =
TranslaonLanguages.fromMap(json(['storeforgotPasswordlbl2']);
storeForgotPasswordlbl3 =
TranslaonLanguages.fronMap(json(''storeForgotPasswordlbll']);
storeForgotPasswordLblé =
TranslaonLanguages.fronMap(json[‘storeForgotPasswordlblé']);
storeForgotPasswordLbls =
TranslaonLanguages.fromMap(json[''storeForgotPasswordlbll']);
TranslaonLanguages.fromMap(json[''storeForgotPasswordlbll']);
TranslaonlLanguages.fromMap(json['storeAccountloginlbl2']);
paymentPayzelbl5 = TranslaonlLanguages,fromMap(json['paymentPayzelbl5']);
TranslaonLanguages.fronMap(json[''storeChangePasswordlbll']);
storeAccountLoginlblé =
FR AHOV- REND. FyRNON LIVOnL umustpostovsbuenimonns. 1) ;
storeChangePasswordLbl3 =
TranslaonLanguages.fronMap(json(''storeChangePasswordlbl3']);
storeAccountCreatelbl23 =
TranslaonLanguages.fronMap(json['storeAccountCreatelbl22']);
storeAccountCreatelbls =
TranslaonLanguages.fromMap(json['storeChangePasswordLbl5']);
storeChangePasswordLblé =
TranslaonLanguages.fromMap(json[''storeChangePasswordLblé']);
storeChangePasswordLbl? =
TranslaonLanguages.fronMap(json('storeChangePasswordLbl7']);
storeApproveLbll = Translaonlanguages.fronMap(json[''storeApprovelbll']);
storeApprovelbl2 = TranslaonlLanquages.fromMap(json[''storeApprovelbl2']);
storeApprovelbl3 = TranslaanLanguages.fromMap(json['storeApprovelbl3']);
TranslaonLanguages. fromMap(json['storeAccountCreatelbl3'']);
storeNavDrawerLbll =
storeAccountSetupDetailslbl24 =
TranslaonLanguages.fromMap(json['storeNavDrawerLbl2']);
TranslaonLanguages.fromMap(json('storeNavDrawerLbl4']);
storeNavDrawerLbléd =
TranslaonLanguages.fromMap(json['storeNavDrawerLblé4']);
TranslaonLanguages.fromMap(json['storeNavDrawerLbl5']);
storeNavDrawerlLblé =
TranslaonLanguages.fronMap(json['storeAccountSetupDetailslbl28']);
accountDetailPreferencelbl8 =
TranslaonLanguages.fromMap(Json['accountDetailPreferencelbl8']);
accountDetailPreferencelbl? =
TranslaonLanguages.fronMap(json['storeNavDrawerlbl8']);
orderUserLbll = TranslaonLanguages,fromMap(json['erderUserlbll']);
orderUserLbl2 = TranslaonLanguages.fromMap(json(‘orderUserLbl2']);
? json['commissionRao'].toDouble()
orderUserlbl4 = TranslaonlLanguages.fromMap(json(‘orderUserLblé']);
storeDashboardLbl3 =
TranslaonLanguages.fromMap(json(['storeDashboardLlbl3']);
TranslaonLanguages.fromMap(json['orderUserDetaillbll'']);
TranslaonLanguages.fromMap(json['storeDashboardLbls4']);
storeDashboardLbl5 =
TranslaonLanguages.fromMap(json['storebashboardlbhls']);
storeAccountSetuplbll =
TranslaonLanguages.fromMap(json['storeAccountSetuplbll']);
TranslaonLanguages.fromMap(json['orderUserDetaillblé']);
orderUserDetaillbl5 =
TranslaonLanguages.fromMap(json['orderUserDetaillbl5']);
TranslaonLanguages.fromMap(json['storeAccountSetuplbl3']);
ER ETUDE FI SPU Rp
TranslaonLanguages.fromMap(json['storeAccountCreatelbl18']);
storeAccountSetuplbl5 =
orderUserDetaillbl8 =
storeAccountSetuplblé =
TranslaonLanguages.fromMap(json['storeAccountSetuplblé‘]);
storeAccountSetuplbl7 = |
IranslaonLanguages.fromMap()son| ‘storeAccountCreatelblls')); £2 Av
TranslaonlLanguages. fromMap(json['storeAccountSetuplbl8']);
storeAccountSetuplbl? =
orderUserDetaillbll2 =
TranslaonLanguages.fromMap(json['orderUserDetaillbli2']);
TranslaonLanguages,fromMap(json['storeAccountSetuplbl10']);
storeAccountSetuplblll =
orderStorelbl3 = TranslaonLanguages,fromMap(json['orderStorelbl3']);
storeAccountSetuplbll2 =
TranslaonLanguages.fromMap(json['storeAccountSetuplbl8']));
storeAccountSetuplbll3 =
storeAccountSetuplbllé =
TranslaonLanguages.fronMap(json['storeAccountSetuplbll4‘]);
storeAccountSetupLblls =
orderStorelbl1l = TranslaonLanguages,fromMap(json['orderStorelbl11']);
storeAccountSetupDetailslbll =
TranslaonLanguages.fromMap(json(['storeAccountSetupDetailslbll']);
searchFilterLbl3 = TranslaonlLanguages. gest supe: ‘searchFilterLbl3']);
IranslaonLanquages.fromMap(json| ‘storeAccountCreatelblls')); £2 Av
storeAccountSetupDetailslbls =
TranslaonLanguages.fromMap(json('storeAccountSetupDetailsLbl3‘]); w2 » v
storeAccountSetupDetailslbl4 =
TranslaonLanguages.fromMap(json['storeAccountSetupDetailsLblé']);
storeAccountSetuplbl1e =
vat: json['vat'],
storeAccountCreatelbl2 =
TranslaonLanguages,fronMap(json['storeAccountSetupDetailslblé']);
storeAccountSetupDetailslbl? =
countryID: json['countryID'],
storeAccountSetupDetailsLbl8 =
TranslaonLanguages, fromMap(json['storeAccountSetupBDetailsiblsd']);
storeAccountSetupDetailsLbly =
TranslaonLanguages.fromMap(json['storeAccountSetupDetailslbl9']);
storeAccountSetupletailslblll =
TranslaonLanguages.fromMap(json['storeAccountSetupBetailslblie‘]);
storeAccountSetupDetailslblll =
TranslaonlLanguages.fromMap(json['storeAccountSetupDetailsLblll']);
storeAccountSetupDetailslbll2 =
TranslaonLanguages. fronMap(json[ 'storeAFcountSetupDetailsLbli2' 1);
storeAccountSetupDetailslblll =
TranslaonLanguages,fromMap(json['storeAccountSetupDetailsLbl13']);
storeNavDrawerLbl2 =
Translaonlanguages.fromMap(json['storeAccovntCreatelbl3']);
storeNavDrawerlLbl3 =
TranslaonlLanguages.fromMap(json['storeAccountSetupDetailsLbl15']);
storeNavDrawerLblé =
TranslaonlLanguages.fromMap(json['storeAccountSetupDetailslbll6']);
storeNavDrawerlLbl5 =
storeNavDrawerLbléd =
storeAccountSetupDetailslblls =
TranslaonLanguages.fronMap(json['storeAccountSetupDetailsLbl18']);
storeAccountSetupDetailslbll? =
Translaonlanguages. fronMap(json['storeAccountSetupDetailslbl19']);
storeAccountSetupDetailslbl20 =
TranslaonLanguages.fromMap(json['storeAccountSetupDetailslhl26']);
storeAccountSetuplbll =
Translaonlanguages. frontap(json[ 'storeAFcountSetupDetailsLbl21']);
storeAccountSetupDetailsLbl22 =
TranslaonlLanguages,fronMap(json['storeAccountSetupDetailslbl18']);
storeAccountSetupDetailslbl23 =
TranslaonLanguages.fronMap(json['storeAccountSetupDetailslbl23']);
this.storeNavDrawerLbl4,
this.storeNavDrawerlLbl5,
storeAccountSetupDetailsLbl25 =
TranslaonLanguages.fromMap(Json['storeAccountSetupDetailslbl25']);
storeAccountSetupDetailslbl26 = if
pee SRN | LS
storeAccountSetupDetailsLbl27 =
TranslaonLanguages, fromMap(json['storeAccountSetupDetailslbl27']);
storeAccountSetupDetailslbl28 =
TranslaonLanguages.fromMap(json['storeAccountSetupDetailsLbl28']);
this.storeAccountSetuplbll,
TranslaonLanguages.fronMap(Json['storeAccountSetupDetailslbl29']);
storeAccountSetupDetailslbl3® =
this.storeAccountSetuplbls,
storeDashboardlbll =
TranslaonLanguages,fronMap(json['storeAccountSetupDetailslbl31*]);
storeAccountSetupDetailsLbl32 =
storeDashboardLbll = x2 Av
storeAccountSetupFoodLbll =
this.storeAccountSetuplblle,
storeAccountSetupFoodLbl2 =
TranslaonlLanguages.fromMap(Json['storeAccountSetupFoodLbl2']);
storeAccountCreatelblll =
TranslaonLanguages.fromMap(json['storeAccountSetupFoodlbl3']);
storeAccountSetupFoodlbl4 =
TranslaonLanguages.fronMap(json['storeAccountCreatelbl12']); =
storeAccountSetupFoodlLblS =
TranslaonLanguages.fromMap(json['storeAccountSetupFoodLbl5']);
storeAccountSetupFoodLblé =
TranslaonLanguages.fromMap(json['storeAccountSetupFoodLblé']);
storeAccountSetupFoodLbl7 =
TranslaonlLanguages.fronMap(Json['storeAccountSetupFoodLbl7']);
TranslaonLanguages.fromMap(json['storeAccountSetupFoodlbll6']);
TranslaonLanguages.fromMap(json['storeAgcountSetupFoodLbl8']);
storeAccountSetupFoodLbl9 = if
TranslaonLanguages.fromMap(json['storeAccountSetupFoodLbl9']);
storeAccountSetupFoodLbl10 =
TranslaonLanguages.fromMap(json['storeAccountSetupFoodLbls']);
storeAccountSetupFoodLbl1l =
TranslaonLanguages,fromMap(json['storeAccountSetupFoodLbl11']);
storeAccountCreatelbl20 =
TranslaonLanguages.fromMap(json['storeAccountSetuplbl9']);
this.storeAccountSetupDetailsLbllg, 
TranslaonLanguages.fromMap(json['storeAccountSetupFoodLbl13']);
storeAccountSetupDetailslblé =
TranslaonLanguages.fromMap(json['storeAccountCreatelbl22']);
storeAccountCreatelbl23 =
logo: json['logo'],
storeAccountSetupFoodLbllé =
Translaonlanguages.fromMap(json['storeAccountSetupFoodlbl16']);
storeAccountCreatelbl25 =
TranslaonLanguages.fromMap(json['storeAccountSetupFoodLbl17']);
storeAccountSetupFoodLbl18 =
TranslaonLanguages.fromMap(json['storeAccountSetupFoodLbl18']);
storeAccountSetupFoodLbl19 =
TranslaonLanguages.fromMap(json['storeAccountSetupFoodLbl19']);
storeAccountSetupFoodLbl20 =
TranslaonLanguages. fromMap(json['storeAccountSetupFoodLbl16']);
storeAccountSetupFoodLbl21 =
this.storeNavDrawerLbl3,
this.storeAccountSetupFoodLbl4,
TranslaonLanguages.fronMap(Json['storeAccountSetupFoodLbl22']);
storeAccountSetupSchedulelbll =
TranslaonLanguages.fromMap(json['storeAccountSetupDetailsLbl25']));
storeAccountloginlbls = w2 » v
TranslaonLanguages.fromMap(json('storeAccountSetupSchedulelbl2']);
storeAccountSetupDetailsLbl2? =
TranslaonLanguages.fromMap(json['storeAccountSetupDetailslbl7']);
this.storeAccountSetupFoodLbl12, T
TranslaonLanguages.fromMap(Json('storeAccountSetupSchedulelbls']);
storeAccountSetupSchedulelbl5 =
this.storeAccountSetupFoodLbl15,
storeAccountSetupSchedulelblé =
TranslaonLanguages.fromMap(json['storeAccountSetupSchedulelbls']);
this.storeAccountSetupFoodLbl18,
TranslaonLanguages,fromMap(json['storeAccountSetupSchedulelbl?']);
storeAccountSetupSchedulelbl8 =
this.storeAccountSetupFoodLbl21,
this.storeAccountSetupFoodLbl22,
this.storeAccountSetupSchedulelbll,
this,storeNavDrawerLbl4,
this.storeAccountSetupSchedulelbld,
city: json['eity'] 2? '',
bool stepCompleted;
storeAccountSetupDetailslbl2é =
TranslaonLanguages.fromMap(json['storeAccountSetupDetailslblié']);
storeAccountSetupDetailsLbl27 =
this.storeAccountSetupSchedulelbll,
this.storeNavDrawerLbl3,
TranslaonLanguages.fromMap(Json['storeAccountSetuplearnLbl3']);
storeAccountSetupDetailslbll9 =
TranslaonLanguages.fromMap(json('storeAccountSetupDetailslbl19']);
this. storeAccountSetupLearnLbl3, I
this.storeAccountSetupLearnLblé,
TranslaonLanguages.fronMap(json['storeAccountSetupLearnLbl3']);
TranslaonLanguages.fromMap(json(['storeAccountSetupLearnlbl3']);
storeAccountSetupDetailsLbl28 =
this.storeAccountSetuplearnLbl8,
storeAccountSetuplLearnlbls8 =
TranslaonLanguages.fromMap(Json['storeAccountSetupLearnlbl8']);
storeAccountSetuplearnLbly =
TranslaonLanguages.fromMap(json['storeAccountSetuplearnlbl9']);
storeAccountSetuplearnlbl10 =
TranslaonLanguages.fromMap(Json['storeAccountSetuplearnLbl10']);
storeAccountSetupLearnlblll =
TranslaonLanguages.fromMap(json['storeAccountSetuplearnlblll']);
TranslaonLanguages.fromMap(json['storeAccountSetuplearnlbl8']);
storeAccountSetuplLearnlbll3 =
TranslaonLanguages.fromMap(json(['storeAccountSetuplearnlbl13']);
storeAccountSetuplLearnlbll4 =
TranslaonLanguages, fromMap(Json['storeAccountSetuplearnlbl14']);
storeAccountSetuplLearnlblls =
TranslaonLanguages.fromMap(json['storeAccountSetupLearnLbl1s']);
storeAccountSetuplLearnLbl1é =
TranslaonLanguages, fromMap(Json['storeAccountSetuplearnLbl1s']); 7
serviceDuration: json['serviceDuration'],
? [1
storeAccountSetupVatlbl2 =
Translaonlanguages.fromMap(Json['storeAccountSetupvatlbl2']);
storeAccountSetupVatlbl3 =
TranslaonLanguages.fromMap(Json['storeAccountSetupVatlbl3']);
storeAccountSetupVatlbls4 =
Translaontanguages.fromMap(Json['storeAccountSetupVatlbls']);
storeAccountSetupVatlbls =
TranslaonLanguages.fromMap(Json['storeAccountSetupvatlbl5']);
storeAccountSetupVatlblé =
TranslaonLanguages.fromMap(Json['storeAccountSetupVatlbl2']);
storeAccountSetupVatLbl? =
TranslaonLanguages,fromMap(json['storeAccountSetupVabl?']);
storeAccountSetupVatlblad =
TranslaonLanguages.fromMap(Json['storeAccountSetupVatLlbla']);
etoralecauntSatunVa h10 =
TranslaonLanguages. froniap(Json[ 'storeAfcountSetupVatLbls']);
storeDetailslbll = TranslaonlLanguages.fromfap(json[''storeDetailsLlbll']);
TranslaonLanguages, fromMap(Json['storeAccountSetuplearnLblls']); J
TranslaonLanguages.fromMap(json[‘'storeAccountSetupVatLbl8']);
TranslaonLanguages.fromMap(Json['storeAccountSetupvatlbl?']);
storeDetailsLlbl5 = TranslaonlLanguages.fromMap(json['storeDetailslbl5']);
methodsLbl2 = TranslaonlLanguages.fromMap(json[‘methodslbl2']);
methodsLbl3 = TranslaonlLanguages.fromMap(json[‘methodslbl3'']);
methodsLbl4 = TranslaonlLanguages.fromMap(json['methodslbl4'']);
methodsLblS = TranslaonLanguages.fromMap(json['methodsLbl5']);
profileMainlblé = TranslaonlLanguages.fromMap(json['profileMainlblé']);
methodsLbl?7 = TranslacnLanguages.fromMap(json['methodsLbl7']);
methodsLbl8 = TranslaonLanguages.fromMap(json[‘methodsLbl8']);
methodsLbll = TranslaonlLanguages.fromMap(json['methodsLbll']);
homelbl2 = TranslaonLanguages.fromMap(json[ 'homelbl2']);
TranslaonLanguages.fromMap(json( se WI. 1);
storeControllerLbl2 =
TranslaonLanguages.fromMap(json['storeControlleribl2'']);
productControllerilbll =
TranslaonLanguages.fronMap(json['productControllerLbll']);
productControllerLbl2 =
TranslaonLanguages,fromMap(3json(['productControllertbl2']);
storeControllerlbll =
TranslaonLanguages.fromMap(json['productControllerlbl3']);
TranslaonLanguages.fromMap(json['storeAccountSetuplLearnlbls8']);
TranslaonLanguages.fromMap(json['productControllerlbl4']);
userControllerlbll =
storeAccountSetuplearnlbl10 =
TranslaonLanguages.fromMap(json['storeAccountSetuplearnLbll8']);
storeAccountSetuplLearnLblll =
TranslaonLanguages.fromMap(json['storeAccountSetuplearnlbl1l‘]);
TranslaonLanguages.fromMap(json(‘userControllerlbl3']);
storeAccountSetuplearnLbll3 =
TranslaonLanguages.fromMap(json('vserControllerLbl4']);
userControllerLbl5 =
userControllerlblé =
TranslaonLanguages.fromMap(json['userControllerlbls']);
systemGenericErrorLbll =
TranslaonLanguages. framMap(json[ ‘systenGenericEiForLbll']);
paymentGatewaylbll =
TranslaonLanguages.fromMap(json('paymentGatewaylLbl1']);
userControllerLbl5 =
TranslaonLanguages.fromMap(json['paymentGatewayLbl2']));
paymentGatewayLbl3 =
storeAccountSetuplLearnlbl? =
TranslaonLanguages,fromMap(json['storeAccountSetuplearnlbl?']);
storeAccountSetuplLearnLbl10 =
TranslaonlLanguages.fromMap(json['userVerifyEmaillbl7']);
storeAccountSetuplLearnLblll =
TranslaonLanguages.fromMap(Json['storeAccountSetupLearnlbl8']);
storeAccountSetupLearnlbl12 =
TranslaonLanguages.fromMap(json['storeAccountSetuplearnlbl8']);
storeAccountSetuplLearnLbll3 =
data['loginEnterEmaillbl2'] = this.loginEnterEmaillbl2?.toMap();
data 'loginEnterEmaillbl3'] = this.loginEnterEmaillbl3?.toMap();
TranslaonLanguages.fromMap(json['storeAccountSetuplearnlbl12']);
data[ ‘loginBSLbl1'] = this.loginBSLbl1?.toMap(); T
TranslaonLanguages.fromMap(json['storeAccountSetupLearnlbl10']); xn "
data ‘loginBSLb13'] = this.loginBSLb13?.toMap();
data['loginBSLbl4'] = this.loginBSLbl4?.toMap();
storeAccountSetuplLearnlbll2 =
TranslaonLanguages.fromMap(json['storeAccountSetupLearnlbl8']);
data['welcomeSliderLbl3') = this.welcomeSliderLbl3?.toMap();
data['welcomeSliderLbl4'] = this.welcomeSliderLbl4?.toMap();
data[ ‘welcomeSliderLbl5'] = this.welcomeSliderLbl5?.toMap();
data['welcomeSliderLblé'] = this.welcomeSliderLblé6?.toMap();
this.storeNavDrawerLbls,
data['welcomeSliderLbl8'] = this.welcomeSliderLbl8?.toMap();
data['welcomeSliderLbl9'] = this.welcomeSliderLbl9?. tga) H
data[ ‘welcomeSliderLbl10']) = this.welcomeSliderLbl16?.toMap();
data['welcomeSliderLbl11''] = this.welcomeSliderLbl11?.toMap();
this.storeNavDrawerLbl3,
data ‘loginEnterSCLb12'] = this.loginEnterSCLb12?.toMap();
data['loginEnterSCLb13'] = this.loginEnterSCLbL13?.toMap();
data[ ‘loginEnterSCLb14'] = this.loginEnterSCLbl4?.toMap();
data['loginEnterSCLb15'] = this.loginEnterSCLb15?.toMap();
data['loginEnterSCLb16'] = this.loginEnterSCLb16?.toMap();
this.storeAccountSetuplbls,
data['loginEnterSCLb18'] = this.loginEnterSCLb18?.toMap();
data['userVerifyEmaillbl1l'] = this.userVerifyEmaillbl12?.toMap();
storeAccountSetupDetailsLbl32 = x2 Av
data[ 'loginEnterSCLb13'] = this.loginEnterSCLbL3?.toMap();
storeAccountSetupFoodLbll =
this.storeAccountSetuplLbllg,
data['userVerifyEmaillblé'] = this.userVerifyEmaillblé?.toMap();
this.storeAccountSetuplbll2,
data[ ‘vserVerifyEmaillLbl8'] = this.userVerifyEmaillbl8?.toMap();
data[ ‘vserDashboardLbll'] = this.userBashboardLbl1?.toMap();
data['userDashboardLbl2'] = this.userDashboardLbl2?.teMap();
this.storeAccountSetupDetailslbll,
this.storeAccountSetupDetailslbl2,
data['vserVerifyEmaillbl5'] = this.userVerifyEmaillLbl32.toMap();
this.storeAccountSetupDetailslblé,
this.storeAccountSetupDetailsLbl5,
data ‘chooselocaonlbl3']) = this.chooselLocaonlLbl3?.toMap();
data['loginEnterSCLb1S'] = this.loginEnterSCLb15?.toMap();
data[ ‘chooselocaonlbl5'] = this.chooselLocaonLbl5?.toMap();
this.storeAccountSetupDetailsLbl?,
this.storeAccountSetupDetailsLblie,
this.storeAccountSetupDetailsiblll,
datal'chnancalncannl h14'1 = thie chaneslnrcannl h142 taMan():
this.storeAccountSetupDetailslblll,
data 'productBrowselbl5'] = this.productBrowselbl5?.toMap();
data[ ‘productBrowselblé'] = this.productBrowseLblé?.toMap();
this.storeAccountSetupDetailsLbllé,
data[ ‘productBrowselbl8'] = this.productBrowselLbl8?.toMap();
this.storeAccountSetupDetailslbll8,
this.storeAccountSetupDetailslbl2l,
this.storeAccountSetupDetailsLbl20,
this.storeAccountSetupDetailslbl2l,
this.storeAccountSetupDetailslbl22,
data['productBrowselblé'] = this.productBrowselblé?.toMap();
this.storeAccountSetupDetailsLbl24,
data[ ‘productBrowselblé''] = this.productBrowselLbl6?.toMap();
data['storeBNLb12'] = this.storeBNLb12?.toMap();
this.storeAccountSetupDetailsLbl27,
this.storeAccountSetupDetailsLbl28,
this.storeAccountSetupDetailsLbl29,
this.storeAccountSetupDetailsLbl30,
data ‘profileMainlbl5'] = this.profileMainLbl5?.toMap();
data[‘profileMainLblé6'] = this.profileMainLblé6?.toMap();
‘at: 3822 8,
data[ 'productBrowselbl5'] = this.productBrowseLbl5?.toMap();
data[ 'welcomeSliderLbl4'] = this.welcomeSliderLbl4?.toMap();
this.storeAccountSetupFoodLbl4,
data['welcomeSliderLbl11'] = this.welcomeSliderLbl11?.toMap();
this.storeNavDrawerLbls,
this.storeAccountSetupFoodLbl7,
data['welcomeSliderLbl9'] = this.welcomeSliderLbl9?. tga) H
data 'accountDetaillbl3'] = this.accountDetaillbl3?.toMap();
this.storeAccountSetupFoodLbl10,
this.storeAccountSetupFoodLbl11l,
data['loginEnterSCLb12'] = this.loginEnterSCLb12?.toMap();
data['accountDetailProfilelLbl3''] = this.accountDetailProfilelLbl3?.toMap();
this.storeAccountSetupFoodLbl14,
data[ ‘userDashboardLbl4'] = this.userDashboardLbl4?.toMap();
data['accountDetailProfileLblé'] = this.accountDetailProfilelLblé?.toMap();
this.storeAccountSetupFoodLbl17,
data['accountDetailProfilelbl8'] = this.accountDetailProfileLbl8?.toMap();
data['accountDetailProfileLbl9'] = this.accountDetailProfileLbl9?.toMap();
storeAccountSetupSchedulelbl8 =
this.storeAccountSetupFoodLbl13,
this.accountDetailProfileEditLbl1?.toNap();
data[ 'accountDetailProfileEditlbl2'] =
data[ ‘welcomeSliderLbl5'] = this.welcomeSliderLbl5?.toMap();
this.storeAccountSetupSchedulelbl3,
this.storeAccountSetupSchedulelblé4,
data['welcomeSliderLbl8'] = this.welcomeSliderLbl8?.toMap();
data['accountDetaillbl2'] = omprvmsevsmen mip Wil
this.storeAccountSetupSchedulelbl?7,
data 'welcomeSliderLbll11l'] = this.welcomeSliderLbl11?.toMap();
data[ ‘welcomeSliderLbl18'] = this.welcomeSliderLbl16?.toMap();
this.storeAccountSetupSchedulelbl10,
data['accountDetailPaymentLbl3'] = this.accountDetailPaymentLbl3?.toMap();
this.storeAccountSetuplLearnLbll,
this.storeAccountSetupLearnlbl2,
this.storeAccountSetupLearnlbl3,
data[ 'accountDetailPreferencelbl2'] =
this.accountDetailPreferencelbl2?.toMap();
data['accountDetailPaymentLbl3'] = this.accountDetailPaymentLbl3?.toMap();
this.storeAccountSetupLearnLbl?,
data['welcomeSliderLbl4'] = this.welcomeSliderLbl4?.toMap();
data[ ‘accountDetailPreferencelbl2'] =
Antal twat ramalidant M1E']1 « #hie waleamaClidanl R1E2 saManl)-
data[ 'accountDetailPreferencelblé'] =
this.accountDetailPreferencelblé?. toMap();
data[ 'accountDetailPreferencelbl7'] =
data['accountDetailPreferencelbl8'] =
this.accountDetailPreferencelbl8?.toMap();
data[ ‘accountDetailPreferencelbl5'] =
this.accountDetailPreferencelbl9?.toMap();
data['orderUserLbll'] = this.orderUserLbl1?.toMap(); 
data['orderUserLbl2'] = this.orderUserLbl2?.toMap();
data['orderUserLbl3'] = this.orderUserLbl3?.toMap();
data['orderUserlbl4'] = this.orderUserLbl4?.toMap();
data[ 'orderUserLbl5'] = this.orderUserLbl5?.toMap();
data[ ‘orderUserDetaillbll''] = this.orderUserDetaillbl1?.toMap();
this.storeDetailslbll,
data[‘'orderUserDetaillbl3'] = this.orderUserDetaillbl3?.toMap();
data['orderUserLbll'] = this.orderUserLbl1?.toMap(); 
data['orderUserDetaillbl5'] = this.orderUserDetaillbl52.toMap();
data[ ‘orderUserDetaillblé6'] = this.orderUserDetaillblé?.toMap();
data 'orderUserDetaillbl7'] = this.orderUserDetaillbl7?.toMap();
data[ 'orderUserDetaillblg'] = this.orderUserDetaillblf? .toMap();
data[ 'orderUserDetaillbl?''] = this.orderUserDetaillbl9?.toMap();
data[ ‘orderUserDetaillbl16'] = this.orderUserDetaillbl16?.toMap();
data['orderUserDetaillbll1'] = this.orderUserDetaillbl11?.toMap();
data['orderUserDetaillbl12'] = this.orderUserDetaillbl12?.toMap();
data['orderStorelbll'] = this.orderStorelbl1?.toMap();
data['orderStorelbl2'] = this.orderStorelbl2?.toMap();
data[ ‘orderStorelbl3'] = this.orderStorelLbl3?.toMap();
data['orderStorelblé4'] = this.orderStorelbl4?.toMap();
data['orderStorelbl5'] = this.orderStorelLbl5?.toMap();
data[‘orderStorelblé'] = this.orderStorelblé?.toMap();
data['orderStorelbl7'] = this.orderStorelbl7?.toMap();
data[ ‘orderStoreLbl8'] = this.orderStorelbl8?.toMap();
data 'orderStorelbl9'] = this.orderStorelbl9?.toMap();
data[ ‘orderStoreLbl16']) = this.orderStorelbl16?.toMap();
data['orderStorelbl11'] = this.orderStoreLbl11?.toMap();
data['orderUserDetaillbl4'] = this.orderUserDetaillbl4?.toMap();
data[ ‘searchFilterlbl2'] = this.searchFilterLbl2?.toMap();
data[ ‘productDetaillbll'] = this.productDetaillbll?.toMap();
datal'‘gesarchFiltarl h14']1 = thic sparchFiltari h14? tnMan()-
data[ 'searchFilterLbl3'] = this.searchFilterlLbl3?.toMap();
data[ 'searchFilterLbls'] = this.searchFilterLblé?.toMap();
data[ 'searchFilterLbl7'] = this.searchFilterLbl7?.toMap();
data[ ‘searchFilterLbl8'] = this.searchFilterLblB?.toMap();
data[ ‘productDetaillbll'] = this.productDetaillbl1?.toMap();
data[ 'productDetailibl2'] = this.productDetaillbl2?,toMap();
data 'searchFilterLbl3'] = this.searchFilterLbl3?.toMap();
data( ‘productDetaillbl4'] = this.productDetaillbl4?.toMap();
IPANSLALIUNLANGUAGEs, TrONMAap (JSON STOrEACCOUNTSETUPUETALLSLDLLD |); eg
data[ 'searchFilterlbl4'] = this.searchFilterLbl4?.toMap();
data['productDetaillbl7'] = this.productDetaillbl7?.toMap();
data['productDetaillbl8''] = horsemen meme z
data[ ‘productDetaillbl9'] = this.productDetaillbl9?.toMap();
data['productDetaillblie'] = this.productDetaillbl10?.toMap();
data[ 'productDetaillblll'] = this.productDetaillbl11?.toMap();
data 'productDetaillbl12'] = this.productDetaillbl12?.toMap();
'step2': step2,
data['productDetaillbll4'] = this.productDetaillbl14?.toMap();
data['productDetaillbll5'] = this.productDetaillbl15?.toMap();
this.accountDetailPreferencelblS?.toMap();
data[ ‘productDetaillbll7'] = this.productDetaillbl17? JtoMap();
this.accountDetailPreferencelblé?. toMap();
data['productDetaillbl19'] = this.productDetaillbl19?.toMap();
data['productDetaillbl20'] = this.productDetaillbl20?.toMap();
data[ 'productDetaillbl21'] = this.productDetaillbl21?.toMap();
data['paymentPayzelbll'] = this.paymentPayzelbl1?.toMap();
data[ ‘paymentPayzelbl2'] = this.paymentPayzelLbl2?.toMap();
this.accountDetailPreferencelbl9?.toMap();
data[ 'paymentPayzelbl5'] = this.paymentPayzelbl5?.toMap();
data['paymentPayzelblé6'] = this.paymentPayzelblé?.toMan();
data[ 'paymentPayzelbl5'] = this.paymentPayzelbl5?.toMap();
data['storeAccountCreatelbl2'] = this.storeAccountCreatelLbl2?.toMap();
data[ ‘storeAccountCreatelbl3'] = this.storeAccountCreatelbl3?.toMap();
data[ ‘storeAccountCreatelbl4'] = this.storeAccountCreatelbl4?.toMap();
data['orderStorelbll'] = this.orderStorelbl1?.toMap();
data 'paymentPayzelblé''] = this.paymentPayzelbl4?.toMap();
data[ ‘storeAccountCreatelbl7'] = this.storeAccountCreatelbl7?.toMap();
IPANS LALLIONLANGUAGES, TROMMNap Son" STOrEACCOUNTSETUPUETALLSLDLLO |); og
this.accountDetailPreferencelbl5?.toMap();
TranslaonLanguages.fromMap(json['storeAccountSetuplearnlbl?']);
this.accountDetailPreferencelblé?. toMap();
data['accountDetailPreferencelbl8'] =
this.accountDetailPreferencelbl??.toMap();
data 'accountDetailPreferencelbl8'] =
this.accountDetailPreferencelbl8?.toMap();
data[ ‘accountDetailPreferencelbl5'] =
this.accountDetailPreferencelbl9?.toMap();
this.storeNavDrawerLbl3,
this.accountDetailPreferencelbl5?.toNap();
this.accountDetailPreferencelbl8?.toMap();
data['storeAccountCreatelbl21'] = this.storeAccountCreatelbl21?.toMap();
data[ ‘storeAccountCreatelLbl22'] = this.storeAccountCreatelbl22?.toMap();
arnaniuntNatailDaasitlaldi W124 ~
data[ 'accountDetailPreferencelbl5'] =
this.accountDetailPreferencelbl8?.toMap();
data[ 'accountDetailPreferencelbl5'] =
data 'storeAccountCreatelbl27'] = this.storeAccountCreatelLbl27?.toMap();
data['storeAccountLoginlbll'] = this.storeAccountLoginLbl1?.toMap();
data['storeAccountLoginlbl2'] = this.storeAccountLoginLbl2?.toMap();
data[ 'storeAccountLoginlbl3'] = this.storeAccountLoginLbl3?.toMap();
data['storeAccountloginlblé'] = this.storeAccountLoginlblé?.toMap();
data[ ‘storeAccountlLoginlblé'] = this.storeAccountLoginLblé6?.toMap();
data 'storeAccountLoginlbll'] = this.storeAccountLoginLbl1?.toMap();
data 'storeForgotPasswordLbl2'] = this.storeForgotPasswordLbl2?.toMap();
data[ ‘storeAccountlLoginlbll'] = this.storeAccountLoginLbl1?.toMap();
data['storeForgotPasswordLbl4'] = this.storeForgotPasswordLbl4?.toMap();
data['storeForgotPasswordLbl5'] = this.storeForgotPasswordLbl5?.toMap();
data['storeForgotPasswordLblé'] = this.storeForgotPasgwordLblé?.toMap();
data['storeChangePasswordlbll'] = rE
data 'storeChangePasswordLbl2'] = this.storeChangePasswordLbl2?.toMap();
data[ 'storeChangePasswordLbl3'] = this.storeChangePasswordLbl3?.toMap();
data[ 'storeChangePasswordlLbl4'] = this.storeChangePasswordLbl4?.toMap();
data[ ‘storeChangePasswordLbl5'] = this.storeChangePasswordLbl5?.toMap();
data 'storeChangePasswordLblé'] = this.storeChangePasswordLbl6?.toMap();
data['storeChangePasswordLbl7'] = this.storeChangePasswordLbl7?.toMap();
datal ‘storeApprovelbll'] = this.storeApprovelbl1?.toMap():
data['storeApprovelbl2'] = this.storeApprovelbl2?.toMap();
data ‘storeApprovelbl3'] = this.storeApprovelbl3?.toMap();
data[ 'storeApprovelbl4''] = this.storeApprovelblé?.toMap();
data['storeNavDrawerLbll'] = this.storeNavDrawerLbl1?.toMap();
data['storeNavDrawerlLbl2'] = this.storeNavDrawerLbl2?.toMap();
data['storeNavDrawerLbl3'] = this.storeNavDrawerLbl3?.toMap();
data['storeNavDrawerLbl4'] = this.storeNavDrawerLbl4? JtoMap();
data 'storeNavDrawerLbl5']) = this.storeNavDrawerLbl5? toMap();
data['storeNavDrawerLblé'] = this.storeNavDrawerLblé?.toMap();
'step5': steps,
data['storeChangePasswordlbll'] = Egan FR
data[ 'storeDashboardLbl3'] = this.storeDashboardLbl3?.toMap();
data 'storeChangePasswordLbl3'] = this.storeChangePasswordLbl3?.toMap();
data['storeDashboardLbl5'] = this.storeDashboardLbl5?.toMap();
data[ 'storeAccountSetuplbll'] = this.storeAccountSetupLbl1?.toMap();
data['storeAccountSetuplbl2'] = this.storeAccountSetupLbl2?.toMap();
data 'storeAccountSetuplbl3''] = this.storeAccountSetupLbl3?.toMap();
data 'storeAccountSetuplbl4'] = this.storeAccountSetupLbl4?.toMap();
data['storeAccountSetuplbl5'] = this.storeAccountSetupLbl5?.toMap();
data ‘storeAccountSetuplblé'] = this.storeAccountSetupLblé?.toMap();
data['storeAccountSetupLbl7'] = this.storeAccountSetuplbl7?.toMap();
data ‘storeAccountSetuplbl8') = Nerpiomen arama: sooner
data['storeAccountSetuplbl9'] = this.storeAccountSetupLbl9?.toMap();
data[ 'storeAccountSetuplbl18'] = this.storeAccountSetupLbl16?.toMap();
data[ ‘storeAccountSetuplbll18'] = this.storeAccountSetuplLbl16?.toMap();
data['storeAccountSetuplbl12'] = this.storeAccountSetupLbl12?.toMap();
data 'storeAccountSetuplbl13'] = this.storeAccountSetuplLbl13?.toMap();
data['storeAccountSetuplbll4'] = this.storeAccountSetuplbl14?.toMap();
data[ 'storeAccountSetuplbl15'] = this.storeAccountSetupLbl15?.toMap();
data['storeAccountSetupDetailsLbll'] =
data[ ‘storeAccountSetupLbl7'] = this.storeAccountSetuplbl7?.toMap();
data[ 'storeAccountSetupDetailsLbl2'] =
this.storeAccountSetupDetailsLbl2?.toMap();
data['storeAccountSetupDetailslbl5'] =
this.storeAccountSetupDetailsLbl3?.toNap();
data['storeAccountSetupDetailslblé''] =
data[ ‘storeAccountSetuplbll5'] = this.storeAccountSetuplLbl15?.toMap();
data[ ‘storeAccountSetupDetailsLlbl5'] =
this.storeAccountSetupDetailsLbl5?.toNap();
data[ ‘storeAccountSetupDetailsLblé'] =
data['storeAccountLoginlbl3'] = this.storeAccountLoginlbl3?.toMap();
data 'storeAccountSetupDetailslbl?'] =
this.storeAccountSetupDetailsLbl7?.toMap();
data[ 'storeAccountSetupDetailslbl8'] =
this.storeAccountSetupDetailsLbl82.toMap();
data['storeAccountSetupDetailslbl9'] =
data[ ‘storeAccountSetupDetailsLbl8'] =
data['storeForgotPasswordLbl4'] = this.storeForgotPasswordLbl4?.toMap();
this.storeAccountSetupDetailsLbl10?. toMap();
data['storeAccountSetupDetailslbl1l'] =
this.storeAccountSetupDetailsLbl11?.toNap();
data['storeAccountSetupDetailslbl12'] =
this.storeAccountSetupDetailsLbl12?.toNap();
data['storeAccountSetupDetailsLbl13'] =
data[ 'storeAccountSetupDetailslbl13'] =
data['storeAccountSetupDetailsLbll4'] =
data[ 'storeAccountSetupDetailslbli3'] =
data['storeAccountSetupDetailsLblls'] =
this.storeAccountSetupDetailsLbl15?.toMNap();
data[ 'storeAccountLoginlbl2'] = this.storeAccountLoginLbl2?.toMap();
‘phone': phone,
data[ ‘storeAccountloginlbl4'] = this.storeAccountLoginlbl4?.toMap();
‘logo': logo,
data[ ‘storeAccountSetupDetailslbl18''] =
'accountNumber': accountNumber,
};
data[ 'storeAccountSetupDetailslbl8'] =
String serialize() => json.encode(toJson());
this.storeAccountSetupDetailsLb120?.toMap();
data['storeAccountSetupDetailsLbl21'] =
this.storeAccountSetupDetailsLbl21?.toMap();
data[‘storeAccountSetupDetailsLbl22'] =
this.storeAccountSetupDetailsLbl22?.toMap();
data[ ‘storeAccountSetupDetailsLbl23'] =
this.storeAccountSetupDetailsLbl23?.toMap();
this.storeAccountSetupDetailsLbl21?.toMap();
this.storeAccountSetupDetailsLb128?.toMap();
data['storeAccountSetupDetailsLbl25') =
this.storeAccountSetupDetailsLbl25?.toMap();
data['storeAccountSetupDetailslbl2é'] =
this.storeAccountSetupDetailsLbl26?.toMap();
data[ ‘storeAccountSetupDetailslbl27'] =
this.storeAccountSetupDetailsLbl27?.toMap();
data 'storeAccountSetupDetailsLbl28'] =
this.storeAccountSetupDetailsLb125?.toMap();
data[ 'storeAccountSetupDetailsiLbl29'] =
this.storeAccountSetupDetailsLbl25?.toMap();
data['storeAccountSetupDetailslbl30'] =
this.storeAccountSetupDetailsLbl387?.toMap();
data['storeAccountSetupDetailsLbl3l'] =
this.storeAccountSetupDetailsLbl31?.toMap();
data[‘storeAccountSetupDetailsLbl32'] =
this.storeAccountSetupDetailsLbl32?.toMap();
data['storeAccountSetupFoodLbll'] = this.storeAccountSetupFoodLbl1?.toMap();
this.storeAccountSetupDetailsLbl38?.toMap();
data[ ‘storeAccountSetupFoodLbl3'] = this.storeAccountSetupFoodLbl3?.toMap();
this.storeAccountSetupDetailsLbl38?.toMap(); T
data 'storeAccountSetupFoodLbl5'] = this.storeAccountSetupFoodLbl5?.toMap();
data 'storeAccountSetupFoodLblé'] = this.storeAccountSetupFoodLblé?.toMap();
data['storeAccountSetupFoodLbl7'] = this.storeAccountSetupFoodLbl7?.toMap();
data[ 'storeAccountSetupFoodLbl8'] = this.storeAccountSetupFoodLbl8?.toMap();
data['storeAccountSetupFoodLbl9'] = this.storeAccountSetupFoodlLbl9?.toMap();
data['storeAccountSetupFoodlLbl18'] =
this.storeAccountSetupFoodLbl10?. toMap();
data['storeAccountSetupFoodLbl11'] = [:
this.storeAccountSetupFoodLbl11?. toMap();
data 'storeAccountSetupFoodLblé'] = this.storeAccountSetupFoodLblé?.toMap();
this.storeAccountSetupFoodLb112?. toMap();
data[ 'storeAccountSetupFoodLbl13'] =
this.storeAccountSetupFoodLbl13?.toMap();
data['storeAccountSetupFoodLbl14'] =
this.storeAccountSetupFoodLbl14?.toNap();
data[ 'storeAccountSetupFoodLbl15'] =
this.storeAccountSetupFoodLbl15?.toMap();
data['storeAccountSetupFoodLbl2'] = this.storeAccountSetupFoodLbl2?.toMap();
this.storeAccountSetupFoodLbl16?.toMap();
data[‘storeAccountSetupFoodLbl2'] = this.storeAccountSetupFoodLbl2?.toMap();
this.storeAccountSetupFoodLbl17?.toMap();
this.storeAccountSetupFoodLbl18?. toMap();
data 'storeAccountSetupFoodLbl19'] =
this.storeAccountSetupFoodLbl19?.toMap();
data 'storeAccountSetupFoodlLbl20'] =
this.storeAccountSetupFoodLbl20?.toMap();
data['storeAccountSetupFoodLbl28'] =
data['storeAccountSetupFoodLbl3'] = this.storeAccountSetupFoodLbl3?.toMap();
data['storeAccountSetupFoodlLbl22'] =
this.storeAccountSetupFoodLbl22?.toMap();
data['storeAccountSetupSchedulelbls'] =
this.storeAccountSetupSchedulelbl1?.toMap();
data[ ‘storeAccountSetupScheduleLbl2'] =
this.storeAccountSetupSchedulelbl2?.toMap();
data['storeAccountSetupSchedulelbl3'] =
this.storeAccountSetupSchedulelbl3?. toMap();
data['storeAccountSetupSchedulelbll'] =
this.storeAccountSetupScheduleLbl4?.toMap();
this.id = 0,
data[ ‘storeAccountSetupSchedulelbll'] =
data['storeAccountSetupSchedulelbls'] =
this.storeAccountSetupSchedulelblé?.toMap();
data['storeAccountSetupSchedulelbl?'] =
data[ ‘storeAccountSetupDetailslbl27'] =
this.storeAccountSetupDetailsLbl27?.toMap();
this.storeAccountSetupScheduleLbl8?.toMap(); 
data[ ‘storeAccountSetupDetailsLbl28'] =
this.storeAccountSetupSchedulelbl9?.toMap();
this.storeAccountSetupDetailsLbl29?.toMNap();
data[ ‘storeAccountSetupDetailsLbl30''] =
data 'storeAccountSetupSchedulelbl1l'] =
this.storeAccountSetupSchedulelbl11?.toMap();
this.storeld = 8,
this.storeAccountSetupLearnLbl1?.toMap();
data['storeAccountSetupLearnLbl2'] =
this.storeAccountSetuplearnlbl2?.toMap();
data['storeAccountSetupLearnlbl3'] =
this.storeAccountSetupLearnLbl3?.toMap();
data['storeAccountSetupSchedulelbl1l'] =
data['storeAccountSetupSchedulelblll'] =
this.storeAccountSetupDetailsLbl25?.toMap();
data[ ‘storeAccountSetupDetailsLbl2é'] =
this.storeAccountSetupDetailsLbl26?.toMap();
data[‘storeAccountSetupDetailslbl27'] =
this.storeAccountSetupDetailsLbl27?.toMap();
data[ ‘storeAccountSetupDetailsLbl28'] =
this.storeAccountSetupDetailsLbl25?.toMap();
data 'storeAccountSetupDetailsLbl29'] =
this.storeAccountSetupDetailsLbl25?.toMap();
data[ ‘storeAccountSetupDetailslbl38'] =
data['storeAccountSetuplLearnlbl10'] =
this.storeAccountSetupLearnLbl10?.toMap();
“totalReserved": totalReserved,
this.storeAccountSetuplearnLbl11?.toMap();
data['storeAccountSetuplLearnlbl12''] =
this.storeAccountSetupLearnLbl12?.toMap();
data['storeAccountSetupLearnlbl12''] =
data[ ‘storeAccountSetupDetailsLbl29'] = AeF2 0
data['storeAccountSetuplLearnlbl10'] =
this.storeAccountSetupLearnlLbl12?.toMap();
data['storeAccountSetupLearnlbll5'] =
this.storeAccountSetupLearnLbl15?.toMap();
data['storeAccountSetupLearnLbl16'] =
this.storeAccountSetupLearnLbl16?.toMap();
data[ ‘storeAccountSetupVatLbll'] = this.storeAccountSetupVatLbll?.toMap();
data['storeAccountSetupVatLbl2'] = this.storeAccountSetupVatLbl2?.toMap();
data ‘storeAccountSetupVatLbl3'] = this.storeAccountSetupVatLbl3?.toMap();
data['storeAccountSetupVatLbl5'] = this.storeAccountSetupVatLbl5?.toMap();
data['storeAccountSetupVatlLblé'] = this.storeAccountSetupVatLblé?.toMap();
data['storeAccountSetupVatLbl7'] = this. storeAccountSqtupVatLbl7?. toMap();
data['storeAccountSetupVatLbl8'] = this.storeAccountSetupVatLbl8?.toMap();
data['storeAccountSetupVatLbl9'] = this.storeAccountSetupVatLbl9?.toMap();
data ‘storeDetailslbll'] = this.storeDetailsLbl1?.toMap();
data['storeDetailsLbl2'] = this.storeDetailsLbl2?.toMap();
data['storeDetailsLbl3'] = this.storeDetailsLbl3?.toMap();
data 'storeDetailslbl4'] = this.storeDetailsLbl4?.toMap();
data['storeDetailsLbl5'] = this.storeDetailsLbl5?.toMap();
data['storeDetailsLbl3'] = this.storeDetailsLbl3?.toMap();
data['storeDetailsLbl3‘] = this.storeDetailsLbl3?.toMap();
data['userControllerLbl4'] = this.userControllerLbl4?.toMap(); 2 Av
data['userControllerlbl5‘'] = this.userControllerLbl5?.toMap(); xR oy
data['userControllerLblé'] = this.userControllerLblé?.toMap();
data['systemGenericErrorlbll'] = this.systemGenericErrorLbl1?.toMap();
data['paymentGatewaylLbll'] = this.paymentGatewayLbl1?.toMap();
data[ ‘paymentGatewayLbl2'] = this.paymentGatewayLbl2?.toMap();
data[ ‘paymentGatewayLbl3'] = this.paymentGatewayLbl3?.toMap();
return data;
}
}
data['systemGenericErrorlbll'] = this.systemGenericErrorLbl1?.toMap();
String en;
String ge;
TranslaonLanguages({
this.en = '-No Content-',
this.ge = '-No Content-',
12H
factory TranslaonlLanguages.fromJson(String str) =>
3 1H
I
TranslaonLanguages.fromMap(json.decode(str));
TranslaonLanguages(
this.ge = '-No Content-',
19H
3;
XR A ~
TranslaonLanguages, fromMap(json.decode(str));
String toJson() => json.encode(toMap());
"ge": ge,
}:
return this.en;
String getTranslaonByCode(String code) {
if (code == 'ge') {
return this.ge;
} else if (code == 'en') {
return this.en;
"ge": ge, 
I
return this.en;
this.storeAccountSetupLearnLbl15?.toMap();
data['storeAccountSetupLearnLbl16'] =
TranslaonLanguages(
data[‘'storeAccountSetupVatLbll‘] = this.storeAccountSetupVatLbll?.toMap();
String? deviceID;
String? ipAddress;
data[ ‘storeAccountSetupVatLbl4'] = this.storeAccountSetupVatLbl4?.toMap();
data['storeAccountSetupLearnlbl15'] =
this.deviceID,
this.ipAddress,
ISH I
}
}
this.ipAddress,
this.ipAddress,
Store deserialize(String json) => Store.fromJson(jsonDecode(json)); ¥2 Av
data[ ‘storeAccountSetupDetailslbl32''] =
}
int? productQty; - Saks
data['storeAccountSetupDetailsLbl26'] =
this.storeAccountSetupDetailsLbl25?.toMap();
storeAccountCreatelbl13 =
“productQty": productQty,
this.storeAccountSetupDetailsLb126?.toMap();
data[‘storeAccountSetupDetailsLbl27'] =
this.storeAccountSetupDetailsLbl25?.toMap();
this.weekDayld = 0,
this.productQty,
this.storeAccountSetupDetailsLbl52.toMap();
Map<String, dynamic> toMap() => {
Lr To
isAcve: json["isAcve"] ?? false,
"id": id,
this.storeAccountSetupDetailsLbl52.toMap();
'step4': step4,
data[ ‘storeAccountloginlblé''] = this.storeAccountLoginLblé?.toMap();
data 'storeForgotPasswordLbl3'] = this.storeForgotPasswordLbl3?.toMap();
data[ ‘storeForgotPasswordLbl5'] = this,.storeForgotPasswordLbl5?.toMap();
data['storeForgotPasswordLblé6'] = this.storeForgotPasgwordLblé?.toMap();
data['storeChangePasswordLbl4'] = this.storeChangePasswordLbl4?.toMap();
data ‘storeChangePasswordLbl5'] = this.storeChangePasswordLbl5?.toMap();
data 'storeChangePasswordLblé''] = this.storeChangePasswordLblé?.toMap();
data['storeNavDrawerLbl7'] = this.storeNavDrawerLbl7?.toMap();
data 'storeApprovelbl3'] = this.storeApprovelbl3?.toMap();
data['storeApprovelblé4'] = this.storeApprovelbl4?.toMap();
data[‘storeNavDrawerLbl2'] = this.storeNavDrawerLbl2?.toMap();
data[ 'storeNavDrawerLbl4'] = this.storeNavDrawerLbl4? JtoMap();
data[ 'storeNavDrawerLblé'] = this.storeNavDrawerLblé?.toMap();
data['storeNavDrawerLbl8'] = this.storeNavDrawerLbl8?.toMap();
data 'storeDashboardLbl3''] = this.storeDashboardLbl3?.toMap();
data[ ‘storeDashboardLbl4'] = this.storeDashboardLbl4?.toMap();
data[ 'storeDashboardLbl5'] = this.storeDashboardLbl5?.toMap();
data['storeAccountSetuplbl2'] = this.storeAccountSetuplLbl2?.toMap();
data['storeNavDrawerLbl8'] = this.storeNavDrawerLbl8?.toMap();
data[ 'storeAccountSetuplblé'] = this.storeAccountSetuplLbl4?.toMap();
data[ ‘storeAccountSetuplbl12'] = this.storeAccountSetupLbl12?,toMap();
data[ 'storeAccountSetupLblé'] = this.storeAccountSetupLblé?.toMap();
data ‘storeAccountSetuplbl8') = ams: OS
data[ ‘storeAccountSetuplbl?') = this.storeAccountSetupLbl9?.toMap();
data['storeAccountSetuplblll'] = this.storeAccountSetupLbl11?.toMap();
data['storeAccountSetuplbl13'] = this.storeAccountSetuplLbl13?.toMap();
data[ 'storeAccountSetuplbll5'] = this.storeAccountSetupLbl15?.toMap();
data['storeAccountSetupDetailsLbll'] =
this.storeAccountSetupDetailsLbll?. toMap();
data['storeAccountSetupDetailsLlbl2''] = T
Map<String, dynamic> toMap() => {
data['storeAccountSetuplbl15'] = this.storeAccountSetuplbl15?.toMap();
data[ ‘storeAccountSetupDetailslblé'] =
this.storeAccountSetupDetailsLbl4?. toMap();
data[ 'storeAccountSetupDetailslbl5'] =
data['storeAccountSetupDetailslLbls'] =
this.storeAccountSetupDetailsLbl6?.toNap();
data ‘storeAccountSetupDetailsLlbl?'] =
data['storeAccountSetupDetailslblB8'] =
data['storeAccountSetupDetailsLbl®'] =
this.storeAccountSetupDetailsLbl82.toMap();
data['storeAccountSetupDetailslbl10'] =
this.storeAccountSetupDetailsLbl14?.toMap();
data[ 'storeAccountSetupDetailslbl1i'] =
this.storeAccountSetupDetailslbl11?.toMap();
data['storeAccountSetupDetailslbl12'] =
this.storeAccountSetupDetailsLbl12?. toMap();
data[ ‘storeAccountSetupDetailslbli3'] =
this.storeAccountSetupDetailsLbl13?.toMap();
data['storeAccountSetupDetailslbl14''] = IL
this.storeAccountSetupDetailsLbl14?.toMap();
data['storeAccountSetupDetailsLbl15'] =
this.storeAccountSetupDetailsLbl15?.toNap();
data['storeAccountSetupDetailsLblls'] =
‘phone': phone,
'phoneCountryCode': phoneCountryCode,
‘logo': logo,
data[ ‘storeAccountloginlblé'] = this.storeAccountLoginLblé6?.toMap();
this.storeAccountSetupDetailsLbl18?.toMap();
data[ 'storeAccountSetupDetailsLblly'] =
this.storeAccountSetupDetailsLbl19?.toMap();
data[ ‘storeAccountSetupDetailsLbl10'] =
data ‘storeAccountSetupDetailsLbl21'] =
this.storeAccountSetupDetailslLbl26?.toMap();
this.storeAccountSetupDetailsLbl21?.toMap();
this.storeAccountSetupDetailslbl122?.toMap();
data['storeAccountSetupDetailsLbl23'] =
this.storeAccountSetupDetailsLbl23?.toMap();
data 'storeAccountSetupDetailsLbl24'] =
this.storeAccountSetupDetailsLbl28?.toMap();
data[ ‘storeAccountSetupDetailsLbl25'] =
this.totalSold,
}
data['storeAccountloginlbl5'] = this.storeAccountLoginLbl5?.toMap();
data[ 'storeForgotPasswordLbl2'] = this.storeForgotPasswordLbl2?.toMap();
data['storeChangePasswordlLbll'] = pom SE
data['storeChangePasswordLbl4'] = this.storeChangePasswordLbl4?.toMap();
data[ ‘storeChangePasswordLbl5'] = this.storeChangePasswordLhl5?.toMap();
data[ 'storeApprovelbl3'] = this.storeApprovelbl3?.toMap();
data[ ‘storeNavDrawerLbl2'] = this.storeNavDrawerLbl2?.toMap();
data[ ‘storeNavDrawerLbl3'] = this.storeNavDrawerLbl3?.toMap();
data['storeNavDrawerLbl5']) = this.storeNavDrawerLbl5? toMap();
data[ ‘storeApprovelbl2'] = this.storeApprovelbl2?.toMap(); ae
data[ ‘storeNavDrawerLbl7'] = this.storeNavDrawerLbl7?.toMap();
data['storeDashboardLbl1l'] = this.storeDashboardLbl1?.toMap();
data[ ‘storeDashboardLbl3'] = this.storeDashboardLbl3?.toMap();
data ‘storeAccountSetuplbl3'] = this.storeAccountSetuplLbl3?.toMap()
data['storeAccountSetuplbl4'] = this.storeAccountSetupLbl4?.toMap();
data['storeAccountSetuplbl5'] = this.storeAccountSetupLbl5?.toMap();
data['storeAccountSetupLblé'] = this.storeAccountSetupLblé?.toMap();
data[ ‘storeAccountSetuplbl7'] = this.storeAccountSetupLbl7?.toMap();
data[ ‘storeAccountSetuplbll1''] = this.storeAccountSetupLbl11?,toMap();
data[ ‘storeAccountSetuplbll2'] = this.storeAccountSetuplLbl12?.toMap();
data['storeAccountSetupLbl5'] = this.storeAccountSetuplLbl5?.toMap();
data['storeAccountSetuplbll4'] = this.storeAccountSetupLbl14?.toMap();
data[ ‘storeAccountSetupDetailslblé'] = I
this.storeAccountSetupDetailslbl1?. toMap();
data['storeAccountSetupDetailsLbl2'] =
this.storeAccountSetupDetailsLbl2?. toNap();
data[ 'storeAccountSetupDetailslbl3''] =
data[ 'storeAccountSetuplbl15'] = this.storeAccountSetupLbl15?.toMap();
data['storeAccountSetupDetailsLbl4'] =
data[ ‘storeAccountSetupDetailslbl3'] =
this.storeAccountSetupDetailsLbl5?.toMap();
this.storeAccountSetupDetailsLblé6?.toMap();
data[ 'storeAccountSetupDetailslbl?'] =
StoreDashboardModel, fromMap(json.decode(str));
data[ 'storeAccountSetupDetailslbl8') =
this.storeAccountSetupDetailsLbl8?.toMap();
data['storeAccountSetupDetailsLbl9'] =
this.storeAccountSetupDetailsLbl9?.toMap();
data[ 'storeAccountSetupDetailslbl10'] =
this.storeAccountSetupDetailsLbl10?. toMap();
this.storeAccountSetupDetailsLbl11?.toMap();
data['storeAccountSetupDetailslbl12'] =
this.storeAccountSetupDetailsLbl12?.toMap();
data[ 'storeAccountSetupDetailsLbll3'] =
data['storeAccountSetupDetailsLbl13''] =
data[ 'storeAccountSetupDetailslbl14''] =
this.storeAccountSetupDetailsLbl16?.toMap();
data['storeAccountSetupDetailslbli5'] =
data['storeAccountloginlbl2'] = this.storeAccountLoginLbl2?.toMap();
this.storeAccountSetupDetailsLbl16?.toMap();
data 'storeAccountSetupDetailsLbl17'] =
data['storeAccountloginLbl5'] = this.storeAccountLoginLbl5?.toMap();
data['storeAccountlLoginlblé'] = this.storeAccountLoginLblé6?.toMap();
data[ 'storeForgotPasswordLbll'] = this.storeForgotPasswordLbl1?.toMap();
data['storeAccountSetupDetailslbl20')] =
this.storeAccountSetupDetailsLbl121?.toMap();
data['storeAccountSetupDetailsLbl22'] =
this.storeAccountSetupDetailsLbl22?.toMap();
this.storeAccountSetupDetailsLb123?.toMap();
this.storeAccountSetupDetailslbl20?.toMap();
this.storeAccountSetupDetailsLbl25?.toMap();
data['storeForgotPasswordLbl5'] = this.storeForgotPasswordLbl5?.toMap();
data 'storeNavDrawerLbl3''] = this.storeNavDrawerlLbl3?.toMap();
data[ ‘storeNavDrawerLbl5'] = this.storeNavDrawerLbl5?.toMap();
data[ 'storeDashboardLbll''] = this.storeDashboardLbl1?.toMap();
data['storeChangePasswordlbll'] = Be ERE le es
data['storeAccountSetupLbl3'] = this.storeAccountSetupLbl3?.toMap();
this.storeAccountSetupDetailsLbl7?.toMap();
this.storeAccountSetupDetailsLbl14?.toMap();
data['storeAccountSetupDetailsLbl12'] =
this.storeAccountSetupDetailslbl14?.toMap();
class Product {
}
class Product {
this.storeld = 0,
this.storeld = 8,
this.categoryld = 0,
}
this.isBuffet,
this.discountedPrice = 0.0,
this.descripon = '',
this.distancelLabel = '',
// this, boseCurrency = appSetngs,opplulturelnfo.currency;
String pickInformaon;
categoryld: json["categoryID"],
int? categoryld;
“pickTo": pickTo,
this.rang,
packagingTypeld: json["packagingTypelID"],
this.isBuffet, T
data[ ‘storeNavDrawerLbl1'] = this.storeNavDrawerlLbl1?.toMap();
data[‘storeNavDrawerLbl3‘'] = this.storeNavDrawerLbl3?.toMap();
backgroundImage: json["backgroundImage"] 2? '',
pickUpmeFrom: json["pickUpmeFrom"],
this.storeAccountSetupDetailsLbl19?.toMap();
this.storeAccountSetupDetailsLbl28?.toMap();
data[ 'storeAccountSetupDetailslbl32'] =
data[ ‘storeAccountSetupDetailslbl32'] =
data 'storeAccountSetupFopdLbl2'] = this.storeAccountSetupFoodLbl2?.toMap();
data 'storeAccountSetupFoodLbl9'] = this.storeAccountSetupFoodLbl9?.toMap();
this.storeAccountSetupFoodLbl14?.toMap();
this.storeAccountSetupSchedulelbl11?, toMap();
this.storeAccountSetuplearnLbl1?.toMap();
data['storeAccountSetupLearnlbl8'] =
String en;
this.en = '-No Content-',
"en": en,
String getTranslaonByCode(String code) {
“descripon": descripon,
“preferenceDieD": preferenceDieD,
“ranglabel": ranglLabel,
“isFavorite": isFavorite, v2 Av
“packagingType": packagingType,
}
factory ProductWithLookup.fromJson(String str) =>
pickInformaon: json[“pickInformaon®]-2? '',
this.dietType,
data['storeAccountSetuplbl4'] = this.storeAccountSetupLbl4?.toMap();
"rang": rang,
products:
“ranglabel": ranglLabel,
List<Lookup>.from(json["dietType"].map((x) => Lookup.fromMap(x))),
this.categoryld = const [],
this.preferenceDietld,
this.latude = 6.0,
this.latude = 0.80,
this.longitude = 0.0,
this.radiuvs = 10,
this.pageSize = 25,
this. homePagePanellD,
this.pagelIndex = 1,
String? pickFrom;
ProductFilter.fromMap(Json.decode(str));
Map<String, dynamic> toMap() => {
“pageSize": pageSize, 
this.longitude = 0.6,
"preferenceDieD": preferenceDietld,
"homePagePanelID": homePagePanellD,
"pageIndex": pagelndex,
13H
int? id;
int? producD;
this.latude = 0.0,
Map<String, dynamic> toMap() => {
“rang": rang,
+;
} 7) 1
String toJson() => json.encode(toMap());
this.categorylmage,
welcomeSliderLbl9 = TranslaonlLanguages.fromMap(json[‘welcomeSliderLbl9']);
this.categorylmage,
profileMainlbl12 = TranslaonLanguages.fronMap(json['profileMainlbl12']); £2 Av
accountDetaillbll = TranslaonLanguages.fromMap(json['accountDetaillbll']); ®L2 Av
accountDetailProfilelbl9 =
TranslaonlLanguages.fromMap(json['eccountDetailProfileLbl9']);
accountDetailProfilelbl9 =
TranslaonLanguages.fronMap(json['accountDetailPreferencelbl8']); £2 Av
TranslaonLanguages.fronMap(json['accountDetailPreferencelbl9']);
isTemplate: json["isTemplate"],
? List<CategorylImage>.from(
json[“categoryImage"]?.map(
? List<CategoryImage>,from(
this.categoryImage,
storeApprovelbll = TranslaonLanguages,fromMap(json('storeApprovelbll']);
TranslaonLanguages.fronMap(json['storeAccountSetupBetailslbl3']); X22 ~~
storeAccountSetupDetailslblé = v2 Av
storeAccountSetupDetailsLbl5s =
TranslaonLanguages.fronMap(json['storeAccountSetupDetailslbld']);
“name": name,
storeAccountSetupDetailsLbll? = x2 ~~
bi
bool isSelected;
storeAccountSetupFoodLbl21 =
// "producD": producd,
class ProductDescripon {
userId: json["userID"],
TranslaonLanguages.fromMap(json['storeAccountSetupLearnlbl1é']); X22 Av
b
producd: json[“"producD"],
paymentGatewaylbll =
ProductFavorite, fromMap(json.decode(str));
storeAccountSetupLearnLbllf = X22 Av
producd: json["producD"],
// "1d": id,
}
this.storeAccountSetupDetailslbll,
data[ ‘productBrowselbl2'] = this.productBrowselLbl2?.toMap();
data ‘productBrowselbl3'] = this.productBrowselLbl3?.toMap();
datal 'oaradustBrawenl h15'1 = thie araducrtRrawcsl A182 taMan() +
data['profileMainlbl7'] = this.profileMainLbl7?.toMap(); Xz ox
class ProductFavorite {
}
data['accountDetailPreferencelbl9'] = x2 Av
int? categorylD;
categoryID: json["categoryID"],
categoryID: json[“"categoryID"],
3;
int? pickupmeSloD;
this.image,
this.pickupmeSloD,
this.name,
CategoryImage.fromMap(json.decaode(str));
this.endme,
this.productlD,
categoryID: json["categoryID"],
factory CategorylImage.fromMap(Map<String, dynamic> json) => Categorylmage(
showInFilter: json['showInFilter'] 2? false,
“"typeDescripon": typeDescripon,
"endme": endme,
"isSelected": isSelected,
this. food,
this.dietary,
List<UserPreference>? food = [];
this.isAcve,
this.showPreference = false,
dietary: json['dietary'] !'= null
dietary: json['dietary'] !'= null
class Lookup {
"startme": startme, I
"endme": endme,
    :
1)
int? lookupTableld;
String toJdson() => json.encode(toMap());
bool? isAcve;
bool? isDefault;
factory CustomerDashboard.fronMap(Map<String, dynamic> json) =>
"lookupTableID": lookupTableld,
}
this. textController,
this.storeAddress = '',
"language": language,
TextEdingController? textController;
this. textController,
// can also add 'required'' keyword
"dienlauliialua®: dienlavValos
this.pickInformaon = '',
"displayValuve": displayValue,
thie rtanalddnace - "1
2 rv
thie arrnuntNatailDnafanancsal M11
totalPrice: json[“"totalPrice"] ?? 0.0,
totalActualPrice: json["totalActualPrice"] ?? 0.0,
totalTaxAmount: json["totalTaxAmount"] 2? 0.0,
hacalurrencv: iennl"hacelurrenru™] 22 **
(x) => OrderDetail.fromMap(x), v2 Av
2D
json[“orderDetail®].map(
storeID: json[“"storeID"] ?? -1,
isAllowCancel: json["isAllowCancel"],
}
“totalPrice": totalPrice,
this.id = 0, x2 Av
this.unitPrice = 0.8,
“statusIDDescripon": statusIDDescripon,
totalTaxAmount: json["totalTaxAmount"] 2? 0.0,
productName: json["productName"], T
);
currency: json["currency"],
currency: json["currency"],
}
}
int? paymentStatusld;
fromDate: json["fromDate"],
}
orderNumber: json[“"orderNumber"], I
» ¥
statusId: json["statusID"],
“statusID": statusld,
Lo Die
"toDate": toDate,
Map<String, dynamic> toMap() => {
currency: json["currency"],
vserRang: json["userRang"] ?? 0.0,
pH
Map<String, dynamic> toMap() => {
“orderID": orderld,
"producD": productld,
this.datemeRange,
this. toDate,
currency: json["currency"],
toDate: json[“toDate"],
String toJson() => json.encode(toMap()); I
comments: json("comments"] 2? '',
this.userVerifyEmaillbll,
isAllowCancel: json["isAllowCancel"],
PaymentGatewayResponse.fromMap(json.decode(str));
factory PaymentGatewayResponse.fromMap(Map<String, dynamic> json) =>
8 H
String? cardToken;
String? cardType;
isCardInfoValid: json[“isCardInfoValid"], Xa av
this.cardHolderName,
String? userld;
String? expiraonDate;
String toJson() => json.encode(toMap());
TranslaonLanguages? loginLbl2;
TranslaonLanguages? loginLbll;
TranslaonLanguages? loginLbl3;
TranslaonLanguages? loginEnterEmaillbll;
TranslaonLanguages? loginEnterEmaillbl2;
TranslaonLanguages? loginEnterEmaillbl4;
class ApplicaonContent { I
Tranelannl anananac? etaralrecanntSatunl hl:
TranslaonLanguages? userVerifyEmaillbl3;
TranslaonLanguages? loginEnterSCLb18;
TranslaonLanguages? profileMainlbl12;
TranslaonLanguages? userVerifyEmaillblé;
Trancelannl anananee? etarslreauntSatunNatailel h13-
TranslaonLanguages? profileMainlbll; v2 Av
TranslaonLanguages? userBNLD11;
TranslaonLanguages? userBNLD12;
TranslaonLanguages? storeForgotPasswordLbl3;
TranslaonLanguages? storeAccountSetuplbls;
Translaonl anauanes? storeAceountSetunt h17:
TranslaonLanguages? chooselocaonlLbll;
TranslaonLanguages? storeAccountSetupFoodlLbl2;
statusID: json["statusID"] 2? EnumOrderStatus.cancelled.value,
TranslaonLanguages? profileMainlbl1ll;
TranslaonLanguages? accountDetailProfilelbll;
TranslaonLanguages? userBNLbLl4;
TranslaonLanguages? accountDetailPaymentlbl2;
Tranelannl anananae? etaralrrnuntCraatal h124-
TranslaonLanguages? accountDetailPreferencelbll;
TranslaonLanguages? accountDetailPreferencelbl2;
TranslaonLanguages? accountDetailPreferencelblé;
TranslaonLanguages? accountDetailPreferencelblS;
TranslaonlLanguages? orderUserDetaillbl5;
TranslaonLanguages? productDetaillbl1e;
TranslaonLanguages? productDetaillblil;
TranslaonLanguages? productDetaillbll2;
TranslaonLanguages? productDetaillbl2l;
TranslaonLanguages? productDetaillbll?;
TranslaonLanguages? paymentPayzelbll;
TranslaonLanguages? productDetaillblll;
TranslaonLanguages? storeForgotPasswordLbl3;
TranslaonLanguages? storeForgotPasswordLbl4;
TranslaonLanguages? accountDetailPreferencelbll;
TranslaonLanguages? storeChangePasswordLbl7;
TranslaonLanguages? storeApprovelbll;
TranslaonLanguages? storeNavDrawerlLbll;
TranslaonLanguages? storeChangePasswordlLbl?;
TranslaonLanguages? paymentPayzelblé;
TranslaonLanguages? storeForgotPasswordLbl3;
TranslaonLanguages? storeAccountCreatelblls;
TranslaonLanguages? accountDetailPreferencelbl2;
TranslaonLanguages? storeAccountCreatelbll19;
TranslaonlLanguages? accountDetailPreferencelblé;
TranslaonLanguages? storeChangePasswordLbl2;
TranslaonLanguages? storeAccountCreatelbl24;
TranslaonLanguages? searchFilterlbll;
TranslaonLanguages? storeAccountCreatelbll;
TranslaonLanguages? storeAccountCreatelbl22;
TranslaonLanguages? storeAccountCreatelbl24;
TranslaonLanguages? storeAccountCreatelbl20;
"displayValue": RE i
TranslaonLanguages? storeForgotPasswordLbl4;
TranslaonLanguages? storeChangePasswordLbll;
TranslaonLanguages? storeForgotPasswordLbl3;
TranslaonLanguages? storeForgotPasswordLbl5;
TranslaonlLanguages? storeForgotPasswordLblé;
TranslaonLanguages? storeChangePasswordLbll;
TranslaonLanguages? storeChangePasswordLbl3;
TranslaonLanguages? storeChangePasswordLbl$; I
TranslaonLanguages? storeChangePasswordLblé;
TranslaonLanguages? storeForgotPasswordlLbl3;
TranslaonLanguages? storeChangePasswordLbl4;
TranslaonLanguages? storeForgotPasswordlLblé;
TranslaonLanguages? storeChangePasswordlLbl2;
TranslaonLanguages? storeChangePasswordLbl3;
String storeAddress;
TranslaonLanguages? storeApprovelbll; 
TranslaonLanguages? storeNavDrawerLblé;
TranslaonLanguages? storeApprovelbléd;
TranslaonLanguages? storeAccountSetuplbl?;
IranslaonLanguages? STOreACCOUNTSETupLbLY;
TranslaonLanguages? storeAccountSetuplblil4;
TranslaonLanguages? userVerifyEmaillbl3;
TranslaonLanguages? userDashboardLbl5; 2» v
TranslaonLanguages? chooselLocaonlLblé;
TranslaonLanguages? storeAccountSetupDetailsLbl3;
TranslaonLanguages? storeAccountSetuplblis;
TranslaonLanguages? storeAccountSetuplLbll3;
TranslaonLanguages? storeAccountSetupDetailsLbl3;
TranslaonLanguages? accountDetailPaymentlbll;
Tranelannl annnanac? navmantPavral h18-
TranslaonLanguages? storeAccountSetupDetailsLbl20;
TranslaonLanguages? storeAccountSetupDetailsLbl23;
TranslaonLanguages? storeAccountSetupFoodlbl16;
TranslaonlLanguages? storeAccountSetupDetailsLbl22;
"lookupTableID": lookupTableld,
“languagelID": languageld,
"lookupValue"": lookupValue,
"isDefault": isDefavlt,
“sequencelD": sequenceld,
};
}
class PickupmeDaily {
TextEdingController? textController;
TextEdingController? textController;
meOfDay meOfDay;
EnummeCategory? type;
PickupmeDaily({
this. textController,
this. type,
PickupmeDaily({
this.customerld = 0,
this.totalActualPrice = 0.0,
this.baseCurrency = '',
this.totalQty = 0,
this.id = 0,
this.statusIDDescripon = '',
this.rang = 0.0,
“lookupTableID": lookupTableld,
this.userPaymentCardID, gz rv
"lookupValue": lookupValve,
"displayValue": displayValue,
String comments;
"lookupValue": lookupValue,
"isDefault": isDefavlt,
“sequencelD": ipa
String pickInformaon;
double rang;
String? transaconld;
int? userPaymentCardID;
bool? isSavePaymennfo;
String pickInformaon;
TranslaonLanguages? storeAccountSetupFoodLbl26;
TranslaonLanguages? storeAccountSetuplLearnlLbl2;
y Y
"taNata™: +alate
this.color = '',
TranslaonLanguages? storeDetailsLbl§;
TranslaonLanguages? productControllerLbl3;
TranslaonLanguages? storeControllerlbll;
comments: json("comments"] 2? '',
TranslaonLanguages? storeChangePasswordlLbll;
String storeName; x2 Av
Order ({
this.userBNLD12,
this.date,
this.rang = 0.0,
this.accountDetailProfileEditlbl2,
this.accountDetailProfilelbl5,
this.accountDetailProfilelbl9,
this.accountDetailProfileEditLbl2,
this.orderUserLbll,
String melLabel;
this.orderUserDetaillbl10,
this.productDetaillbl18,
this.storeAccountCreatelbl21,
this.storeAccountCreatelbls,
this.storeAccountCreatelbl?,
this.storeAccountCreatelbl10,
this.storeAccountCreatelbl13,
this.orderStorelbll,
"EnnmNata": fonmDate
this.storeAccountCreatelbl24,
this.storeAccountLoginLblé,
this.storeAccountSetupFoodLblls,
this.storeAccountSetupDetailsLbl28,
this.storeAccountSetupFoodLbll,
this.storeAccountSetupDetailsLbl27,
this.storeAccountSetupFoodLbl10,
this.storeAccountSetupFoodLbl8,
this.storeNavDrawerLbl4,
this.storeAccountSetuplbll,
this.storeAccountSetuplLbl2,
this.storeAccountSetuplblé,
this.storeAccountSetupDetailslbl4,
this.storeAccountSetupDetailsLblls,
this.storeAccountSetupDetailsLbl20,
this.storeAccountSetupDetailsLbl2l,
this.storeAccountSetupDetailsLbl23,
this.storeAccountSetupDetailsLbl25,
this.storeAccountSetupDetailsLbl28,
this.storeAccountSetupDetailsLbl29,
this.storeAccountSetupDetailsLbl30,
this.storeAccountSetupFoodLbll,
this.storeAccountSetupFoodlLbl2,
this.storeAccountSetupFoodLbl4,
this.storeAccountSetupFoodLbl5,
this.storeAccountSetupFoodLbl7,
this.storeAccountSetupFoodLbl17,
this.storeNavDrawerLbl?,
this.storeDashboardLbl4,
this.storeAccountSetuplLearnLbl?,
this.storeAccountSetuplLearnlbll5,
welcomeSliderLbl4 = TranslaonlLanguages.fromMap(json['welcomeSliderLbl4']);
orderUserDetaillbll2 =
loginEnterEmaillbl3 =
this.storeAccountSetupVatLbl2,
accountDetailProfilelbl3 =
userVerifyEmaillbl7 =
accountDetailProfilelbl3 =
accountDetailProfilelbl? =
TranslaonlLanguages.fromMap(json['accountDetailProfilelbl7']);
accountDetailProfileEditlbll =
accountDetailProfilelbl8 = hi
accountDetailProfilelbl8 =
accountDetailProfilelbl10 =
TranslaonLanguages,fromMap(json['accountDetailProfileEditlbl5']);
TranslaonlLanguages.fronMap(json['accountDetailProfileEditLbl4']);
orderUserDetaillblé =
orderUserDetaillbll2 =
orderStorelbl? = TranslaonLanguages.fromMap(json['orderStorelbl7']);
searchFilterLbl7 = TranslaonlLanguages,fromMap(json['searchFilterlbl7']);
orderUserDetaillbl3 =
TranslaonlLanguages.fromMap(json['orderUserDetaillbl5']);
TranslaonLanguages.fromMap(json['orderUserDetaillbl9']);
searchFilterLbl4 = TranslaonLanguages.fromMap(json['searchFilterLbl4']);
productDetaillblé = Translaonlanguages.fromMap(json('productDetaillblé']);
productDetaillbl8 = TranslaonLanguages.fromMap(json['productDetaillbl8']);
data['loginEnterSCLbl4"'] = this.loginEnterSCLbLl4?.toMap();
TranslaonLanguages.fromMap(json['orderUserDetaillbl9']);
searchFilterLbl3 = TranslaonLanguages.fromilip(json['searchFilterLbl3']);
Faria PIRES IT] SREP ry
TranslaonLanguages.fromMap(json['storeAccountCreatelbl16']);
storeAccountCreatelbll? =
storeAccountCreatelbll? =
storeAccountCreatelbll5 =
storeAccountCreatelbl2l = v2 Av
storeForgotPasswordlbll =
TranslaonLanguages.fromMap(json['storeAccountCreatelbl22']);
storeAccountloginlblé =
TranslaonlLanguages.fronmMap(json[''storeAccountloginlblé*]);
TranslaonLanguages.fromMap(json['storeAccountloginlbl3']);
TranslaonLanguages.fromMap(Json('storeAccountSetupFoodLbl11']);
TranslaonLanguages.fronmMap(json['storeAccountCreatelbl22']);
storeAccountSetupSchedulelblll =
storeAccountSetuptearnLbll =
TranslaonLanguages, fromMap(json['storeAccountLoginlblé']);
storeAccountSetuplLearnlbl2 =
TranslaonLanguages,fromMap(json[''storeAccountLoginlblé']);
storeNavDrawerLbl4 =
TranslaonLanguages.fromMap(json['storeAccountSetupDetailslbl26']);
orderUserDetaillbll2 =
storeAccountSetupDetailslbl? =
TranslaonLanguages.fromMap(json['storeAccountSetupDetailslbl?']);
storeAccountSetupDetailslbl24 =
TranslaonLanguages.fromMap(json['storeAccountSetupDetailslbl24']);
storeAccountSetupDetailslbl25 =
TranslaonLanguages.fromMap(json['storeAccountSetupDetailsLbl23']);
TranslaonLanguages.fromMap(json['storeAccountSetupDetailsLbl27']);
storeAccountSetupDetailslbl28 =
storeAccountSetupFoodLbls =
storeAccountSetupDetailslbl3l =
TranslaonlLanguages,fromMap(json['storeAccountSetupDetailsLlbl31']);
storeAccountSetupDetailsLbl32 =
storeAccountSetupFoodLbll =
storeAccountSetupFoodLbl3 =
storeAccountSetupFoodLbl4 =
storeAccountSetupFoodLbl5 =
storeAccountSetupFoodLblé =
storeAccountSetupFoodLbl? =
storeAccountSetupDetailslblé =
storeAccountSetupDetailslbl24 =
storeAccountSetupDetailsLbl28 =
TranslaonLanguages.fromMap(json['storeAccountSetupDetailsLlbl38']);
TranslaonLanguages.fromMap(json['orderUserDetaillbl3']);
storeAccountSetupDetailsLbl28 =
TranslaonLanguages.fromMap(json['storeAccountSetupDetailslbl24']);
this.storeNavDrawerLblé,
storeAccountSetupDetailslbl26 =
storeAccountSetupDetailsLbl27 =
storeAccountSetupDetailsLbl30 =
storeAccountSetupDetailsLbl30 =
TranslaonLanguages.fromMap(json['storeAccountSetupFoadlbl7']);
storeAccountSetupSchedulelbl3 =
TranslaonLanguages.fromMap(json['storeAccountSetupFoodLbl14']);
storeAccountCreatelbls =
storeAccountSetupSchedulelbll = E
storeAccountSetupSchedulelbl2 =
TranslaonLanguages,fromMap(json['storeAccountSetupFoodLbl13']);
this.storeNavDrawerLbl4,
this.storeAccountSetuplbls,
this.storeAccountSetupDetailsLbl23,
this.storeAccountSetupDetailsLbl28,
this.storeAccountSetupDetailsLbl29,
this.storeAccountSetupDetailsLbl25,
storeAccountSetupSchedulelbll =
this.storeAccountSetupFoodLbl19,
this.storeAccountSetupSchedulelbl3,
this.storeAccountSetupLearnLblé, 1
this.storeAccountSetupLearnLbls,
TranslaonLanguages.fromMap(json('storeAccountSetuplearnlbl7']);
storeAccountSetupLlearnlbl10 =
TranslaonLanguages.fromMap(json['storeAccountSetuplLearnLbl16']);
storeAccountSetupVatlbll =
TranslaonLanguages.fromMap(json['paymentGatewaylbl1']);
data['welcomeSliderLbll'] = this.welcomeSliderLbl1?.toMap();
storeAccountSetupVatlbl3 =
Translaon! anouaans.fromManf(4sanl 'accountNetailProfilefdih12°1)
data['loginBSLbl4'] = this.loginBSLbl4?.toMap();
userControllerlbll =
productControllerLlbld =
storeAccountSetuplLearnLbll10 =
storeAccountSetupLearnLblll =
paymentGatewayLbl3 =
data[ ‘welcomeSliderLbl18') = this.welcomeSliderLbl16?.toMap();
this.storeNavDrawerLbl4,
data[ ‘vserVerifyEmaillbl3'] = this.userVerifyEmaillbl3?.toMap();
data['accountDetailProfilelbll'] = this.accountDetailProfilelbll1?.toMap();
data['profileMainLbl5'] = this.profileMainLbl5?.toMap();
data['accountDetailProfilelbl2'] = this.accountDetailProfilelbl2?.toMap();
data ‘welcomeSliderLbl4'] = this.welcomeSliderLbl4?.toMap();
this.storeNavDrawerLbl4,
data['welcomeSliderLbl11'] = this.welcomeSliderLbl11?.toMap();
data 'accountDetailPaymentlbl4'] = this.accountDetailPaymentLbl4?.toMap();
data[ ‘orderStorelbl?'] = this.orderStorelbl7?.toMap();
data[ ‘orderStorelbl?'] = this.orderStorelbl7?.toMap();
data['searchFilterLblé4''] = this.searchFilterLbl4?.toMap();
data['storeAccountCreatelbl28'] = this.storeAccountCreatelbl20?.toMap();
data 'storeAccountCreatelbl15'] = this.storeAccountCreatelbl15?.toMap();
data[ ‘storeAccountSetupLblé'] = this.storeAccountSetupLbl4?.toMap();
data[ 'storeAccountSetupDetailsLbl?'] =
data[ ‘storeAccountSetupDetailslbl9'] =
data[ ‘storeAccountSetupDetailsLbl8'] =
this.storeAccountSetupDetailsLbl10?.toMap(); I
data[ 'storeAccountLoginlbl3'] = this.storeAccountLoginLbl3?.toMap();
data[ ‘storeNavDrawerLbl7'] = this.storeNavDrawerLbl7?.toMap();
data 'storeDashboardLbl4''] = this.storeDashhoardlLbl4?.toMap();
data['storeAccountSetuplblé'] = this.storeAccountSetupLblé?.toMap();
data 'storeAccountSetupLbl8'] = this.storeAccountSetupLbl8?.toMap();
data['storeAccountSetupDetailslbl4'] =
data[ 'storeAccountSetupDetailsLbl?'] =
this.storeAccountSetupDetailsLblB?.toNap();
this.storeAccountSetupDetailsLbl9?.toMap();
data['storeAccountSetupDetailslbl120'] =
data['storeChangePasswordLbl7''] = this.storeChangePasswordLbl7?.toMap();
this.storeAccountSetupDetailsLbl27?.toMap();
data 'storeAccountSetupDetailsLbl29'] =
data[ 'storeAccountSetupFoodLbl3'] = this.storeAccountSetupFoodLbl3?.toMap();
data[ ‘storeAccountSetuplLearnLbll5'] =
data['storeAccountSetupFoodLbl11'] = 
data['storeAccountSetupLearnLbl15'] =
data[ ‘storeAccountSetupFoodLbl13'] =
this.storeAccountSetupFoodLbl16?.toMap();
data 'storeAccountSetupSchedulelbl9'] =
this.storeAccountSetupDetailsLb129?.toMap();
data[ ‘storeAccountSetupVatLbl4'] = this.storeAccountSetupVatLblé?.toMap();
factory TranslaonlLanguages.fronMap(Map<String, dynamic> json) =>
String ge;
¥;
} else if (code == 'en') {
this.storeAccountSetupDetailsLbl22?.toMap();
data[ ‘storeChangePasswordLbi4'] = this.storeChangePasswordLbl4?.toMap();
data[ ‘storeChangePasswordLblé'] = this.storeChangePasswordLblé6?.toMap();
this.storeAccountSetupDetailsLbl1?.toNap();
data['storeAccountSetupDetailsLblil'] =
this.storeAccountSetupDetailsLbl12?. toMap();
this.storeAccountSetupDetailsLbl13?,toMap();
data['storeAccountSetupDetailsLbl15'] =
data['storeAccountSetupDetailsLbll7'] =
this.storeAccountSetupDetailsLbl17?.toMap();
data['storeAccountLoginlbl5'] = this.storeAccountLoginLbl5?.toMap();
data[ ‘storeAccountSetupLblé'] = this.storeAccountSetupLbl4?.toMap();
data[ 'storeAccountSetupDetailslbl2'] =
data[ 'storeAccountSetupDetailsLbl32'] =
hl
this.userControllerLbls,
data 'welcomeSliderLbl4'] = this.welcomeSliderLbl4?.toMap();