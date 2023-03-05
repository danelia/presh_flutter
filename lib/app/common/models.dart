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
    this.emailVerificationToken, this.phone, this.phoneCountryCode, this.deviceID, this.countryID, this.ipAddress, this.userName, this.fullName, this.showPreferenceProduct, this.externalLogin,
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
  int? userID;
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
  bool? stepl;
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

  Store({
        this.id,
  this.name,
  this.userID,
  this.entityID,
  this.user,
  this.storeTypeID = 0,
  this.zipCode = '',
  this.addressLine = '',
  this.city = '',
  this.latitude,
  this.longitude,
  this.vat,
  this.isVerified,
  this.commissionRatio,
  this.entityTypeID,
  this.countryID,
  this.stepl,
  this.step2,
  this.step3,
  this.step4,
  this.step5,
  this.phone,
  this.phoneCountryCode,
  this.logo,
  this.product = const [],
  this.totalOrder = 0,
  this.serviceDuration = '',
  this.stepCompleted = false,
  this.accountTitle = '',
  this.accountNumber = '',
});

  factory Store. fronJson(Map<String, dynamic> json) {
  return Store(
  id: json['id'],
  name: json['name'],
  userID: json['userID'],
  entityID: json['entityID'],
  user: json['user'],
  storeTypeID: json['storeTypeID'] ?? '',
  zipCode: json['zipCode'] ?? '',
  addressLine: json['addressLine'] ?? '',
  city: json['city'] ?? '',
  latitude: json['latitude'],
  longitude: json['longitude'],
  vat: json['vat'],
  isVerified: json['isVerified'],
      commissionRatio: json['commissionRatio'] != null
  ? json['commissionRatio'].toDouble()
      : null,
  entityTypeID: json['entityTypeID'],
  countryID: json['countryID'],
  stepl: json['stepl'],
  step2: json['step2'],
  step3: json['step3'],
  step4: json['steps'],
  step5: json['step5'],
  phone: json['phone'],
  phoneCountryCode: json['phoneCountryCode'],
  logo: json['logo'],
  product: json["product"] == null
  ? [1]
      : List<Product>.from(
        json["product"].map(
          (x) => Product.fromMap(x),
      ),
  ),
  totalOrder: json['totalOrder'],
  serviceDuration: json['serviceDuration'],
  stepCompleted: json['stepCompleted'] ?? false,
  accountTitle: json['accountTitle'],
  accountNumber: json['accountNumber'],
  ); // Store
  }

  Map<String, dynamic> toJson() => {
  'id': id ?? '',
  'name': name,
  'user': user,
  'storeTypeID'': storeTypeID,
  'ZipCode': zipCode,
  'addressLine': addressLine,
  'city': city,
  'Latitude': latitude,
  'longitude': longitude,
  'vat': vat,
  'isVerified'': isVerified,
  'storeTypeID'': storeTypeID,
  'stepl': stepl,
  'step2': step2,
  'step3': step3,
  'steps': step4,
  'step5': step5,
  'phone': phone,
  'phoneCountryCode': phoneCountryCode,
  'logo': logo,
  'accountTitle': accountTitle,
  'accountNumber': accountNumber,
  };

  String serialize() => json.encode(toJson());
  Store deserialize(String json) => Store.fromJson(jsonDecode(json));
}

class StoreWeeklySchedule {


  int? id;
  int? weekDayId;
  int? storeId;
  String timeFrom;
  String timeTo;
  int? productQty;
  TextEditingController productQtyController = TextEditingController(text: '');
  bool isActive;
  String? weekDayName;
  List<PickupTimeDaily>? pickupTimeDaily;

  StoreWeeklySchedule({
    this.id = 0,
    this.weekDayId = 0,
    this.storeId = 0,
    this.timeFrom = '',
    this.timeTo = '',
    this.productQty,
    this.isActive = false,
    this.weekDayName,
    this.pickupTimeDaily,,
  });

  factory StoreWeeklySchedule.fromlson(String str) =>
      StoreWeeklySchedule.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory StoreWeeklySchedule.fromMap(Map<String, dynamic> json) =>
      StoreWeeklySchedule(
        id: json['id'],
        weekDayId: json["weekDayID"],
        storeId: json["storeId"],
        timeFrom: json["tineFrom"] ?? '',
        timeTo: json["timeTo"] ?? '',
        productQty: json["productQty"],
        isActive: json["isActive"] ?? false,
        weekDayName: json["weekDayName"],
      );

  Map<String, dynamic> toMap() =>
      {
        "id": id,
        "weekDayID": weekDayId,
        "storeID": storeId,

        "timeTo": timeTo,
        "productQty": productQty,
        "isActive": isActive,

      };

  static String toJsonList(List<StoreWeeklySchedule> items) {
    List<Map<String, dynamic>> list = [];

    for (var element in items) {
      list.add(element.toMap ());
    }
return json.encode(list);
  }

}


class StoreDashboardModel {
StoreDashboardModel({
this. totalReserved, this.totalSold,
});

int? totalReserved;
int? totalSold;
  String toJson() => json.encode(toMap());

  factory StoreDashboardModel.fromMap(Map<String, dynamic> json) =>
  StoreDashboardModel(
  totalReserved: json["totalReserved"],
  totalSold: json["totalSold"],
  );

  Map<String, dynamic> toMap() => {
  "totalReserved": totalReserved,
  "totalSold": totalSold,
  };
}

class Product {
Product ({
this.id = 0,
this.storeId = 0,
this.categoryld = 0,
this.name = '',
this.preferenceDietID = 0,
this.isBuffet,
this.description = '',
this.descriptionTemplateID,
this.preDayQty = 0,
this.qty = 0,
this.actualPrice = 0.0,
this.discountedPrice = 0.0,
this.baseCurrency = '',
this.backgroundImage = '',
this.pickInformation = '',
this.packagingTypeID,
this.pickUpTimeFrom,
this.pickUpTimeTo,
this.isAvailable,
this.additionalRecommendation = '',
this.storeName = '',
this.storeLogo = '',
this.distance,
this.isFavorite = false,
this.rating = 0.0,
this.distanceLabel = '',
this.timeLabel = '',
this.qtyLabel = '',
this.storeAddress = '',
this.categoryName = '',
this.preferenceDiet = '',
this.ratingLabel = '',
this.ratingRank = const [],
this.packagingType,
this.homePagePanel,
this.homePagePanelID
})

int? id;
int? storeId;
int? categoryld;
String? name;
int? preferenceDietID;
bool? isBuffet = false;
String description;
int? descriptionTemplateID;
int? preDayQty;
int? qty;
double? actualPrice;
double? discountedPrice;
String baseCurrency;
String? backgroundImage;
String pickInformation;
int? packagingTypeID;
String? pickUpTimeFrom;
String? pickUpTimeTo;
String? additionalRecommendation;
bool? isAvailable;
String storeName;
String storeLogo;
double? distance;
bool isFavorite;
double? rating;
String distanceLabel;
String timeLabel;
String ratingLabel;
String qtyLabel;
String storeAddress;
String categoryName;
String preferenceDiet;
List<RatingRank> ratingRank;
String? packagingType;
int? homePagePanelID;
String? homePagePanel;

factory Product.fromJson(String str) => Product.fromMap(json.decode(str));

String toJson() => json.encode(toMap());

factory Product.fromMap(Map<String, dynamic> json) => Product(
id: json["id"],
storeId: json["storeID"],
categoryld: json["categoryID"],
name: json["name"],
preferenceDietID: json["preferenceDietID"],
isBuffet: json["isBuffet"],
description: json["description"] ?? '',
descriptionTemplateID: json["descriptionTemplateID"],
preDayQty: json["preDayQty"],
qty: json["qty"],
actualPrice: json["actualPrice"].toDouble(),
discountedPrice: json["discountedPrice"].toDouble(),
baseCurrency: json["baseCurrency"],
backgroundImage: json["backgroundImage"] ?? '',
pickInformation: json["pickInformation"] ?? '',
packagingTypeID: json["packagingTypeID"],
pickUpTimeFrom: json["pickUpTimeFron"],
pickUpTimeTo: json["pickUpTimeTo"],
isAvailable: json["isAvailable"],
additionalRecommendation: json["additionalReconmendation"],
storeName: json["storeName"] ?? '',
storeLogo: json["storeLogo"] ?? '',
distance: json["distance"],
isFavorite: json["isFavorite"] ?? false,
rating: json["rating"],
distanceLabel: json["distanceLabel"] ?? '',
timeLabel: json["timeLadel"] ?? '',
qtyLabel: json["qtyLabel"] ??'',
storeAddress: json["storeAddress"] ?? '',
categoryName: json["categoryName"] ?? '',
preferenceDiet: json["preferenceDiet"] ?? '',
ratingLabel: json["ratingLabel"] ?? '',
ratingRank: json["ratingRank"] == null ? [] : List<RatingRank>.from(
json["ratingRank"].map(
(x) => RatingRank.fromMap(x),
),
),
packagingType: json["packagingType"] ?? '',
homePagePanelID: json["homePagePanelID"] ?? -1,
homePagePanel: json["homePagePanel"] ?? '',
); // Product

Map<String, dynamic> toMap() => {
"id": id,
"storeID": storeId,
"categoryID": categoryld,
"name": name,
"preferenceDietID": preferenceDietID,
"isBuffet": isBuffet,
"description": description,
"descriptionTemplateID": descriptionTemplateID,
"preDayQty": preDayQty,
"qty": qty,
"actualPrice": actualPrice,
"discountedPrice": discountedPrice,
"baseCurrency": baseCurrency,
"backgroundImage": backgroundImage,
"pickInformation": pickInformation,
"packagingTypeID": packagingTypeID,
"pickUpTimeFron": pickUpTimeFrom,
"pickUpTineTo": pickUpTimeTo,
"isAvailable": isAvailable,
"additionalRecomnendation": additionalRecommendation,
"storeName": storeName,
"storeLogo": storeLogo,
"distance": distance,
"isFavorite": isFavorite,
"rating": rating,
"qtyLabel": qtyLabel,
"packagingType": packagingType,
"ratingLabel": ratingLabel,
"ratingRank": ratingRank,
"distanceLabel": distanceLabel,

};
}


class ProductWithLookup {
ProductWithLookup ({
this.products,
this.productCat,
this.dietType,
this.packageType,
this.productDesc,
});

List<Product>? products;
List<Lookup>? productCat;
List<Lookup>? dietType;
List<Lookup>? packageType;
List<ProductDescription>? productDesc;

factory ProductWithLookup.fromlson(String str) =>
ProductiithLookup.fromMap(json.decode(str));

factory ProductWithLookup.fromMap(Map<String, dynamic> json) =>
ProductWithLookup(
products:
List<Product>.from(json["products"].map((x) => Product.fromMap(x))),
productCat:
List<Lookup>.from(json["productCat"].map((x) => Lookup.fromMap(x))),
dietType:
List<Lookup>.from(json["dietType"].map((x) => Lookup.fromMap(x))),
packageType: List<Lookup>.from(
json["packageType"].map((x) => Lookup.fromMap(x))), // List.from
productDesc: List<ProductDescription>.from(
json["productDesc"].map((x) => ProductDescription.fromMap(x))), // List.from
); // ProductWithLookup
}

class ProductFilter {
ProductFilter({
this.categoryld = const [],
this.preferenceDietId,
this.pickFrom,
this.pickTo,
this.isHideSold,
this.latitude = 0.0,
this.longitude = 0.0,
this.radius = 10,
this.pageSize = 25,
this.pagelndex = 1,
this.isFavorite = false,
this.isHomePage = false,
this.soldStatus = -1,
this.homePagePanelID,
this.storeName = '',
});

List<int> categoryld;
int? preferenceDietId;
String? pickFrom;
String? pickTo;
bool? isHideSold;
double latitude;
double longitude;
double radius;
int pageSize;
int pagelndex;
bool isFavorite;
bool isHomePage;
int? soldStatus;
int? homePagePanelID;
String storeName;

factory ProductFilter.fromJson(String str) =>
ProductFilter.fromMap(json.decode(str));

String toJson() => json.encode(toMap());

factory ProductFilter.fromMap(Map<String, dynamic> json) => ProductFilter(
categoryld: List<int>.from(json["categoryID"].map((x) => x)),
preferenceDietID: json["preferenceDietID"],
pickFrom: json["pickFrom"],
pickTo: json["pickTo"],
latitude: json["latitude"],
latitude: json["latitude"],
radius: json["radius"],
radius: json["radius"],
pageSize: json["pageSize"],
pagelndex: json["pagelndex"],
isFavorite: json["isFavorite"],
isHomePage: json["isHomePage"],
); // ProductFilter

Map<String, dynamic> toMap() => {
"categoryID": List<dynamic>.from(categoryId.map((x) => x)),
"preferenceDietID": preferenceDietId,
"pickFrom®": pickFrom,
"pickTo": pickTo,
"isHideSold": isHideSold,
"latitude": latitude,
"longitude": longitude,
"radius": radius,
"pageSize": pageSize,
"pagelndex": pagelndex,
"isFavorite": isFavorite,
"isHomePage": isHomePage,
"soldStatus": soldStatus,
"homePagePanelID": homePagePanelID,
"storeNome": storeName,

};
}

class ProductReview {
ProductReview({
this.id,
this.orderDetailID,
this.productID,
this.rating,
this.icon });

int? id;
int? orderDetailID;
int? productID;
double? rating;
Icon? icon;

factory ProductReview.fromJson(String str) =>
ProductReview.fromMap(json.decode(str));

String toJson() => json.encode(toMap());

factory ProductReview.fromMap(Map<String, dynamic> json) => ProductReview(
id: json['id'],
orderDetailID: json["orderDetailID"],
productID: json["productID"],
rating: json["rating"],
);

Map<String, dynamic> toMap() => {
// "1d": 1d,
"orderDetailID": orderDetailID,
// "productID": productID,
"rating": rating,
};
}

class ProductDescription {
ProductDescription({
this.id,
this.description,
this.name,
this.isTemplate,
this.isCat,
this.languageId,
this.categoryImage,
});


int? id;
String? name;
String? description;
bool? isTemplate;
bool? isCat;
int? languageId;
List<CategoryImage>? categoryImage;

factory ProductDescription.fromlson(String str) =>
ProductDescription.fromMap(json.decode(str));

String toJson() => json.encode(toMap());

factory ProductDescription.fromMap(Map<String, dynamic> json) =>
ProductDescription(
id: json["id"],
name: json["name"],
description: json["description"],
isTemplate: json["isTemplate"],
isCat: json["isCat"],
languageId: json["languagelD"],
categoryImage: json["categoryImage"] != null
? List<CategoryImage>.from(
json["categoryImage"]?.map(
(x) => CategoryImage.fromMap(x),
) // List.from
) // List. from
    : null,
); // ProductDescription

Map<String, dynamic> toMap() => {
"id": id,
"name": name,
"description": description,
"isTemplate": isTemplate,
"isCat": isCat,
'categorylnage': categoryImage,
'categoryImage': categoryImage,
};
}

class ProductFavorite {
ProductFavorite(
{this.id, this.productId, this.userID, this.isSelected = false});

int? id;
int? productId;
int? userID;
bool isSelected;

factory ProductFavorite.fromJson(String str) =>
ProductFavorite.fromMap(json.decode(str));

String toJson() => json.encode(toMap());

factory ProductFavorite.fromMap(Map<String, dynamic> json) => ProductFavorite(
id: json["id"],
productId: json["productID"],
isSelected: json["isSelected"],
);

Map<String, dynamic> toMap() => {
// "14%: 1d,
"productID": productId,
// "userID": userID,
};

}

class CategoryImage {
CategoryImage({
this.id,
this.categoryID,
this.imageURL,
});

int? id;
int? categoryID;
String? imageURL;


factory CategoryImage.fromJson(String str) =>
CategoryImage.fromMap(json.decode(str));

String toJson() => json.encode(toMap());

factory CategoryImage.fromMap(Map<String, dynamic> json) => CategoryPage(
id: json["id"],
categoryID: json ["categoryID"],
imageURL: json["imageURL"],
);

Map<String, dynamic> toMap() => {
"id": id,
"categoryID": categoryID,
"inageURL": imageURL,
};
}

class Roles {
int? id;
int? userID;
int? roleID;
bool? isActive;
String? roleName;

Roles({this.id, this.userID, this.isActive, this.roleName, this.roleID});

factory Roles.fromlson(Map<String, dynamic> json) {
return Roles(
userID: json['userID'],
roleID: json['roleID'],
isActive: json['isActive'],
roleName: json['rolename']
);
}

Map<String, dynamic> toMap() => {
"id": id,
'userID': userID,
"roleID": roleID,
"isActive": isActive,
"roleName": roleName,
};
}

// TODO STOPPED HERE

// ====

// done til ud
class UserPreference {
"int? preferencelD;
int? type;
int? preferencelD;
int? pickupTimeSlotID;
String? name;
int? type;
String? image;
String? typeDescription;
String? startTime;
String? endTime;
String? color;
String? icon;
bool isSelected;
bool showInFilter;

UserPreference({
this.preferencelD,
this.pickupTimeSlotID,
this.nans,
this.type,
this.typeDescription,
this.startTine,
this.startTime,
this.endTime,
this.color,
this.icon,
this.isSelected = false,
this.showInFilter = true,
class ProductReview {

this.id,
this.orderDetailld,
this.productID,
pickupTimeSlotID: json['pickupTimeSilotID'],
name: json['name'],
type: json['type'],
image: json['image'],
typeDescription: json['typeDescription'] ?? json['description'],
startTime: json['startTime'],
endTine: json['endTime'],
iisSelected: json['isSelected'],
icon: json['dcon'],
color: json['color'],
showInFilter: json['showInFilter'] ?? false,
;
EE

Map<String, dynamic> toJson() {
return {
"preferencelD": preferencelD,
"pickupTimeSlotID": pickupTimeSlotlD,
"nage": name,
"type": type,
"inage": image,
"typeDescription": typeDescription,
"description": typeDescription,
"gtartTirne": startTire,
"endTine": endTime,
"isSelected": isSelected,
"showInFilter": showInFilter
};
}
}

class CustomerDashboard {
int totalReserved;

CustonerDashboard({
this.totalReserved = 0,
2H

factory CustomerDashboard.fromlson(String str) =>
CustomerDashboard, fromMap(json.decode(str));

String toJson() => json.encode(toMap());

factory CustomerDashboard.fromMap(Map<String, dynamic> json) =>
CustomorDashboard(
totalReserved: json["totalReserved"],
);

Map<String, dynamic> toMap() => {
"totalReserved": totalReserved,
};
}

class GetUserPreferencesResponse {
List<UserPreference>? food = [];
List<UserPreference>? dietary = [];
List<UserPreference>? pickupSlot = [];
bool showPreference;

GetUserPreferencesResponse({
this.food,
this.dietary,
this.pickupSlot,
this.showPreference = false, });

factory GetUserPreferencesResponse.fromJson(Map<String, dynamic> json) {
food: Tison['food'] = null
i food: json['food'] I= null
    . ? List<UserPreference>.froa(
json['food'])?.map((x) => UserPreferenco.fromJson(x))) // List.frea
    : null,
dietary: json['dietary'] != null
? List<UserPreference>.from(
json['dietary']?.map((x) => UserPreference.fromJson(x))) // List.froa
    : null,
pickupSlot: json['pickupSlot'] != null
? List<UserPreference>.froa(
json['pickupSlot"]2.rap((x) => UserPreference.fromlson(x))) // List.from
    : nol,
showPreference: json['showPreference']); // GetUserPreferencesResponse
}
}

class Lookup {
Lookup ({
this.id,
this.lookupTableld,
this.languageId,
this.lookupValue,
this.displayValue,
this.isDefault,
this.isActive,
this.sequenceld,
this.language,
oH

int? id;
int? lookupTableld;
int? languageId;
String? lookupValue;
String? displayValue;
bool? isDefault;
bool? isActive;
int? sequenceld;
String? language;

factory Lookup.fromdson(String str) => Lookup.fromMap(json.decode(str));

String toJson() => json.encode(toMap());

factory Lookup.fromMap(Map<String, dynamic> json) => Lookup(
id: json["id"],
lookupTableld: json["lookupTableID"],
languageId: json["languagelD"],
lookupValue: json["lookupValue"],
displayValue: json["displayValue"],
isDefault: json["isDefault"],
isActive: json["isActive"],
sequenceld: json["sequencelD"],
language: json["language"],
);

Map<String, dynamic> toMap() => {
"id": id,
"lookupTableID": lookupTableld,
"languageID": languageId,
"displayValuve": displayValue,
"displayValue": displayValue,
"isDefault": isDefault,
"isActive": isActive,
"sequencelD": sequenceld,
"language": language,
};
}

class PickupTimeDaily {
String? label;
TextEditingController? textController;
TineOfDay timeOfDay;
EnunTineCategory? type;

PickupTimeDaily({
this.label,
this.textController,
required this.tine0fDay,
this.type,
;
// can also odd 'required' keyword
}

class Country {
int? id;
String? countryCode;
String? currency;
String? name;
}

class Order {
Order ({
this.id = 0,
this.customerld = 0,
this.date,
this.totalPrice = 0,0,
this.totalActualPrice = 0.8,
this.totalTaxAmount = 6.0,
this.exchangeRate = 0.8,
this.baseCurrency = '',
this.currency = '',
this.totalQty = 6,
data['storeAccountSetuplbl13"] = this.storeAccountSetuplbl13?.toHap();
this.statusID = 7,
this.isRefund,
this.comments = '',
this.statusConnents = '',
this.orderDetail = const [],
this.statusIDDescription = '',
this.redirectURL = '',
this.storeAddress = '',
this.pickInformation = '',
this.timelabel = '',
this.timeLabel = '',
this.storelago = '',
this.storeID,
this.rating = 6.9,
this.transactionld,
this.userPaynentCardl0,
HB:

int customerld;
String? date;
double totalPrice;
double totalActualPrice;
double totalTaxAmount;
data 'storeAccountSetupDetalilsibll3'] =
data['storeAccountSetupDetailslblld'] =
int totalQty;
String orderNnumber;
int statuslD;
bool? isRefund;
bool? isRefund;
String comments;
String statusComments;
List<OrderDetail> orderDetail;
String statusIDDescription;
String redirectURL;
String storeMaae;
String storeAddress;
String timelabel;
String pickInformation;
String storeLogo;
int? storeID;
double rating;
String? transactionld;
int? userPaymentCardID;
bool? isSavePaymentInfo;
bool? isAllowCancel;

factory Order,fromlson(String str) => Order.fromMap(json.decode(str));

String toJson() => json.encode(toMap());

factory Order, fromMap(Map<String, dynamic> json) => Order(
1d: json["id"] ?? '',
custonerId: json["customerID"] ?? 0, £2 ~ wv
data: json["date"] ?? *'',
totalPrice: json["totalPrice"] ?? 0.6,
totalActualPrice: json["totalActvalPrice"] ?? 0.6,
totalTaxAmount: json["totalTaxAmount"] ?? 0.9,
exchangeRate: json["exchangeRate"] ?? 6.0,
baseCurrency: json["baseCurrency"] ?? '',
currency: json["currency"] ?? '',
totalQty: json["totalQty"] ?? '',
orderNnumber: json["orderNnumber"] ?? '',
statusID: json["statusID"] ?? EnumOrderStatus.cancelled.value,
isRefund: json["isRefund"],
comments: json["comments"] ?? = '',
statusComments: json["statusComments"] ?? '',
orderDetail: json["orderDetail"] == null
? []
    : List<OrderDetail>.from(
json["orderDetail"].rap(
(x) => OrderDetail.fromMap(x),
),
), // List.froa
statusIODescription: json["statusIDDescription"] ?? '',
redirectURL: json["redirectURL"] ?? '',
storeName: json["storeName"] ?? '',
storeAddress: json["storeAddress"] ?? '',
timelabel: json["timeLabel"] ?? '',
pickInformation: json["pickInformation"] ?? '',
storeLogo: json["storeLogo"] ?? '',
storeID: json["storeID"] ?? -1,
rating: json["rating"] ?? -1,
transactionld: json["transactionld"],
1sAllowCancel: json["isAllowCancel"],
); // order

Map<String, dynamic> toMap() => {
"id": id,
"customerID": customerld,
// "dote": date,
"totalPrice": totalPrice,
"totalActualPrice": totalActualPrice,
"totalTaxAmount": totalTaxAmount,
"exchangeRate": exchangeRate,
"baseCurrency": baseCurrency,
"currency": currency,
"totalQty": totalQty,
"orderNnumber": orderNnuaber,
"statusID": statusID,
*isRefund": isRefund,
"comments": comments,
"statusComments": statusComments,
"orderDetail": List<dynamic>.from(orderDetail.map((x) => x.toMap())),
"cating": rating,
"rating": rating,
"yserPaymentCardID": userPaymentCardID,
"isSavePaymentInfo": isSavePaymentInfo,
};
}

class OrderDetail {
OrderDetail({
this.id = 0,
this.orderld = 0,
this.productId = 0,
this.qty = '',
this.unitPrice = 0.0,
this.actualUnitPrice = 0.0,
this.comments = '',
this.productName = '',
this.currency = '',
this.userRating = 6.0,
1;

int id;
int orderld;
int productId;
int qty;
double unitPrice;
double actualUnitPrice;
String comments;
String productName;
String currency;
double userRating;

factory OrderDetail.froalson(String str) =>
orderDetail.fromMap(json.decode(str));

String toJson() => Json.encode(toMap());

factory OrderDetail.fromMap(Map<String, dynamic> json) => OrderDetail(
id: json["id"],
orderId: json["orderID"],
productId: json["productID"],
qty: json["qty"],
unitPrice: json["unitPrice"],
actualUnitPrice: json["actualUnitPrice"],
comments: json["comments"] ?? '',
productName: json["productName"],
currency: json["currency"],
userRating: json["userRating"] ?? 0.0,
);

Map<String, dynamic> toMap() => {
"id": id,
"orderID": orderld,
*productID": productId,
"qty": qty,
"unitPrice": unitPrice,
"actualUnitPrice": actualUnitPrice,
"comments": comments,
"userRating": userRating,
};
}

class OrderFilter {
OrderFilter({
this.id,
this.customerld,
this.storeId,
this.fromDate,
this.toDate,
this.statusld,
this.paymentStatusld,
this.orderNumber,
1;

int? id;
int? customerld;
String? storeId;
String? fromDate;
String? toDate;
int? statusld;
int? paymentStatusld;
String? orderNumber;

factory OrderFilter.fromJson(String str) =>
' OrderFilter.fromMap(json.decode(str));

String toJson() => json.encode(toMap());

factory Orderfilter.fromMap(Map<String, dynamic> json) => OrderFilter(
id: json["id"],
customerld: json["customerID"],
storeId: json["storeID"],
fromDate: json["fromDate"],
toDate: json["toDate"],
statusId: json["statusID"],
paymentStatusld: json["paymentStatusID"],
orderNumber: json["orderNumber"],
);

Map<String, dynamic> toMap() => {
"id": id,
"customerID": custonerld,
"storeID": storeId,
"froaDate": fromDate,
"toDate": toDate,
"statusID": statusld,
"paymentStatusID": paymentStatusld,
"orderNumber": orderNumber,
};


class DateRange {
DateRange ({
this.fromDate,
this.toDate,
this.dateTimeRange,
1;

TextEditingController? fromDate;
TextEditingController? toDate;
DateTimeRange? dateTimeRange;

factory DateRange.fromdson(String str) => DateRange.frosHap(json.decode(str));

String toJson() => json.encode(toMap());

factory DateRange.fronMsp(Map<String, dynamic> json) => DateRange(
fromDate: json["fronDate"],
toDate: json["toDate"],
);

Map<String, dynamic> toMap() => {
"fromDate": fromDate,
"toDate": toDate,
};
}

class RatingRank {
RatingRank({
this.id = 0,
this.name = '',
this.icon ='',
this.color = '',

I
int 1d;
String nape;
String dcon;
String. color;
xa ~~
factory RatingRank.fromJson(String str) =>
RatingRank.fromMap(json.decode(str));

String toJson() => json.encode(toMap());

factory RatingRank.fromuNap(Map<String, dynamic> json) => RatingRank(
id: json["id"],
name: json["name"],
icon: json[*icon"] ?? = '',

' );

Map<String, dynamic> toMap() => { [
"id": id,
"name": name,
"icon": icon,
"colar": color,




PaymentGatewayResponse({
this.orderNo,
this.isCardInfoValid,


String? orderNo;



















class PaymentCreditCard {
PaymentCreditCard({
this.id,
this.userID,
this.paymentProviderld,
this.cardToken,
this.cardNumber,
this.cardType,
this.cardHolderName,
this.expirationDate,


int? id;
String? userID;
int? paynentProviderld;
String? cardToken;
String? cardNumber;
String? cardType;
String? cardHolderName;
String? expirationDate;

factory PaymentCreditCard.fromdson(String str) =>
PayaentCreditCard.fromMap(json.decode(str));

String toJson() => json.encode(toMap());

factory PaymentCreditCard.fromMap(Map<String, dynamic> json) =>
PayaentCreditCard(
id: json["id"],
userId: json["userID"],
paymentProviderId: json["paymentProviderID"],
cardToken: json["cardToken"],
cardNumber: json["cardHumber"],
cardType: json["cardType"],
cardioldername: json["cardHoldername"],
expirationDate: json["expirationDate"],
);

Map<String, dynamic> toMap() => {
"id": id,
"userID": userID,
"paymentProviderlD": paymentProviderld,
"cardToken": cardToken,
"cardNumber": cardNumber,
"cardType": cardType,
};
}

class ApplicationContent {
TranslationLanguages? loginlbll;
TranslationLanguages? loginlbl2;
TranslationLanguages? loginlbl3;
Translationlanguages? loginEnterEmaillbll;
TranslationLanguages? loginEnterEmaillbl2;
Translationlanguages? loginEnterEmaillbl3;
TranslationLanguages? loginEnterEmaillbl4;
TranslationLanguages? loginBSLbll;
Translationlanguages? loginBSLbl2;
Translationlanguages? loginBSLb13;
TranslationLanguages? loginBSLbl4;
TranslationLanguages? welcomeSliderlbll;
TranslationLanguages? welcomeSliderlbl2;
Translationlanguages? welcomeSliderLbl3;
TranslationLanguages? welcomeSliderLbl4;
TranslationLanguages? welcomeSliderLbl5;
TranslationLanguages? welcomeSliderlbls;
TranslationLanguages? welcomeSliderlbl7;
Translationlanguages? welcomeSliderLbl8;
TranslationLanguages? welcomeSliderLbl?;
Translationlanguages? welcomeSliderlbl10;
Translationlanguages? welcomeSliderlblll;
TranslationLanguages? loginEnterSCLb11;
TranslationLanguages? loginEnterSCLb12;
TranslationLanguages? loginEnterSCLLL3;
TranslationLanguages? loginEnterSCLbl4;
TranslationLanguages? loginEnterSCLb1S;
TranslationLanguages? loginEnterSCLb16;
TranslationLanguages? loginEnterSCLb17;
TranslationLanguages? loginEnterSCLb18;
TranslationLanguages? userVerifyEmaillbll;
Translationlanguages? userVerifyEmaillbl2;
TranslationLanguages? userVerifyEmaillbl3;
TranslationLanguages? userVerifyEmaillbl4;
TranslationLanguages? userVerifyEmaillbls;
Translationlanguages? userVerifyEmaillbls;
TranslationLanguages? userVerifyEmaillbl7;
TranslationLanguages? userVerifyEmaillbls;
TranslationLanguages? userDashboardLbll;
TranslationLanguages? userDashboardLbl2;
TranslationLanguages? userDashboardLbl3;
Translationlanguages? userDashboardlbl4;
TranslationLanguages? userDashboardLbl5;
TranslationLanguages? chooselocationlbll;
Translationlanguages? chooselocationlbl2;
TranslationLanguages? chooselocationlbl3;
TranslationLanguages? chooselocationlbl4;
Translationlanguages? chooselocationlbls;
TranslationLanguages? chooselocationlblé;
Translationlanguages? productBrowselbll;
TranslationLanguages? productBrowselbl2;
TranslationlLanguages? productBrowselbl3;
Translationlanguages? productBrowselbl4;
TranslationLanguages? productBrowselbl5;
TranslationLanguages? productBrowselbls;
TranslationLanguages? productBrowselbl7;
TranslationLanguages? productBrowselbl8;
TranslationLanguages? productBrowselbl?;
TranslationlLanguages? productBrowselbl10;
TranslationLanguages? productBrowseFavoritelbll;
TranslationLanguages? userBNLD11;
Translationlanguages? userBNLbL12;
Translationlanguages? userBNLLL3;
TranslationLanguages? userBNLbl4; [
Translationlanguages? loginEnterEaaillbl3;
Translationlanguages? profileMainlbll;
TranslationLanguages? profileMainlbll;
TranslationLanguages? profileMainlbl2;
TranslationLanguages? profileMainlbl3;
TranslationLanguages? profileMainlbl4;
Translationlanguages? profileMainLbl5;
Translationlanguages? profileMainlbls;
TranslationLanguages? profileMainlbl?;
TranslationLanguages? profileMainLbl8;
TranslationLanguages? profileMainlbl9;
TranslationLanguages? profileMainlbl10;
TranslationLanguages? profileMainlblll;
TranslationLanguages? profileMainlbli2;
TranslationLanguages? accountDetaillbll;
TranslationLanguages? accountDetaillbl2;
Translationlanguages? accountDetaillbl3;
TranslationLanguages? accountDetaillbl4;
TranslationLanguages? accountDetailProfilelbll;
Translationlanguages? accountDetailProfilelbl2;
TranslationLanguages? accountDetailProfilelbls;
Translationlanguages? accountDetailProfilelbls;
TranslationLanguages? accountDetailProfilelbls;
TranslationLanguages? accountDetailProfilelbls;
TranslationLanguages? accountDetailProfilelbl?7;
TranslationLanguages? accountDetailProfilelbls;
TranslationLanguages? accountDetailProfilelbly;
TranslationLanguages? accountDetailProfilelblin;
Translationlanguages? accountDetailProfileEditlbll;
TranslationLanguages? accountDetailProfileEditlbl2;
TranslationLanguages? accountDetailProfileEditlbl3;
TranslationLanguages? accountDetailProfileEditlbl4;
TranslationLanguages? accountDetailProfileEditlbl5;
TranslationLanguages? accountDetailPaymentlbll;
TranslationLanguages? accountDetailPaymentlbl2;
TranslationLanguages? accountDetailPaymentlbl3;
TranslationLanguages? accountDetailPaymentlbls;
TranslationLanguages? accountDetailPreferencelbll;
Translationlanguages? accountDetailPreferencelbl2;
Translationlanguages? accountDetailPreferencelbl3;
TranslationLanguages? accountDetailPreferencelbld;
Translationlanguages? accountDetailPreferencelbls;
Translationlanguages? accountDetailPreferencelbls;
Translationlanguages? accountDetailPreferencelbl?;
TranslationLanguages? accountDetailPreferencelbl8;
TranslationLanguages? accountDetailPreferencelbl?;
TranslationLanguages? orderUserLbll;
Translationlanguages? orderUserLbl2;
TranslationLanguages? orderUserLbl3;
TranslationLanguages? orderUserlbl4;
TranslationLanguages? orderUserLblS;
TranslationLanguages? orderUserDetaillbll;
TranslationLanguages? orderUserDetaillbl2;
TranslationLanguages? orderUserDetaillbl3;
TranslationLanguages? orderUserDetaillbl4;
TranslationLanguages? orderUserDetaillbls;
Translationlanguages? orderUserDetaillbls;
TranslationLanguages? orderUserDetaillbl?;
Translationlanguages? orderUserDetaillbls;
Translationlanguages? orderUserDetaillbl9;
TranslationLanguages? orderUserDetaillblio;
TranslationLanguages? orderUserDetaillblil;
TranslationLanguages? orderUserDetaillbli2;
TranslationLanguages? orderStorelbll;
TranslationLanguages? orderStoreLbl2;
TranslationLanguages? orderStorelbl3;
Translationlanguages? searchFilterlbll;
Translationlanguages? searchFilterlbl2;
TranslationLanguages? searchFilterlbl3;
TranslationLanguages? searchFilterlbl4;
Translationlanguages? searchFilterlbls;
Translationlanguages? searchFilterlbls;
Translationlanguages? searchFilterlbl?;
Translationlanguages? searchFilterlbls;
TranslationLanguages? productDetaillbll;
TranslationLanguages? productDetaillbl2;
TranslationLanguages? productDetaillbl3;
TranslationLanguages? productDetaillbl4;
Translationlanguages? productDetaillbls;
TranslationLanguages? productDetaillblé;
Translationlanguages? productDetaillbl?;
TranslationLanguages? productDetaillbls;
Translationlanguages? productDetaillbl?;
Translationlanguages? productDetaillbllo;
Translationlanguages? productDetaillblil;
TranslationLanguages? productDetaillbli2;
TranslationLanguages? productDetaillbl13;
TranslationLanguages? productDetaillbli4;
Translationlanguages? productDetaillblis;
TranslationLanguages? productDetaillblis;
Translationlanguages? productDetaillbll?;
Translationlanguages? productDetaillblis;
Translationlanguages? productDetaillbli9;
TranslationLanguages? productDetaillbl20;
Translationlanguages? productDetaillbl2l;
Translationlanguages? paynentPayzelbll;
TranslationLanguages? paymentPayzelbl2;
Translationlanguages? paymentPayzelbl3;
Translationlanguages? paymentPayzelbld;
TranslationLanguages? paymentPayzelbl$;
TranslationLanguages? paymentPayzelbls;
TranslationLanguages? storeAccountCreatelbll;
TranslationLanguages? storeAccountCreatelbl2;
TranslationLanguages? storeAccountCreatelbl3;
TranslationLanguages? storeAccountCreatelbld;
Translationlanguages? storeAccountCreatelbls;
Translationlanguages? storeAccountCreatelbls;
TranslationLanguages? storeAccountCreatelbl?;
Translationlanguages? storeAccountCreatelbl8; [
Translationlanguages? storeAccountCreatelbl9;
TranslationlLanguages? storeAccountCreatelbl10;
TranslationLanguages? storeAccountCreatelblil;
TranslationLanguages? storeAccountCreatelbli2;
TranslationLanguages? storeAccountCreatelbll3;
Translationlanguages? storeAccountCreatelbli4;
Translationlanguages? storeAccountCreatelbll5;
TranslationLanguages? storeAccountCreatelblls;
TranslationLanguages? storeAccountCreatelbll?;
Translationlanguages? storeAccountCreatelblis;
Translationlanguages? storeAccountCreatelbll9;
TranslationLanguages? storeAccountCreatelbl20;
TranslationLanguages? storeAccountCreatelbl2l;
Translationlanguages? storeAccountCreatelbl22;
TranslationLanguages? storeAccountCreatelbl23;
Translationlanguages? storeAccountCreatelbl24;
TranslationLanguages? storeAccountCreatelbl25;
Translationlanguages? storeAccountCreatelbl2s;
Translationlanguages? storeAccountCreatelbl27;
Translationlanguages? storeAccountloginlbll;
TranslationLanguages? storeAccountloginlbl2;
TranslationLanguages? storeAccountloginlbl3;
Translationlanguages? storeAccountloginlbl4;
TranslationLanguages? storeAccountLoginLbls;|
TranslationLanguages? storeForgotPasswordlbll;
TranslationLanguages? storeForgotPasswordLbl2;
TranslationLanguages? storeForgotPasswordlbl3;
Translationlanguages? storeForgotPasswordlbl4;
Translationlanguages? storeForgotPasswordlbl5;
Translationlanguages? storeForgotPasswordLblé;
Translationlanguages? storeChangePasswordlbll;
TranslationLanguages? storeChangePasswordlbl2;
Translationlanguages? storeChangePasswordlbl3;
Translationlanguages? storeChangePasswordLbl4;
Translationlanguages? storeChangePasswordLbl5;
TranslationLanguages? storeChangePasswordlblé;
TranslationLanguages? storeChangePasswordlbl?;
TranslationLanguages? storeApprovelbll;
TranslationLanguages? storeApprovelbl2;
TranslationLanguages? storeApprovelbl3;
TranslationLanguages? storeApprovelbld;
TranslationLanguages? storeNavDrawerlbll;
TranslationLanguages? storeNavDrawerlbl2;
Translationlanguages? storeNavDrawerlbl3;
TranslationLanguages? storeNavDrawerlbl4;
TranslationLanguages? storeNavDrawerlbl$;
TranslationLanguages? storeNavDrawerlblé;
Translationlanguages? storeNavDrawerlbl?;
TranslationLanguages? storeNavDrawerlbl8;
TranslationLanguages? storeDashboardlbll;
TranslationLanguages? storeDashboardlbl2;
TranslationLanguages? storeDashboardlbl3;
TranslationLanguages? storeDashboardlbl4;
TranslationLanguages? storeDashboardlblS;
Translationlanguages? storeAccountSetuplbll;
TranslationLanguages? storeAccountSetuplbl2;
Translationlanguages? storeAccountSetuplbl3;
Translationlanguages? storeAccountSetuplbls;
TranslationLanguages? storeAccountSetuplbls;
TranslationLanguages? storeAccountSetuplbls;
Translationlanguages? storeAccountSetuplbl?;
TranslationLanguages? storeAccountSetuplbls;
TranslationLanguages? storeAccountSetuplbl9;
Translationlanguages? storeAccountSetuplbllo;
TranslationLanguages? storeAccountSetuplblil;
TranslationLanguages? storeAccountSetuplbli2;
Translationlanguages? storeAccountSetuplbll3;
TranslationLanguages? storeAccountSetuplblis;
TranslationLanguages? storeAccountSetuplblis;
TranslationLanguages? storeAccountSetupDetailsibll;
TranslationLanguages? storeAccountSetupDetailslbl2;
TranslationlLanguages? storeAccountSetupDetailslbl3;
TranslationLanguages? storeAccountSetupDetailslbls;
TranslationLanguages? storeAccountSetupDetailslbl5;
TranslationLanguages? storeAccountSetupDetailslbls;
TranslationLanguages? storeAccountSetupDetailslbl?;
TranslationLanguages? storeAccountSetupDetailslbls;
TranslationLanguages? storeAccountSetupDetailslbly;
TranslationLanguages? storeAccountSetupDetailsLblio;
TranslationLanguages? storeAccountSetupDetailsiblil;
TranslationLanguages? storeAccountSetupDetailsibli2;
TranslationLanguages? storeAccountSetupDetailslbli3;
Translationlanguages? storeAccountSetupDetailsLbli4;
TranslationLanguages? storeAccountSetupDetailslblis;
Translationlanguages? storeAccountSetupDetailslblils;
TranslationLanguages? storeAccountSetupDetailsLbll?;
TranslationLanguages? storeAccountSetupDetailsiblis;
Translationlanguages? storeAccountSetupDetailslblly;
TranslationLanguages? storeAccountSetupDetailslbl20;
TranslationLanguages? storeAccountSetupDetailslbl2l;
TranslationLanguages? storeAccountSetupDetailsibl22;
TranslationLanguages? storeAccountSetupDetailslbl23;
Translationlanguages? storeAccountSetupDetailslbl24;
TranslationLanguages? storeAccountSetupDetailslbl2s;
Translationlanguages? storeAccountSetupDetailslbl2s;
TranslationLanguages? storeAccountSetupDetailsLbl27; [
Translationlanguages? storeAccountSetupDetailslbl28;
TranslationLanguages? storeAccountSetupDetailslbl29;
TranslationLanguages? storeAccountSetupDetailstpl3s;
TranslationLanguages? storeAccountSetupDetailsibl3l;
Translationlanguages? storeAccountSetupDetailsLbl32;
Translationlanguages? storeAccountSetupFoodlbll;
TranslationLanguages? storeAccountSetupFoodlbl2;
TranslationLanguages? storeAccountSetupFoodLbl3;
TranslationLanguages? storeAccountSetupFoodlbl4;
Translationlanguages? storeAccountSetupFoodlblS;
TranslationLanguages? storeAccountSetupFoodlblé;
TranslationLanguages? storeAccountSetupFoodlbl7;
Translationlanguages? storeAccountSetupFoodlbl8;
TranslationLanguages? storeAccountSetupFoodlbl9;
TranslationLanguages? storeAccountSetupFoodlbl18;
TranslationLanguages? storeAccountSetupFoodlblil;
TranslationLanguages? storeAccountSetupFoodLbl12;
TranslationLanguages? storeAccountSetupFoodLbl13;
TranslationLanguages? storeAccountSetupFoodLbl14;
TranslationLanguages? storeAccountSetupFoodlblls;
Translationlanguages? storeAccountSetupFoodlbl1s;
TranslationLanguages? storeAccountSetupFoodlbl17;
TranslationLanguages? storeAccountSetupFoodlbl18;
TranslationLanguages? storeAccountSetupFoodlbl19;
Translationlanguages? storeAccountSetupFoodlbl20; [
TranslationLanguages? storeAccountSetupFoodlbl21; [
TranslationLanguages? storeAccountSetupSchedulelbll;
TranslationLanguages? storeAccountSetupSchedulelbl2;
i TranslationLanguages? storeAccountSetupSchedulelbl3;
Translationlanguages? storeAccountSetupSchedulelbld;
TranslationLanguages? storeAccountSetupScheduleLbls;
TranslationLanguages? storeAccountSetupSchedulelbls;
TranslationLanguages? storeAccountSetupSchedulelbl?;
TranslationLanguages? storeAccountSetupSchedulelbls;
TranslationLanguages? storeAccountSetupSchedulelbly;
TranslationLanguages? storeAccountSetupLearnlbll;
TranslationLanguages? storeAccountSetuplearnlbl2;
TranslationLanguages? storeAccountSetuplearnlbl3;
Translationlanguages? storeAccountSetuplLearnlbld;
TranslationLanguages? storeAccountSetuplearnlbl5;
TranslationLanguages? storeAccountSetuplearnlbls;
TranslationLanguages? storeAccountSetuplearnLbl?;
TranslationLanguages? storeAccountSetupLearnlbl8;
TranslationLanguages? storeAccountSetuplearnlbly;
TranslationlLanguages? storeAccountSetuplearnlbllo;
TranslationLanguages? storeAccountSetuplearnlblll;
TranslationLanguages? storeAccountSetuplearnlbli2; [
TranslationlLanguages? storeAccountSetuplearnlbll3;
TranslationLanguages? storeAccountSetuplearnlblis;
TranslationlLanguages? storeAccountSetuplearnlbli$;
TranslationLanguages? storeAccountSetuplearnlblis;
TranslationLanguages? storeAccountSetupVatlbll;
TranslationLanguages? storeAccountSetupVatlbl2;
Translationlanguages? storeAccountSetupVatlbl3;
TranslationLanguages? storeAccountSetupVatlbls;
Translationlanguages? storeAccountSetupVatlbls;
TranslationLanguages? storeAccountSetupVatlbls;
Translationlanguages? storeAccountSetupVatlbl?;
TranslationLanguages? storeAccountSetupVatlbls;
TranslationLanguages? storeAccountSetupVatlbly;
TranslationLanguages? storeDetailsibll;
Translationlanguages? storeDetailslbl2;
TranslationLanguages? storeDetailslbl3;
Translationlanguages? storeDetailslbl4;
Translationlanguages? storeDetailsibls;
TranslationLanguages? methodslbll;
TranslationlLanguages? methodslbl2;
TranslationLanguages? methodsLbl3;
TranslationLanguages? methodslbl4;
Translationlanguages? methodslbls;
TranslationLanguages? methodslblé;
Translationlanguages? methodslbdl?;
Translationlanguages? methodslbl8;
TranslationlLanguages? homelbll;
TranslationLanguages? homelbl2;
TranslationLanguages? orderStorelbl4; [
TranslationLanguages? orderStorelblS;
TranslationLanguages? orderStorelbls; k
TranslationLanguages? orderStorelbl?;
TranslationLanguages? orderStorelbl8;
TranslationLanguages? orderStorelbl?;
Translationlanguages? orderStorelbl10;
Translationlanguages? orderStorelblll;
Translationlanguages? storeAccountSetupSchedulelbllo;
Translationlanguages? storeAccountSetupSchedulelblll;
Translationlanguages? storeAccountSetupFoodlbl22;
Translationlanguages? storeAccountloginlblé;
TranslationLanguages? storeControllerlbll;
Translationlanguages? storeControllerlbl2;
TranslationLanguages? productControllerlbl2;
TranslationLanguages? productControllerlbl2;
TranslationLanguages? productControllerlbl3;
Translationlanguages? productControllerlbls;
TranslationLanguages? userControllerlbll;
TranslationLanguages? userControllerlbl2;
TranslationLanguages? userControllerlbl3;
TranslationLanguages? userControllerlbl4;
Teranslationlanguages? userControllertbls;
TranslationLanguages? userControlleribls; [
TranslationLanguages? systemGenericErrortbll; [
TranslationLanguages? paynentGatewaylbll; k
TranslationLanguages? payaentGatewaylLhl2; k
TranslationlLanguages? paynentGatewaylbl3; macbook

ApplicationContent({
this.loginlbll,
this.loginlbl2,
this.loginlbl3,
this.loginEnterEmatllbll,
this.loginEnterEnaillbl2,
this.loginEnterEmaillbl3,
this.loginEnterEnaillbls,
this.loginBSLb11,
TranslationLanguages? storeAccountSetupSchedulelbls;
Translationlanguages? storeAccountSetupSchedulelbl?;
Translationlanguages? storeAccountSetuplearnlbll;
this.welcomeSlideribll,
TranslationlLanguages? storeAccountSetuptearnlbl3;
TranslationLanguages? storeAccountSetupLearnlbls;
TranslationLanguages? storeAccountSetuplearnlbls;
this.welcomeSliderLbl$,
this.welcomeSliderlbls,
this.welcomeSliderlbl?,
this.welcomeSliderlbl8,
this.welcomeSliderlbl?, k
this.welcomeSliderlbl19, k
this.walcomeSliderlblil, macbook
this.loginEnterSCLbl1,
this.loginEnterSCLbl2,
this.loginEnterSCLb13,
this.loginEnterSCLb14,
this.loginEnterSCLb1S,
this.loginEnterSCLb16,
this.loginEnterSCLb17,
this.ussrVerifyEnafllbll,
this.userVerifyEnatllbll,
this.userVerifyEmafllbl2,
this.userVerifyEnaillbl3,

this.userVerifyEna{llbls,

this.userVerifyEnafllbl?,
this.userVerifyEnaillbls,
this.userDashboardlbll,
this.userDashboardlbl2,
this.,userDashboardlbly,
this.userDashboardlbl4,
this.userDashboardlbl5,
this.chooselocationlbll,
this.chooselocationlbl2,
this.chooselocationlbl3,
this.chooselocationlbl4,
this.chooselocationlbl5,
this.chooselocationlbls,
this.productBrowselbll,
this.productBrowselbl2,
this.productBrowselbl3,
this.productBrowselbl4,
this.productBrowselbl5,
this.productBrowselbls,
this.productBrowselbl?,
this.productBrowselbls,
this.productBrowselbl9,
this.productBrowselbl10,
this.productBrowseFavoritelbll,
this.userBNLb11,
this.userBNLD12,
this.userBNLD13,
this.userBNLb14,
this.storeBNLD11,
this.storeBNLb12,
this.profileMainlbll,
this.profileHainlbl2, [
this.profileHainlbl3,
this.profileMainlbl4,
TranslationLanguages? storeAccountSetupDetailslbl3;
this.profileMainlbls,
this.profileMainlbl?,
this.profileMainlbl8,
this.profileHainlbl?,
this.profileMainlbl10,
this.profileHainlblll,
this.profileMainlbli2,
this.accountDetaillbl2,
this.accountDetaillbl2,
this.accountDetaillbl3,
this.accountDetaillbl4,
this.accountDetailProfilelbll,
this.accountDetailProfitelbl2,
this.accountDetailProfilelbl3,
this.accountDetailProfileldls,
this..accountDetailProfilelbl5,
this.accountDetailProfilelbls,
this.accountDetailProfilelbl?,
this.accountDetailProfilelbls,
this.accountDetailProfilelbl?,
this.accountDetailProfileEditLbll,
this.accountDetailProfileEditlbll,
this.accountDetailProfileEditLbl2,
this.accountDetailProfileEditlbl3,
this.accountDetailProfileEditLbl4,
this.accountDetailProfileEditLbls,
this.accountDetailPaynentlbll,
this.accountDetailPaynentlbl2,
this.accountDetailPaymentlbl3,
this.accountDetailPaynentlbls,
this.accountDetailPreferencelbll,
this.accountDetailPreferencelbl2,
this.accountDetailPreferencelbl3,
this.accountDetailPreferencelbld, [
this.accountDetailPreferencelbls,
this.accountDetailPreferencelbls,
this.accountDetailPreferencelbl?,
this.accountDetailPreferencelbls,
this.accountDetailPreferencelbl?,
this.orderUserlbll,
this.orderUserlbl2,
this.orderUserlbl3,
this.orderUserlbls,
this.orderUserlblS,
this.orderUserDetaillbll,
this.orderUserDetaillbl2,
this.orderUserDetaillbl3,
this.orderUserDetaillbls,
this.orderUserDetaillbls,
this.orderUserDetaillbls,
this.orderUserDetaillbl?,
this.orderUserDetaillbl8,
this.orderUserDetaillbl?,
this.orderUserDetaillbl10,
this.orderUserDetailibll2,
this.orderUserDetaillbl12,
this.orderStorelbll,
this.orderStorelbl2,
this.orderStorelbl3,
this.orderStorelbl4,
this.orderStorelbls,
this.orderStorelbls,
this.orderStorelbl?,
this.orderStorelbl8,
this.orderStorelbl?,
this.orderStorelbl10,
this.orderStorelblll,
this.searchFilterLbll,
this.searchFilterLbl2,
this.searchFilterlbl3,
this.searchFilterlbl4,
this.searchFilterlbl5,
this.searchFilterLbls,
this.searchFilterlbl?,
this.searchFilterlbl8,
this.productDetaillbll,
this.productDetaillbl2,
this.productDetaillbl3,
this.productDetaillbl4,
this.productDetaillbls,
this.productDetaillbls,
this.productDetaillbl?,
this.productDetaillbls,
this.productDetaillbl?,
this.productDetaillbllo,
this.productDetaillblil,
this.productDetaillbli2,
this.productDetaillbll3,
this.productDetaillblis,
this.productDetaillblls,
this.productDetaillblis,
this.productDetaillbll?,
this.productDetaillblis,
this.productDetaillblly,
this.productDetaillbl20,
this.productDetaillbl21,
this.paymentPayzelbll,
this.paymentPayzelbl2,
this.paymentPayzelbl3,
this.paymentPayzelbl4,
this.paymentPayzelbl5,
this.paymentPayzelbls,
this.storeAccountCreatelbll,
this.storeAccountCreatelbl2,
this.storeAccountCreatelbl3,
this.storeAccountCreatelbls,
this.storeAccountCreatelbls,
this.storeAccountCreatelbls,
this.storeAccountCreatelbl?,
this.storeAccountCreatelbls,
this.storeAccountCreatelbl?,
this.storeAccountCreatelbllo,
this.storeAccountCreatelblll,
this.storeAccountCreatelbll2,
this.storeAccountCreatelblls,
this.storeAccountCreatelblld,
this.storeAccountCreatelblls,
this.storeAccountCreatelblls,
this.storeAccountCreatelbll?,
this.storeAccountCreatelbl1s,
this.storeAccountCreatelbll?,
this.storeAccountCreatelbl20,
this.storeAccountCreatelbl2l,
this.storeAccountCreatelbl22,
this.storeAccountCreatelbl23,
this.storeAccountCreatelbl24,
this.storeAccountCreatelbl2S,
this.storeAccountCreatelbl26,
this.storeAccountCreatelbl27,
this.storeAccountloginlbll,
this.storeAccountloginlbl2,
this.storeAccountloginlbl3,
this.storeAccountloginlbls,
this.storeAccountloginlbl$,
this.storeAccountloginlbls,
this.storeForgotPasswordlbll,
this.storeForgotPasswordlbl2,
this.storeForgotPasswordlbl3,
this.storeForgotPasswordlbl4,
this.storeForgotPasswordlblé,
this.storeForgotPasswordlbls,
this.storeChangePasswordlbll,
this.storeChangePasswordlbl3,
this.storeChangePasswordlbls,
this.storeChangePasswordlbl4,
this.storeChangePasswordlbls,
this.storeChangePasswordLbls,
this.storeChangePasswordlbl?,
this.storeApprovelbll,
this.storeApprovelbl2,
this.storeApprovelbl3,
this.storeApprovelbls,
this.storeNavDrawerlbll,
this.storeNavDrawerLbl2,
this.storeNavDrawerlbl3,
this.storeNavDrawerlbl4,
this.storeNavDrawerlbl$,
this.storeNavDrawerlbls,
this.storeNavDrawerlbl?,
this.storeDashboardlbl2,
this.storeDashboardlbll,
this.storeDashboardlbl2,
this.storeDashboardlbl3,
this.storeDashboardlbl4,
this.storeDashboardlbl5,
this.storeAccountSetuplbll,
this.storeAccountSetuplbl2,
this.storeAccountSetuplbly,
this.storeAccountSetuplbls,
this.storeAccountSetuplbls,
this.storeAccountSetuplbls,
this.storeAccountSetuplbl?,
this.storeAccountSetuplbls,
this.storeAccountSetuplbly,
this..storeAccountSetuplbllsg,
this.storeAccountSetuptiblll,
this.storeAccountSetuplbll2,
this.storeAccountSetuplbll$,
this.storeAccountSetuplbll4,
this.storeAccountSetuplblls,
this.storeAccountSetupDetailsibll,
this.storeAccountSotupDetailsibl2,
this.storeAccountSetupDetasilsibly,
this.storeAccountSetupDetatilsibls,
this.storeAccountSetupDetailslbls,
this.storeAccountSetupDetailsibls,
this.storeAccountSetupDetailsibl?,
this.storeAccountSetupDetailslbls,
this.storeAccountSetupDetailslbly,
this.storeAccountSetupDetailsiblio,
this.storeAccountSetupDetailsiblil,
this.storeAccountSetupletailslbli2,
data['productBrowselbl2') = this.productBrowselbl??.toMap(); ZR Av
this.storeAccountSetupDetailslblis,
this.storeAccountSetupDetailslblls,
this.storeAccountSetupDetailsiblils,
this.storeAccountSetupDetailsibll?,
this.storeAccountSetupDetailslblls,
this.storeAccountSetupDetailslbll?,
this.storeAccountSetupOetailsibl20,
this.storeAccountSetupDetailstbl2l,
this.storeAccountSetupDetailslbl22,
this.storsAccountSetupDetailsibhl23,
this.storeAccountSetupDetailsibl24,
this.storeAccountSetupDetailslbl2s,
this.storeAccountSetupDetailslbl26,
this.storeAccountSetupDetailslbl??,
this.storeAccountSetupDetailsLbl28,
this.storeAccountSetupDetailslbl29,
this.storeAccountSetupDetailsLbl30,
this.storeAccountSetupDetailslblll,
this.storeAccountSetupDetailslbl32,
this.storeAccountSetupFoodlbll,
this.storeAccountSetupFoodlbl2,
this.storeAccountSetupFoodlbls,
this.storeAccountSetupFoodLbl4,
this.storeAccountSetupFoodlbls,
this.storeAccountSetupFoodLbls,
this.storeAccountSetupFoodlbl7,
this.storeAccountSetupFoodlbls,
this.storeAccountSetupFoodLbl?,
this.storeAccountSetupFoodlbl1e,
this.storeAccountSetupFoodlblll,
this.storeAccountSetupFoodLbll2,
this.storeAccountSetupFoodlbll3,
this.storeAccountSetupFoodlbll4, I
this.storeAccountSetupFoodlblls, [
this.storeAccountSetupFoodlblls,
this.storeAccountSetupFoodlbll?,
this.storeAccountSetupFoodlbl18,
this.storeAccountSetupFoodlbll9,
this.storeAccountSetupFoodLbl20,
this.storeAccountSetupFoodlbl2l,
this.storeAccountSetupFoodLbl22,
this.storeAccountSetupSchedulelbll,
this.storeAccountSetupSchedulelbl2,
this.storeAccountSetupSchedulelbll,
this.storeAccountSetupSchedulelbld,
this.storeAccountSetupSchedulelbls,
this.storeAccountSetupScheduleldls,
this.storeAccountSetupSchedulelbl?,
this.storeAccountSetupSchedulelbls,
this.storeAccountSetupSchedulelbly,
this.storeAccountSetupFoodlbll2,
this.storeAccountSetupScheduleldlll,
this.storeAccountSetuplearnibll,
this.storeAccountSetuplearnibl2,
this.storeAccountSetuplearnlbl3,
this.storeAccountSetuplearnlbld,
this.storeAccountSetuplearnlbls,
this.storeAccountSetuplearnibl?,
this.storeAccountSetuplearnibl?,
this.storeAccountSetuplearnibls,
this.storeAccountSetuplearnlbl?,
this.storeAccountSetuplearnlblls,
this.storeAccountSetuplearnlblll,
this.storeAccountSetuplearnlbll2,
this.storeAccountSetuplearnlblls,
this.storeAccountSetuplearnlblls,
this.storeAccountSetuplearnlblls,
this.storsAccountSetuplearnlblls,
this.storeAccountSetupvatibdll,
this.storeAccountSetupVatlbl2,
this.storeAccountSetupVatibl?, xa aw
this.storeAccountSetupVatible,
this.storeDetailslbl2,
this.storeDetailslbl3,
this.storeDetailslbls,
this.storeDetailslbls,
this.pethodsLbll,
this..methodslbl2,
this.methodsLbl3,
this.methodsLbl4,
this.methodsLbls,
this.methodslblé,
this.methodslbl?,
this.methodsLbl8,
this.homelbll,
this.homelbl2,
this.storeControllerlbll,
this.storeControllerLbl2,
this.productControllerlbll,
this.productControllerlbl2,
this.productControllerlbls,
this.productControllerlbl4,
this.userControllerlbll,
this.userControllerlbl2,
this.userControlleribls,
this.userControllerlbls,
this.userControllerlbls, [
this.userControllerlbls,
this.systenGenericErrorlbll,
this.paymentGatewaylbll,
this.paymentGatewaylbl2,
this.paymentGatewaylbl3,
n;

factory ApplicationContent.fromdson(String str) =>
ApplicationContent.fromMap(json.decode(str));

String toJson() => json.encode(toMap());

ApplicationContent.fromNap(Map<String, dynamic> json) {
1ogintbll = Translationlanquages.fromMap(json['loginlbl1"]);
1oginlbl2 = TranslationLanguages.fromNap(json['loginlbl2°]);
loginlbl3 = Translationlanguages.froofap(json['loginlb1l3"]);
loginEnterEmaillbll =
Translationlanguages.frosMap(json['loginEnterEaaillbll']);
loginEnterEmaillbll =
Translationtanguages.froafap(json['loginEnterEnaillbl2']);
loginEnterEmaillbll =
TranslationlLanguages.fromMap(json['loginEnterEmaillbl3']);
loginEnterEmaillbls =
Translationlanguages.fromMap(jsonl'loginEnterEnaillbls']);
1oginBSLb11 = TranslationLanguages.fronMop(json[*loginBSLbl1']);
1oginBSLbl2 = TranslationLanguagos.fromMap(json['toginBSLbl2']);
109inBSLb13 = Translationlanguages.fromMap(ison(*loginBSLH13']));
loginBSLbl4 = TranslationLanguages.fromMap(Ispn(*loginBSLb14]));
welconeSliderlbll = Translationlanguages.frortap(json['welconeSliderlbl1']);
welconeSliderlbl2 = Translationlanguages.fromMap(json['welconeSiliderlbl2']); [
| welconeSlideribl3 = Translationlanguages.fromMap(json['welcomeStiderLlbl3']); j
welconeSliderlbl4 = Translationlanguages.froxMap(json[''welconeSliderlbl4"]);
welconeSliderLbl5 = Translationlanguages.fromMap(json['welconeStiderlbl5']);
welcoreSlideridls = Translationlanguages.fromMap(json['welconmeSliderlbls']);
welconeSliderlbl7 = TranslationLanguages.fromMap(json['welcomeSliderlbl7°]);
welconeSliderlbl8 = TranslationLanguages.fromMap(json['welcomeStiderlbl8']);
welconeSliderlbl? = Translationlanguages.fromMap(json['welconeSliderlbl9']);
welconeSlideriblld =
TranslationLonguages.froaBap(json[ 'welcoaeSliderLh110']);
welcomeSlidertblll =
~ Translationlanguages.fromMap(json['accountDetailProfileEditlbl2°]); 2 A o
storeBNLb11 = franslationlangoages, froattap(ison[*storeBHLb11']);
storeBNLb12 = Translationlanguages.fromMap(json['storeBKLb12']);
profileMainlbll = Translationtanguages.fromMap(Json('profiledainlbll']);
profileMainlbl2 = Translationtanguages.fromMap(json['profileNainlbl2']);
profileMainlbl3 = Translationtanguages.fronfap(json['profileMainldl3']);
profileMainlbl4 = Translationlanguagos.fromMap(json['profileMainlblé"]));
profileNainlblS = TranslationLanguagoes.froanMap(json['profileRaintbl5']);
profileMainlblé = Translationlanguages.fromMap(json['profileMainlbls"]);
profileMainlbl? = TranslationLanguages.fromMap(Ison(*profileNaintbl7']);
profileMainldl8 = Translationtanguages.fromMap(ison['profileNainlbi8']);
profileNainlble = TranslationLanguages.fromMap(§son('profileNainlbl9')); 22 Av
profileMainlbl10 = TranslationLanguages.fromMap(ison['profileMainlblio']);
profileMainlblll = TranslationlLanguages.fromMap(json['profileNainlblil']);
profileMainlbl12 = TranslationLanguages.fromMap(json['profileMainlbli2']);
accountDetaillbll = Translationlanguages.fromMap(json['accountDetaillbll']);
accountDetaillbl2 = TranslationLanguages.fromMap(json['accountDetaillbl2']);
accountDetaillbl3 = Translationlanguages.fromMap(json['accountDetaillbl3']);
accountDetaillbl4 = Translationlanguages.fromMap(json['accountDetaillbl4']);
accountDetailProfilelbll =
Translationlanguages.fromMap(json['accountDetailProfilelbll']));
accountDetailProfilelbl2 =
Translationlanguages.fromMap(json['accountDetailProfilelbl2']));
accountDetailProfilelbll =
Translationlanguages.fromMap(json['accountDetailProfilelbl3']));
accountDetailProfilelbls =
Translationlangvages.fromMap(json['accountDetailProfileldrs']));
accountDetailProfilelbls =
Translationlanguages.fromMap(json['accountDetailProfilelbl5"]));
accountDetailProfilelbls =
TranslationLanguages.fromMap(json['accountDetailProfilelbls']);
accountDetailProfilelbl? =
Translationtanguages.fromMap(json['accountDetailProfilelbl7']);
accountDetailProfilelbl8 =
Translationlanguages.fromMap(json['accountDetailProfilelbls']);
accountDetailProfilelbl? =
Translationtanguages.froatap(json['accountDetailProfileldl9']));
accountDetailProfilelbl10 =
Translationlanguages.fromMap(json['accountDetailProfileldl10']);
accountDetailProfileEditlbll =
Translationlanguages.fromMap(json['accountDetailProfileEditlbll']);
accountDetailProfileEditlbl2 =
Translationlanguages.fromMap(json['accountDetailProfileEditLbl2']);
accountDetailProfileEditlbll =
Translationlanguages.fromMap(json['accountDetailProfileEditlbl3']);
accountDetailProfileEditLbls =
Translationtanguages.fromMap(json['accountDetailProfileEditLbl4']));
accountDetailProfileEditLblS =
Translationtanguages.fromMap(json['accountDetailProfileEditlbl5°]);
accountDetailPaymentlbll =
Translationlanguages.froaHap(json['accountDetailPaynentlbll']);
accountDetailPaymentlbl2 =
Translationtanguages.fromMap(json['accountDetailPaynentlbl2"]);
accountDetailPaynentlbll =
Translationlanguages.froaHap(json['accountDetailPaymentlbl3"]));
accountDetailPaynentlbld =
Translationlanguages.froadap(json['accountDetailPaymentlbls']);
accountDetailPreferencelbll =
Translationlanguages. fromHap(json['accountDetailPreferencelbll']);
accountDetailPreferencelbl2 =
Translationlanguages.fromMap(json['accountDetailPreferencelbl2']);
accountDetailPreferencelbll =
Translationlanguages.fromMap(json['accountDetailPreferencelbl3']);
accountDetailPreferencelbls =
TranslationLanguagos.fromMap(json['accountDetailPreferencelblsd']);
accountDetailPreferencelbls =
TranslationLanguages.fromHap(json['accountDetailPreferencelbl5']);
accountDetailPreferencelbls =
Translationtanguages.fromMap(json['accountDetailPreferencelbls']);
accountDetailPreferencelbl? =
Translationlanguages.fromMap(json['accountDetailPreferencelbl?']);
accountDetailPreferencelbls =
Translationlanguages.froalap(json['accountDetailPreferencelbl8']);
accountDetailPreferenceldl? =
Translationlanguages.frosMap(json['accountDetailPreferencelbl?']);
orderUserLbll = TranslationLanguages.fromMap(json['orderUserLbll']);
orderUserLbl2 = TranslationlLanguages.fromMap(json['orderUserLbl2']);
orderUserLbl3 = Translationlonguages.fromMap(json['orderUserLbl3']);
orderUserLbl4 = TranslationLanguages.fromMap(json['orderUserLblé']);
orderUserlbl5 = TranslationLonguages.fromMap(json['orderUserlbl5°]);
orderUserDetaillbll =
Translationtonguages. frosMap(json['orderUserDataillbll']);
orderUserDetaillbl2 =
Translationtanguages.fromMap(json['orderUserDetaillbl2']);
orderUserDetaillbll =
Translationtanguages.fromMap(json['orderUserDetaillbl3*']);
orderUserDetaillblé =
Translationlanguages.frosMap(json['orderUserDetaillbls']);
orderUserDetaillbls =
Translationtanguages.fromMap(json['orderUserDetaillbl5']);
orderUserDetaillblé =
Translationtanguages.fromMap(json['orderUserDetaillbls']);
orderUserDetaillbl? =
Translationtanguages.frosMap(json['orderUserDetaillbl7']);
orderUserDetaillbls =
Translationtanguages.fromMap(json['orderUserDetaillbls']);
orderUserDetaillbly =
Translationlanguagos.fromMap(json['orderUserDetaillble']);
orderUserDetaillbl10 =
Translationtanguages.fromMap(json['orderUserDetaillbl10']);
orderUserDetaillblll =
Translationtanguages.fromMap(json['orderUserDetaillblil']);
orderUserDetaillbll2 =
Translationtanguages.fromMap(json['orderUserDetaillbli2']);
orderStorelbll = TranslationLanguages.fromMap(json['orderStorelbll']);
orderStorelbl2 = TranslationLanguages.fronNap(ison['orderStorelbl2']));
orderStorelbl3 = TranslationlLanguages.fronNap(json['orderStorelbl3']);
orderStorelbl4 = TranslationLanguages.fromMap(Ison['orderStoreldl4']);
orderStorelbl5 = Translationlanguages.fromMap(ison['orderStorelbl5']);
orderStorelblé = Translationlanguages.fromMap(Ison['orderStorelbls']);
orderStorelbl7 = TranslationLanguages.fromMap(json['orderStorelbl7']);
orderStorelbl8 = TranslationlLanguages.fromMap(json['orderStorelbl8']);
orderStorelbl? = TranslationLanguages.fromMap(Ison['orderStorelbl9']);
orderStorelbl10 = Translationlanguages.fromMap(json['orderStorelbl10']);
orderStorelblll = TranslationLanguages.frooNap(json['orderStorelbl11']);
searchFilterlbll = TranslationLanguages.fromMap(ison['searchFilterlbll']);
searchFilterlbl2 = Translationlanguages.fromMap(Ison['searchFilterlbl2']);
searchFilterLbl3 = TranslationLanguages.fromMap(ison['searchFilterlbl3']);
searchFilterlbl4 = Translationlanguages.fromMap(json['searchFilterlbls']);
searchFiltertbl5 = TranslationLanguages.fromMap(json['searchFilterLbl5']);
searchFilterlblé = TranslationLanguages.fromMap(ison['searchFilterlbls'']); [
searchFilterlbl? = YranslationLanguages.fromMap(ison['searchFilterlbl7']);
searchFilterlbl8 = TranslationLanguages.fromMap(json['searchFilterLbl8']);
productDetaillbll = Translationlanguages.fronNap(json['productDetaillbll']);
productDetaillbl2 = Translationlanguages.fromMap(json['productDetaillbl2']);
productDetaillbl3 = TranslationLanguages.froaNap(json['productDetaillbl3']);
productDetaillblé = Translationlanguages.fromMap(json['productDetaillblé']);
productDetaillblS = Translatfonlanguages.fromMap(json['productDetaillbls']);
productDetadlLblé = TranslationLanguages.froaHap(json['productDetaillblé']);
productDetaslLbl? = TranslationLanguagss.fromMap(ison[ productDetaillbl7']); [
productDetailLbl8 = TranslationLanguages.fromMap(json['productDetaillbls']);
productDetaillbl? = TranslationLanguages.fromMap(json['productDetailldble']);
productDetailibllo =
Translationlanguages.fracMap(json 'productOetaillbl10']);
productDetaillblll =
TranslationlLanguages.fromMap(Ison[ productDetaillbl11']);
productDetaillbll2 =
productDetaillbll3 =
Translationlanguages.fromMap(ison{'praductDetaillbll3']));
productDetailiblls =
searchFilterlblé = TranslationLanguages.fromMap(ison(''searchFilterlbls']); [
searchFilterLbl7 = Translationlanguages.fromMap(son['searchFilterlbl7']);
productDetatilbll5 = .
Translationlanguages.fromMap(json['productDetaillblls'']);
productDataillbllsé =
productDetaillbll7 =
Translationtanguages.fromMap(isonl *produckDetat Lill?" 1);
productDetaillblig =
productDetailildlis =
TranslationLanguages.fromMap(json[ productDetaillblis']);
productDetaillblly = [
TranslationLanguages.fromMap(json[ 'productDetaillblle']);
productDetaillbl2s =
Translationlanguages.fromMap(json['praductDetaillbl20']));
productDetaillbl2l =
paynentPayzelLbll = TranslationlLanguages.fromMap(json['paymentPayzelbll']);
pasyzentPayzelbll = TranstationlLanguages.fromMap(json['paynentPayzelbl1']);
payaentPayzelLbl2 = TranslationlLanguages,fromMap(json['payoentPayzelbl2']);
paynentPayzelbl3 = TranslationLanguages,fromMap(ison[''paynentPayzelbl3']);
Transtationlanguages.fromMap(json['storeAccountSetupDetailslbl23°]));
storeAccountSetupDetailstbl2s =
paymentPayzelbls = TranslationLanguages.fromMap(json['paynentPayzelbls']);
storeAccountCreatelbll =
storeAccountCreatelbl2 =
Translationlanguagoes.fromMap(json['storeAccountSetupDetailsidbl27']);
i storeAccountCreateldl3 =
    : Translationlanguages.frouMap(json['storeAccountCreatelbl3'])); [
Translationlanguages.frosHap(json['storeAccavatCreatelbl3"]);
storeAccountCreatelbls =
TranslationLanguages.fromMap(json['storeAccountCreatelbls']);
storeAccountCreatslbls =
Translationlangvages.fromMap(json]'atoreAccountCreateldls"]);
storeAccountCreateldls =
TranslationlLanguages.fromMap(ison['storeAccountCreatelbls']));
storeAccountCreatelbl? x
Translationtanguages,fromMap(json['storeAccountCreatelbl?']));
storsAccountCreateldl8 =
Translationlanquages.fromMap(ison{'storeAccountCreatelbl8'));
storeAccountCreatelbly =
Translationtanguages.fromMap(json['storeAccountCrestelbl9']);
storeAccountCreatelblld =
Translationtangvages.fromMap(json'storeAccountCreatelbl10"]);
storeAccountCreatelblll =
Translationtanguages.fromMap(json['storeAccountCreatelblil']);
storeAccountCreatelbll12 =
Translationlanguages.fromMap(json['storeAccountCreatelbl12']); LR Av
storeAccountCreatelblll =
Translationtanguages.fromMap(json['storeAccountCreatelbl13']);
storeAccountCreatelblls =
Translationtanguages.fromMap(json['storeAccountCreatelbl14']);
storeAccountCreatelblls =
Translationtanguages.fromMap(json['storeAccountCreatelbl15']));
storeAccountCreatelblls =
Translationtanguages.fromMap(json['storeAccountCreatelbl16']);
storeAccountCreatelbll? =
Translationlanguages.frosMap(json['storeAccountCreatelbl17']);
storeAccountCreatelblls =
Translationtanguages.fromMap(json['storeAccountCreatelbl18']);
storeAccountCreatelbll? =
Translationlanguagos.fromMap(json['storeAccountCreatelbl19']);
storeAccountCreatelbl20 =
Translationtanguages.fromMap(json['storeAccountCreatelbl20']);
storeAccountCreatelbl2l =
Translationtanguages.fromMap(json['storeAccountCreatelbl21']);
storeAccountCreatelbl22 =
| Translationtangvages.fromMap(json['storeAccountCreatelbl22']);
storeAccountCreatelbl23 =
Translationlanguages.fromMap(json['storeAccountCreatelbl23']);
storeAccountCreatelbl24 =
Translationlanguages.fromMap(json['storeAccountCreatelbl24']);
storeAccountCreatelbl2s =
Translationlanguages.fromMap(json['storeAccountCreatelbl25']);
storeAccountCreatelbl2s =
Translationlanguages.fromMap(json['storeAccountCreatelbl26']);
storeAccountCreatelbl27 =
TranslationLanguages.fromMap(json['storeAccountCreatelbl27']);
storeAccountloginlbll =
TranslationLanguages.fromMap(json['storeAccountloginlbll']);
storeAccountloginlbl2 =
Translationlanguages.frosHap(json['storeAccountloginlbl2']);
storeAccountloginlbll =
Translationtanguages.fromMap(json['storeAccountloginlbl3']);
storeAccountloginlblé =
Translationtanguages.fromMap(json['storeAccountloginlbls']);
storeAccountloginlbls =
Translationlanguages.fromMap(json['storeAccountloginlblS']);
storeAccountloginlblé =
Translationlanguages.fromMap(json['storeAccountloginlblé']);
Translationlanguages.fromMap(json['storeForgotPasswordlbll']);
TranslationlLanguages.fromMap(json['storeForgotPasswordlbll']);
storeForgotPasswordlbl2 =
Translationtanguages.fromMap(json['storeForgotPasswordlbl2']);
storeForgotPasswordlbl3 =
Translationtanguages.fromiap(json['storeForgotPasswordlbl3']);
storeForgotPasswordlbls =
Translationlanguages.frosHap(json['storeForgotPasswordlbl4']);
storeForgotPasswordlbls =
Translationtanguages.fromMap(json['storeForgotPasswordlbl5']);
storeForgotPasswordlblé =
Translationtanguages.fromMap(json['storeForgotPasswordlbls']);
storeChangePasswordlbll =
Translationlanguages.fromMap(json['storeChangePasswordlbll']);
storeChangePasswordlbl2 =
Translationlanguagos.fromMap(json['storeChangePasswordlbl2']);
storeChangePasswordlbl3 =
Translationtanguages,fromMap(json['storeChangePasswordlbl3']);
storeChangePasswordlbls = [
Translationlanguages.fromMap(json['storeChangePasswordlbl4']);
Translationlanguages.fromMap(json['storeChangePasswordlbl5']);
Translationlanguages.froaNap(json['storeChangePasswordlbl5']);
storeChangePasswordlblé =
Translationtanguages.fromMap(json['storeChangePasswordLbl6']);
storeChangePasswordlbl? =
Translationtanguages.froalap(json['storeChangePasswordlbl?']);
storeApprovelbll = Translationlanguages.fromMap(json['storeApprovelbl1t]);
Translationtanguages.fromMap(json['storeAccountSetuplearnlblé"]);
storeAccountSetuplearnlbl? =
storeApprovelbld = Translationlanguages.fromMap(json['storeApprovelbl4']);
Translationlanguages.fromMap(json['storeNovDraweribhl1']);
storeRavOramerlbl2 =
Translationtanguages.fromMap(json['storeNavDrawertbl2']);
storeNavOranerlbl3 =
Teanslatiantanguages. Froatap (json *storekhvDraserLb13 1);
storeHavDrawerlblé =
Translationlanguages.fromMap(json['storeRavDrawerlbls']);
storeMavDrawerlbl5 =
Translationlanguages.fromMap(json['storeNavDrarerlbl5']); [
storeNavlrawarlbls =
TranslationLanguages.fromMap(Isonf'storellavDrawerlbls']);
storeliavDrawerlbl? =
Translationtanguages,fromMap(ison['storeNavDrawerlbl7']);
storeNavOrawarlbl8 =
Translationtanguages.fromMap(json[ storeAccountSetupDetailslbl3n']));
storeAccountSetupDetailsibl3l =
Translationtanguages.fromMap(json['storeAccountSetupDetailslhl3i"]);
storeDashboardlbl2 =
TranstationlLanguages.fromMap(json['storeDashboardlbl2']);
storeDashboardLbll =
Translationlanguages.fromMap(ison{''storeDashboardlbl3']);
storeDashboardlbl4 =
Translationlanguages.fromMap(json[''storeDashboardlbl4']);
storeDashboardlbls =
Translationtanguages.fromMap(json[ 'storeDashboardlbls']);
storeAccountSetuplbll =
Translationlanguages. fromiap(json['storeAccountSetuplbll']);
storeAccountSetuplbl2 =
Translationtanguagos.fromMap(json['storeAccountSetuplhl2']);
storeAccountSetupFoodLbls =
Translationtanguages.frosMap(fson{'storeAccountSetupldl3'']);
storeAccountSetuplbls =
TranstationLanguages.fromdap(json['storeAccountSetuplblé']);
storeAccountSetuplbls =
Tranelationt unquages. {rasHap(3sonl "store EcauntSetupLtS 13;
Translationlanguagos.froaHap(json[ 'storeAccountSetupDetailslblls']); ~ n N o
Translationtanguages.fromMap(json['storeAccountSetupldls']);
storeAccountSetuplbl? =
Translationtanguages.fromMap(json['storeAccountSetuplbl7']); [
storeAccountSetuplbls =
TranslationLanguages.fromMap(json['storeAccountSetuplbls']);
storeAccountSetuplbl? =
Translationlanguages.fromMap(json['storeAccountSetupldl9']);
storeAccountSetuplbl10 =
Translationlanguages.fromMap(json['storeAccountSetuplbl10']);
storeAccountSetuplblll =
Translationlanguagas.fromMap(json['storeAccountSetupldrlll']);
storeAccountSetuplbli2 =
Translationlanguages.fromMap(json['storeAccountSetupldll2']);
storeAccountSetuplblll =
Translationtanguages.fromMap(Ison['storeAccountSetuplbl13']);
storeAccountSetuplblls =
Translationtanguages.fromMap(json['storeAccountSetuplblis']);
storeAccountSetuplblls =
Translationtanguages. froadap(json[*storeAccountSatuplbl15]);
storeAccountSetupDetailsibll =
Translationlanguages.fromMap(json['storeAccountSetupBetailsilbll']);
searchFilterthtl = TranslationLanguages. froatlp(Ison] searchFilterlbl3']);
TranslationLanguages.fromMap(json['storeAccountSetupDetailslbl2']); [
searchFilterLbl5 = TranslationLanguages.fromMap(ison['searchFilterLbl5']);
Translationtanguages.fromMap(json['storeAccountSetupDetasisLbl3"]);
storeAccountSetupDetailslbl4 =
Translationlanguages.fromMap(json['storeAccountSetupDetatlslhbls']);
storeAccountSetupDetailsibls =
Trans\ationlanguages.fromMap(json[ 'storeAccountSetupDetailsibl5'']);
storeAccountSetupDetailsiblé =
Translationlanguages.fromMap(json['storeAccountSetupBetailslbls']);
storeAccountSetupDetailsibl? =
Translationtanguages.fromMap(json['storeAccountSetupDetaitsibnt?']);
storeAccountSetupDetailsibl8 =
Translationlanguages.froasMap(json['storeAccountSetupDetailsibls']);
storeAccountSetupDetailsibly =
Translationlanguages.fromMap(json['storeAccountSetupBetailsible']);
storeAccauntSetupDetailsiblll =
Translationtanguages. frosMap(json['storeAccountSetupDetailsiblie']);
storeAccountSetupDetailsiblll =
TranslationLanguages.fromMap(Json('storeAccountSetupBetaitlslblil']));
storeAccountSetupDetailstbll2 =
Translationlanguages.fromMap(json['storeAccountSetupletaitslbll2"]));
storeAccountSetupDetailstblll =
Translationlanguages.fromMap(json['storeAccountSetupBetailsldl24]);
storeAccountSetupDetailstblld =
TranslationlLanguages.fromMap(json['storeAccountSetupDetailslbli4']);
storeAccountSetupDetailslblls =
Translationtanguages.fromMap(json['storeAccountSetupDetatlsibl15]);
storeAccountSetupDetailsiblls = [
Translationtanguagoes.fromMap(json['storeAccountSetupDetailsiblls"]));
storeAccountSetupDetailsibll? =
Translationtanguages.fromMap(json['storeAccountSetupDetasitsibll?']);
storeAccountSetupDetailsiblis =
Translationlanguages.fromMap(json['storeAccountSetupDetailsiblis']);
storeAccountSetupDetailsibll? =
TranslationLanguages.fromMap(json['storeAccountSetupDetailsibll9']);
storeAccountSetupDetailsibl20 =
Translationlanguages.fromMap(json['storeAccountSetupDetailsilbl2n']));
storeAccountSetupDetailsibl2l =
Translationlanguages. froaap(json] *storeAfcountSetupDetailsilol21']);
storeAccountSetupDetailsibl22 =
Translationlanguages.fromMap(json['storeAccountSetupDetaitsibl22']);
storeAccountSetupDetailslbl2s =
Translationlanguages.fromMap(json['storeAccountSetupBetaitsilbl23']));
storeAccountSetupDetailslbl24 =
Transtationlanguages.froadap(json['storeAccountSetupDetailslbl24°]);
storeAccountSetupDetailsibl2s =
Translationtanguages.fromMap(json['storeAccountSetupDetailslhl25°]);
storeAccountSetupDetailslbl2s =
Translationlanguagos. frosfap(json['storeAccountSetupDetailsihl26']);
storeAccountSetupDetailsibl?? =
| Translationlanguages.fromMap(json['storeAccountSetupDetailsibl27']);
storeAccountSetupDetailslbl2s =
Translationlanguages.fromMap(json['storeAccountSetupDetailsibl28']);
storeAccountSetupDetailsibl29 =
TranslationLanguages.fromMap(json['storeAccountSetupDetailslbr29']);
storeAccountSetupDetailsibl3o =
Translationtanguages.fromMap(json[''storeAccountSetupBetailslbl36']);
storeAccountSetupDetailsibl3l =
Translationlanguages.fromMap(json['storeAccountSetupDetailsibl31']);
storeAccountSetupDetailsibl32 =
Translationtanguages.fromMap(json['storeAccountSetupDetailsilbl32']);
storeAccountSetupFoodlbll =
Translationtanguages.fromMap(json['storeAccountSetupFoodLlbl1t]));
storeAccountSetupFoodlbl2 =
Translationtanguages.froatap(json['storeAccountSetupFoodlbl2"]);
storeAccountSetupFoodLbl3 =
Translationtanguages.fromMap(json['storeAccountSetupFoodLbl3']);
storeAccountSetupFoodlbl4 =
TranslationLanguages.fromMap(json['storeAccountSetupFoodlbls']);
storeAccountSetupFoodlbls =
Translationlanguages.fromMap(json['storeAccountSetupFoodlbl5']);
storeAccountSetupFoodlbls =
Transtationlanguages.fromMap(json['storeAccountSetupFoodLbls"]);
storeAccountSetupFoodlbl7 =
Translationlanguages.fromMap(json['storeAccountSetupFoodlbl7']);
storeAccountSetupFoodlbls =
Translationtanguages.fromMap(json['storeAccountSetupFoodLbl8']);
storeAccountSetupFoodLbly =
Translationlanguages.fromMap(json['storeAccountSetupFoodlbl9°]);
storeAccountSetupFoodLbli0 =
Translationtanguages.fromMap(json['storeAccountSetupFoodLbl10]);
storeAccountSetupFoodlblll =
Translationtanguages.fromMap(json['storeAccountSetupFoodlblil¢]);
storeAccountSetupFoodlbll2 =
Translationtanguages.fromMap(json['storeAccountSetupFoodLbl12°]);
storeAccountSetupFoodlblll =
Translationlanguages.fromMap(json['storeAccountSetupFoodLbl13']);
storeAccountSetupFoodlbli4 =
Translationlanguages.fromMap(json['storeAccountSetupFoodLbl14°]);
storeAccountSetupFoodLblls =
| Translationlanguages.frosMap(json['storeAccountSetupFoodlbli5"]);
storeAccountSetupFoodlblls =
Transtationlanguages.fromMap(json['storeAccountSetupFoodLbl16"]);
storeAccountSetupFoodlbll? =
Translationlanguages.fromMap(json['storeAccountSetupFoodLbl17']);
storeAccountSetupFoodLblls =
Translationtanguages.fromMap(json['storeAccountSetupFoodLbl18°]);
storeAccountSetupFoodLbll9 =
Translationtanguages.fromMap(json['storeAccountSetupFoodlbl19']);
storeAccountSetupFoodLbl20 =
Translationtanguages.fromMap(json['storeAccountSetupFoodLbl26°]);
storeAccountSetupFoodlbl2l =
Translationlanguages.fromMap(json['storeAccountSetupFoodLbl21¢]);
storeAccountSetupFoodlbl22 =
Transtationlanguages.fromMap(json['storeAccountSetupFoodlbl22¢]);
storeAccountSetupSchedulelbll =
TranslationLanguages.fromMap(json['storeAccountSetupSchedulelbll']);
Translationlanguages.fromMap(json['storeAccountSetupSchedulelbl2']);
Translationtanguages.fromMap(json[''storeAccountSetupSchedulelbl2']);
storeAccountSetupSchedulelbll =
Translationtanguages.froadap(json['storeAccountSetupSchedulelbl3"]);
storeAccountSetupSchedulelbld =
Translationtanguages.froadap(json['storeAccountSetupSchedulelbls']);
storeAccountSetupSchedulelblS =
Translationtanguages.fromMap(json[''storeAccountSetupSchedulelbl5']);
storeAccountSetupSchedulelbls =
Translationtanguages.fromMap(ison{'storeAccountSetupSchedulelbls']);
storeAccountSetupSchedulelbl? =
TranslationLanguvages.frosMap(json['storeAccountSetupSchedulelbl?']);
storeAccountSetupSchedulelbl8 = [
Translationlanguages.fromMap(json['storeAccountSetupSchedulelbl8']);
storeAccountSetupSchedulelbl? =
Translationlanguages.fromMap(json['storeAccountSetupSchedulelbl?']);
storeAccountSetupSchedulelbllt =
Translationlanguages.fromMap(json['storeAccountSetupSchedulelbl10']);
storeAccountSetupSchedulelblll =
Translationtanguages.fromMap(json['storeAccountSetupSchedulelblll']);
storeAccountSetuplearnlbll =
storeAccountSetuplearnlbl2 =
Translationtanguages.fromMap(json['storeAccountSetuplearnlbl2']);
TranslationlLanguages.fromMap(json['storeAccountSetuplearnlbl2']);
Translationlanguages.fromMap(json['storeAccountSetupSchedulelbls']);
Translationtanguages.fromMap(json['storeAccountSetupLearnLbl3"]);
storeAccountSetuplearnlbld =
TranslationLanguages.fromMap(json['storeAccountSetuplearnlbls"]);
storeAccountSetuplearnlbl$ =
TranslationLanguages.frosdap(json['storeAccountSetuplearalbl5"]);
storeAccountSetuplearnlbl? =
Translationlanguagos.fromMap(json['storeAccountSetupLearnlbl7]);
! Transtationtanguages.fromMap(json[ 'storeAccountSetupLearalbl7']);
Translationtanguages.fromMap(json[ storeAccountSetupLearnlbl7+]);
storeAccountSetuplearnlbl8 =
Translationtanguages.fromMap(json['storeAccountSetuplearnlbl8"]);
storeAccountSetuplearnlbl? =
Translationlanguages.froaHap(json['storeAccountSetupLearnlbl9']);
storeAccountSetuplearnlbll0 =
Translationtanguages.fromMap(json['storeAccountSetuplearalblin']);
storeAccountSetuplearnlblll =
Translationtanguages.fromMap(json['storeAccountSetuplearntblll']);
storeAccountSetuplearnlbl12 =
Translationtanguages.fromMap(json['storeAccountSetuplearnlbli2']);
storeAccountSetuplearnLbl13 =
Translationtanguages.fromMap(json['storeAccountSetupLearnlbli3"]);
storeAccountSetuplearnlblld =
TranslationLanguages.fromMap(json['storeArcountSetupLearnlblis']));
storeAccountSetuplearnlblls =
Translationlanguages.fromMap(json[''storeAccountSetupLearnldblis']));
storeAccountSetuplearnlblls =
Translationtanguages.fromMap(json['storeAccountSetuplearnlblis']);
storeAccountSetupVatlbll =
Translationtanguages.fromMap(json['storeAccountSetupVatlbll']));
storeAccountSetupVatlbl2 =
Translationtanguages.frosdap(json['storeAccountSetupVatlbl2"]));
storeAccountSetupVatlbll =
Translationlanguages.fromMap(json[ 'storeAccountSetupVatlbl3"]));
storeAccountSetupVatlbls =
Translationtanguages.fromMap(json[ 'storeAccountSetupVatlblé']);
storeAccountSetupVatlbls =
Translationtanguages.fromMap(Json]'storeAccountSetupVatlblst]);
storeAccountSetupVatlbls =
Transtationtanguages.fromMap(json['storeAccountSetupVatlblé')); [
storeAccountSetupVatlbl? =
Translationtanguages.fromMap(json['storeAccountSetupVatlbl?']);
storeAccountSetupVatlbls =
TranstationLanguages.fromMap(json['storeAccountSetupVatlbls"]));
storeAccountSetupVatlbl9 =
TranstationlLanguages.fromMap(json['storeAEcountSetupvatlbl9']);
storeDetailslbl2 = Translationlanguages.fromMap(ison['storeDetailslbl2']);
storeDetailslbl2 = TranslationLanguages.fromMap(json['storeDetailslbl2']);
storeDetailsLbl3 = TranslationLanguages.fromMap(json['storeDetailslbl3']);
storeDetailslblé = TranslationLanguages.fromBap(ison['storeDetailslbls']);
storeDetailslblS = TranslationLanguages.froaMdp(json['storeDetatlsilbl5']);
nethodslbll = TranslationLanguages.fromMap(ison('methodslbll']);
nethodslbl2 = TranslationLanguages.fromMap(json['methodsibl2']); [
nethodslbl3 = Translationlanguages.fromMap(ison['methodslbl3']);
nethodsLbl4 = Translationlanguages.fromMap(ison[ 'methodsLbl4']);
pethodslbl5 = TranslationlLanguages.fromMap(json['methodslbl5']));
nethodslblé = TranslationLanguages.fromMap(json['methodslblé']);
nethodslbl7 = TranslationLanguages.fromMap(json['methodsibl7']);
nethodsLbl8 = TranslationlLanguages.froaap(ison['methodsLbl8']);
hooelbll = Translationlsnguagus.frocMap(json[ horelbll']);
hopelbl2 = TranslatianlLanguages.fromMap(json['horelbl2'));
storeControllerlbll =
nett ont anauages. frostap(Jsont storsChntrotLarLba* 1;
storeControllerlbl2 = ZR Av
Translationtanguages.fromMap(Json]'storeControllerlbl2']);
productControllerlbll =
productControllertbl2 =
TranslationLanguages.fromMap(fson{'productControllerLbl2']);

productControllerlbl3 =
Translationlanguages.fromMap(json['productControllerldbl3']);
productControllerlbls =
Translationtanguages.fromMap(Json'productControllerldbls']);
userControllerlbll =
Translationlanguages.fromMap(json['userControllerlbll']);
userControllerlbl2 =







userControllerlbls =
i Translationlanguages.fromMap(json['userControllertbl6']);
systenGenericErrorlbll =
Translationtanguages. fromap(jsonl'systenGenericEifrortbl1"]);
paymentGatewaylbll =
Translationtanguages.fromMap(fson['paymentGatemaylbl1']); [
payaentGatewaylLbl2 =
Translationlanguagos.fromMap(json]'payaentGatenaylbl2']);

Translationtanguagos.fromMap(json[ 'paymentGatewaylbl3'']);
}

Map<String, dynamic> toMap() {
Translationtanguages.froadap(json['storeAccountSetuplearnlblil"]);
data[''loginlbl1'] = this.loginlbli?.toNap();
data['loginlbl2'] = this.loginlbl22.toNap();
data['loginLbl3'] = this.loginlbt3?.toMap();
data['loginEnterEnadllbll'] = this.loginEnterEmaillbl1?.toMap();
data['loginEnterEnailldbl2"] = this.loginEnterEmaillbl??.toMap();
data['loginEnterEnaillbl3"] = this.loginEnterEmaillbl3?.toMap();
data['loginEnterEraillbl4"] = this.loginEnterEmaillbl4?,.toMap();
data['loginBSLbl1'] = this.loginBSLb112,toMap();
data['loginBSLb12'] = this.loginBSLb1??.toMap();
data['loginBSLbL3'] = this.loginBSLb13?.toMap();
data['loginBSLbl4'] = this.loginBSLb14?.toNap();
data['welcomeSliderlbll'] = this.welcomeSliderlbl12.toMap();
data['welcomeStiderLbl2'] = this.welcomeSliderlbl??.toMap();
data['welcomeSiidertbl3'] = this.welconeSliderlbl3?.toNap();
data['welcomeSliderLbl4'] = this.welcomeSliderlbl4?.toMap();
data['welcomeSliderLbl5'] = this.welcomeSliderLbl52.toNap();
data['welcomeSlideribl6'] = this.welcomeSliderlblé?.toMap();
data['welcomeSlidertbl7') = this.welconeSliderlbl7?.toNap();
data['welcomeSlidertbl8']) = this.welcomeSlideribl8?.toNap();
data['welcomeStiderlbl9'] = this.welcomeSliderlbl9?.toMap();
data['welcomeSliderlbl10'] = this.welconeStiderLbl10?.toMap();
data['welcomeSliderlbl11'] = this.welconeStiderLbl11?.toMap();
data['loginEnterSCLb11'] = this.loginEnterSCLbL12.toMap();
data['loginEnterSCLL12'] = this.loginEnterSCLb1??.toMap();
data['loginEnterSCLL13'] = this.loginEnterSCLb13?.toMap();
data['loginEnterSCLb14'] = this.loginEnterSCLbL4?.toMap();
data['loginEnterSCLO1S'] = this.loginEnterSCLb15?.toMap();
data['loginEnterSCLLL6'] = this.loginEnterSCLbLS?.toMap();
data['loginEnterSCLLL7'] = this.loginEnterSCLb172.toMap();
data['loginEnterSCLL18'] = this.loginEnterSCLb18?.toMap();
data['userVerifyEnaillbll'] = this.userVerifyEmaillbl1?.toHap();
data['userVerifyEnaillbl2'] = this.userVerifyEmailLbl??.toMap();
data['userVerifyEnaillbl3'] = this.userVerifyEmailLbl3?.toMap();
data['userVerifyEnaillbl4'] = this.userVerifyEmaillbl4?.toMap();
data['userVerifyEnaillbl5'] = this.userVerifyEmailLbl5?.toMap(); [
data['userVerifyEnaillblé'] = this.userVerifyEmaillblé?.toHap();
data['userVerifyEraillbl7*'] = this.userVerifyEmaillbl7?.toMap();
data['userVerifyEnaillblg*'] = this.userVerifyEmaillbl8?.toMap();
data['userDashboardlbll'] = this.userDashboardLbl1?.toMap();
data['vserDashboardlbl2'] = this.userDashboardLbl??.toMap();
data['vserDashboardlbl3'] = this.userDashboardLbl3?.toMap();
data['userDashboardlbl4'] = this.userDashboardLbl4?.toMap();
data['userDashboardlbl5'] = this.userDashboardlbl5?.toMap();
data['chooselocationlbll'] = this.chooseLocationlbli?.toMap();
data['chooselocationlbl2'] = this.chooselocationlbl??.toMap();
data['chooselocationlbl3'] = this.chooseLocationlbl3?.toMap();
data['chooseLocationlbl4'] = this.chooseLocationlbl4?.toMap();
data['chooselocationlbl5'] = this.chooselocationlbl5?.toNap();
datal'chooselocationlblé'] = this.chooseLocationlblé?.toMap();
data['productBrowselbll'] = this.productBrowselbll?.toNap();
data['productBrowselbl2'] = this.productBrowselbl??.toMap();
data['productBrowselbl3'] = this.productBrowselbl3?.toNap();
data['productBrowselbl4'] = this.productBrowselbl4?.toMap();
data['productBrowselbl5'] = this.productBrowselbl5?.toNap();
data['productBrowselblé'] = this.productBrowselblé?.toMap();
data['productBrowselbl7'] = this.productBrowselbl7?.toNap();
data['productBrowselbl8'] = this.productBrowselbl8?.toMap();
data['productBrowselbl9'] = this.productBrowselbl9?.toNap();
data['productBrowselbl10'] = this.productBrowselbl10?.toMap();
data['productBrowseFavoritelbll'] = this.productBrowseFavoritelbl1?.toMap();
data['userBNLb11'] = this.userBNLD11?.toNap();
data['userBNLB12'] = this.userBNLbL??.toMap();
data['userBNLDL3'] = this.userBNLLL3?.toMap();
data['vserBNLbl4'] = this.userBNLBL4?.toMap();
data['storeBNLb11'] = this.storeBNLbL1?.toMap();
data['storeBNLb12'] = this.storeBNLD1??.toMap();
data['profileMainlbll'] = this.profileMainlbl1?.toMap();
data['profileMainlbl2'] = this.profileHainlhl??.toMap();
data['profileMainlbl3'] = this.profileMainLbl3?.toMap();
data['profileMainlblé'] = this.profileMainlbl4?.toMap();
data['profileMainlbl5') = this.profileMainLbl52.toMap();
data['profileMainlblé') = this.profileMainLblé?.toMap();
data['profileMainlbl7') = this.profileMainlbl??.toMap();
data['profileMainlbl8'] = this.profileMainlbl8?.toMap();
data['profileMainlbl9'] = this.profileMainlbl9?.toMap();
data['profileMainlbl10'] = this.profileHainlbl10?.toMap();
data['profileMainlbl11'] = this.profileMainlbl11?.toMap();
data['profileMainlbl12'] = this.profileHainlbl1??.toMap();
data['accountDetaillbll'] = this.accountDetaillbll?.toMap();
data['accountDetaillbl2'] = this.accountDetaillbl??.toNap();
data['accountDetaillbl3'] = this.accountDetaillbl3?.toMap();
data[''accountDetaillbl4'] = this.accountDetaillbl4?.toMap();
data['accountDetailProfilelbll'] = this.accountDetailProfilelbl1?.toMap();
data['accountDetailProfilelbl2'] = this.accountDetailProfilelbl??.toMap();
data['accountDetailProfilelbl3'] = this.accountDetailProfilelbl3?.toMap();
data['accountDetailProfilelblé'] = this.accountDetailProfilelbl4?.toMap();
data['accountDetailProfilelbl5'] = this.accountDetailProfilelbl5?.toMap();
data['accountDetailProfilelbls'] = this.accountDetailProfilelbls?.toMap();
data['accountDetailProfilelbl7'] = this.accountDetailProfilelbl7?.toMap();
data['accountDetailProfilelbl8'] = this.accountDetailProfilelbl8?.toMap();
data['accountDetailProfilelbl9'] = this.accountDetailProfilelbl9?.toMap();
data['accountDetailProfilelbl10'] = this.accountDetailProfilelbl10?.toMap();
data['accountDetailProfileEditLbll'] =
this.accountDetailProfileEditlbl1?,toNap();
data['accountDetailProfileEditlbl2'] =
this.accountDetailProfileEditLbl??.toNap();
data['accountDetailProfileEditlbl3'] =
this.accountDetailProfileEditLbl3?.toMap();
data['accountDetailProfileEditLbl4'] =
this.accountDetailProfileEditLbl4?.toMap();
data['accountDetailProfileEditLbl5'] =
this.accountDetailProfileEditLbl5?.toNap();
data['accountDetailPaymentlbll'] = this.accountDetailPaymentlbl1?.toMap();
data['accountDetailPaynentlbl2'] = this.accountDetailPaynentLbl??.toMap();
data['accountDetailPaynentldl3"] = this.accountDetailPaynentLbl3?.toMap();
data['accountDetailPayrentlblé'] = this.accountDetailPaymentlblé?.toMap();
data['accountDetailPreferencelbll'] =
this.accountDetailPreferencelbll?, toMap();
data['accountDetailPreferencelbl2'] =
this.accountDetailPreferencelhl??.toMap(); I
data['accountDetailPreferencelbl3'] =
this.accountDetailPreferencelbl3?.toNap();
data['accountDetailPreferencelbls'] = [
this.accountDetailPreferencelbl4?. toNap();
data['accountDetailPreferencelbl5'] =
this.accountDetailPreferencelbl5?.toMap();
data['accountDetailPreferencelbls'] =
this.accountDetailPreferencelblé?. toMap();
data['accountDetailPreferencelbl?'] =
this.accountDetailPreferencelbl7?.toMap();
data['accountDetailPreferencelbl8'] =
this.accountDetailPreferencelbl8?.toMap();
data[''accountDetailPreferencelbl9'] =
this.accountDetailPreferencelbl9?.toMap();
data['orderUserlbl1'] = this.orderUserlbl1?.toMap();
data['orderUserlbl2'] = this.orderUserLbl??.toMap();
data['orderUserlbl3'] = this.orderUserlbl3?.toMap();
data['orderUserlbl4'] = this.orderUserlbl4?.toMap();
data['orderUserlbl5'] = this.orderUserlbl5?.toMap();
data['orderUserDetaillbll'] = this.orderUserDetaillbll?.toMap();
data['orderUserDetaillbl2'] = this.orderUserDetailLbl??.toMap();
data['orderUserDetaillbl3"] = this.orderUserDetaillbl3?.toMap();
data['orderUserDetaillbl4"] = this.orderUserDetaillblé?.toMap();
data['orderUserDetaillbl5"] = this.orderUserDetaillbl5?.toMap();
data['orderUserDetaillblé'] = this.orderUserDetaillbls?.toMap();
data['orderUserDetaillbl?"] = this.orderUserDetaillbl7?2.toMap();
data['orderUserDetaillbla'] = this.orderUserDetaillbl8?.toMap();
data['orderUserDetaillbl9'] = this.orderUserDetaillbl9?.toMap();
data['orderUserDetaillblio'] = this.orderUserDetaillbl10?.toMap();
data['orderUserDetaillblil'] = this.orderUserDetaillblil?.toMap();
data['orderUserDetaillbli2'] = this.orderUserDetaillbl1??.toMap();
data['orderStorelbl1'] = this.orderStorelbl1?.toMap();
data['orderStorelbl2'] = this.orderStorelbl??.toMap();
data['orderStorelbl3'] = this.orderStorelbl3?.toNap();
data['orderStorelbl4'] = this.orderStorelbl4?.toMap();
data['orderStorelbl5'] = this.orderStorelblS?.toMap();
data['orderStorelbls'] = this.orderStorelblé?.toMap();
data['orderStorelbl7'] = this.orderStorelbl72.toMap();
data['orderStorelbl8'] = this.orderStorelbl8?.toMap();
data['orderStorelbl9'] = this.orderStorelbl9?.toMap();
data['orderStoreldl10'] = this.orderStorelbl10?,.toMap();
data['orderStorelbl11'] = this.orderStorelbl11?.toMap();
data['searchFilterLbl1'] = this.searchFilterLbl1?.toMap();
data['searchFilterLhl2'] = this.searchFilterlbl??.toMap();
data['searchFilterlbl3'] = this.searchFilterlbl3?.toMap();
data['searchFilterLbl4'] = this.searchFilterLbl4?.toMap();
data['searchFilterlbl5'] = this.searchFilterlbl5?.toMap();
data['searchFilterlbl6'] = this.searchFilterlbl6?.toMap();
data['searchFilterlbl7'] = this.searchFilterLbl7?.toMap();
data['searchFilterlbl8'] = this.searchFilterLbl8?.toMap();
data['productDetaillbll'] = this.productDetaillbli?.toNap(); [
data['productDetaillbl2') = this.productDetaillbl??.toMap();
data['productDetaillbl3''] = this.productDetaillbl3?.toMap();
data['productDetaillbl4') = this.productDetaillbl4?.toMap();
data['productDetaillbl5'] = this.productDetaillbl52.toMap();
data['productDetaillblé'] = this.productDetaillblé?.toMap();
data['productDetaillbl7'] = this.productDetaillbl7?.toMap();
data['productDetaillbl8'] = this.productDetaillbl8?.toMap();
data['productDetaillbl9'] = this.productDetaillbl9?.toMap();
data['productDetailibli0'] = this.productDetaillbl10?.toMap();
data['productDetaillblil'] = this.productDetaillbl11?.toMap();
data['productDetailibli2'] = this.productDetailLbl1??.toMap();
data['productDetaillbli3'] = this.productDetaillbl13?.toMap();
data['productDetaillbli4'] = this.productDetaillbll4?.toBap();
data['productDetaillbl15'] = this.productDetaillbl15?.toMap();
data['productDetailldbllé''] = this.productDetaillbllé?, toMap();
data['productDetailibli7?'] = this.productDetaillbl17?.itoMap();
data['productDetaillbli8'] = this.productDetaillbli8?.toBap();
data['productDetailtbl19'] = this.productDetailLbl19?.toMap();
data['productDetaillbl20'] = this.productDetaillbl26?.toMap(); [
data['productDetailibl21'] = this.productDetaillbl21?.toMap();
data['paymentPayzelbll'] = this.paynentPayzelLbli?.toMap();
data['paynentPayzelbl2'] = this.paymentPayzelbl??.toNap();
data['paymentPayzelbl3'] = this.paymentPayzelbl3?.toMap();
! data['paymentPayzelblé4'] = this.paymentPayzelbl4?.toMap();
data['paymentPayzelbl5'] = this.paymentPayzelLbl5?.toMap();
data['paymentPayzelbl6'] = this.paymentPayzelblé?.toNan();
data['storeAccountCreatelbll'] = this.storeAccountCreatelbl1?.toMap();
data['storeAccountCreatelbl2'] = this.storeAccountCreatelbl??.toMap();
data['storeAccountCreatelbl3"] = this.storeAccountCreatelbl3?.toNap();
data['storeAccountCreatelbl4'] = this.storeAccountCreatelbl4?.toMap();
data['storeAccountCreatelbl5'] = this.storeAccountCreatelbl5?.toMap();
data['storeAccountCreatelbls'] = this.storeAccountCreatelblé?.toNap();
data['storeAccountCreatelbl7'] = this.storeAccountCreatelbl7?.toMap();
data['storeAccountCreatelbl8'] = this.storeAccountCreatelbl8?.toMap();
data['storeAccountCreatelbl9'] = this.storeAccountCreatelbl9?.toMap();
data['storeAccountCreatelbl10'] = this.storeAccountCreatelbll10?.toMap();
data['storeAccountCreatelblll'] = this.storeAccountCreatelblil?.toMap();
data['storeAccountCreatelbl12'] = this.storeAccountCreatelbl1??.toMap();
data['storeAccountCreatelbl13'] = this.storeAccountCreatelbl13?.toMap();
data[''storeAccountCreatelbl14'] = this.storeAccountCreatelbl142.toMap();
data['storeAccountCreatelbll5'] = this.storeAccountCreatelbl152.toMap();
data['storeAccountCreatelbl16'] = this.storeAccountCreatelblis?.toMap();
data['storeAccountCreatelbll7'] = this.storeAccountCreatelbl17?.toMap(); x2 av
data['storeAccountCreatelbliB''] = this.storeAccountCreatelbl18?.toMap();
data['storeAccountCreatelbl1?'] = this.storeAccountCreatelbli9?.toMap();
data['storeAccountCreatelbl20'] = this.storeAccountCreatelbl20?.toMap();
data['storeAccountCreatelbl21'] = this.storeAccountCreatelbl21?.toMap();
data['storeAccountCreatelbl22'] = this.storeAccountCreatelbl2??.toMap();
data['storeAccountCreatelbl23'] = this.storeAccountCreatelbl23?.toMap();
data[''storeAccountCreatelbl24"] = this.storeAccountCreatelbl24?.toMap();
data['storeAccountCreatelbl25'] = this.storeAccountCreatelbl25?.toMap();
data['storeAccountCreatelbl26'] = this.storeAccountCreatelbl26?.toMap();
data['storeAccountCreatelbl27'] = this.storeAccountCreatelbl27?.toMap();
data['storeAccountloginldll'] = this.storeAccountloginlbll?.toMap();
data['storeAccountloginlbl2'] = this.storeAccountloginlbl??.toMap();
data['storeAccountloginlbl3°] = this.storeAccountloginlbl3?.toNap(); [
data[''storeAccountloginlblé"] = this.storeAccountloginlblé?.toNap();
data['storeAccountloginlbl5'] = this.storeAccountloginlbl5?.toMap();
data['storeAccountloginlblé'] = this.storeAccountloginlblé?.toNap();
data['storeForgotPasswordlbll'] = this.storeForgotPasswordLbl1?.toMap();
data[''storeForgotPasswordlbl2'] = this.storeForgotPasswordlbl??.toMap();
data *storeForgotPasswordlbl3"] = this.storeForgotPasswordlbl32.toMap();
data['storeForgotPasswordlbl4'] = this.storeForgotPasswordlbl4?.toMap();
data['storeForgotPasswordlbl5'] = this.storeForgotPasswordLlbl5?.toMap();
data['storeForgotPasswordLblé'] = this.storeForgotPassirordLblé?.toMap();
data[''storeChangePasswordlbll'] = this.storeChangePasswordlbl1?.toMap();
data['storeChangePasswordlbl2'] = this.storeChangePasswordlbl??.toMap();
data['storeChangePasswordLbl3'] = this.storeChangePasswordlbl3?.toMap();
data['storeChangePasswordlblé'] = this.storeChangePasswordlbl4?.toMap();
data['storeChangePasswordLbl5'] = this.storeChangePasswordLbl8?.toMap();
dataf*storeChangePasswordlblé'] = this.storeChangePasswordLblé?.toMap();
data['storeChangePasswordLbl7'] = this.storeChangePasswordLbl7?.toMap();
~  data['storeApprovelbll'] = this.storeApprovelbl1?.toMap(); - -
data['storeApprovelbl2'] = this.storeApprovelbl??.toMap(); x2
data['storeApprovelbl3'] = this.storeApprovelbl3?.toMap();
data['storeApprovelbl4'] = this.storeApprovelbl4?.toRap();
data['storeNavDrawerlbl1'] = this.storeNavDrawerLbl1?.toMap();
data['storeNavDrawerlbl2''] = this.storeNavDrauerlbl??.toMap();
data['storeNavDrawerlbl3'] = this.storeNavDrawerlbl3?.toMap();
data[''storeNavDrawerlbl4'] = this.storeNavDrawerlbl4?.toMap();
data['storeNavDrawerLbl5'] = this.storeNavDrawerLbl5? toMap();
data['storeNavDrawerlbl6'] = this.storeNavDrawerlbl6?.toMap();
data['storeNsvDrawerlbl7'] = this.storeNavDrawerLbl7?.toHap();
data['storeNavDrawerLbl8'] = this.storeNavDrawerlbl8?.toMap();
data['storeDashboardlbll'] = this.storeDashboardlbl1?.toMap();
data['storeDashboardlbl2'] = this.storeDashboardlbl??.toMap();
data['storeDashboardLbl3'] = this.storeDashboardlbl3?.toNap();
data['storeDashboardLbl4'] = this.storeDashhoardlbl4?.toMap();
data['storeDashboardLbl5'] = this.storeDashboardLbl52.toNap();
data['storeAccountSetuplbll"] = this.storeAccountSetuplbll?.toNap();
data['stareAccountSetuplol2'] = this.storeAccountSetuplbl??.toNap(); 2 Av
data[''storeAccountSetupldl3"] = this.storeAccountSetuplbl3?.toNap();
data['storeAccountSetuplbl4'] = this.storeAccountSetuplbl4?.toNap();
data[''storeAccountSetuplbl5°'] = this.storeAccountSetuplbl5?.toNap();
data['storeAccountSetuplbls"] = this.storeAccountSetuplblé?.toMap();
data['storeAccountSetuplbl7'] = this.storeAccountSetuplbl7?.toNap();
data['storeAccountSetuplbl8?'] = this.storeAccountSetuplbl8?.toNap();
data['storeAccountSetuplbl9'] = this.storeAccountSetuplbl92.toMap();
data['storeAccountSetuplbl10'] = this.storeAccountSetuplbl10?.toNap();
data['storeAccountSetuplblil'] = this.storeAccountSetuplblil?.toMap();
data['storeAccountSetuplbl12'] = this.storeAccountSetuplbli??.toMap();
data['storeAccountSetuplbll3''] = this.storeAccountSetuplbl13?.toMap();
data['storeAccountSetuplbl14'] = this.storeAccountSetuplbl14?.toMap();
data['storeAccountSetuplbli5'] = this.storeAccountSetuplbl15?.toNap();
data['storeAccountSetupDetailslbll'] =
this.storeAccountSetupDetailslbl1?.toMap();
data['storeAccountSetupDetailslbl2'] =
this.storeAccountSetupDetailslbl??.toNap();
data['storeAccountSetupDetailsLbl3'] =
this.storeAccountSetupDetailsLbl3?.toMap();
data['storeAccountSetupDetailsibls'] =
this.storeAccountSetupDetailslbl4?. toMap();
data['storeAccountSetupDetailslbl5'] =
this.storeAccountSetupDetailsLbl5?.toNap();
data['storeAccountSetupDetailsLblé'] =
this..storeAccountSetupDetailsLblé?.toMap();
data['storeAccountSetupDetailslbl?'] =
this.storeAccountSetupDetailsLbl7?.toNap();
data['storeAccountSetupDetailslbls'] =
this.storeAccountSetupDetailsLbl8?.toNap();
data['storeAccountSetupDetailslbly'] =
this.storeAccountSetupDetailslbl9?.toNap();
data['storeAccountSetupDetailslbl10'] =
this.storeAccountSetupDetailslbl10?,toMap();
data['storeAccountSetupDetailsiblll'] =
this.storeAccountSetupDetailslbl11?.toNap();
data['storeAccountSetupDetailslbll2'] =
this.storeAccountSetupDetailslbl1??.toMap();
data['storeAccountSetupDetailsibll3'] =
this.storeAccountSetupDetailslbll3?.toMap();
data['storeAccountSetupDetailsiblls'] =
this.storeAccountSetupDetailslbli4?.toMap();
data['storeAccountSetupDetailslblls'] =
this.storeAccountSetupDetailslblis?.toMap();
data[''storeAccountSetupDetailslblls'] =
this.storeAccountSetupDetailstblié?.toMap();
data['storeAccountSetupDetailslbll7'] =
this.storeAccountSetupDetailslbl17?.toNap();
this.storeAccountSetupDetailslbl18?.toMap();
this.storeAccountSetupDetailsLbl8?.toMap();
data['storeAccountSetupDetallslbl?'] =
this.storeAccountSetupDetailslbl192.toMap();
data[''storeAccountSetupDetailslbl20'] =
this.storeAccountSetupDetailstbl20?.toMap();
data['storeAccountSetupDetailsibl21'] =
this.storeAccountSetupDetailslbl21?.toMap();
data['storeAccountSetupDetailslbl22'] =
this.storeAccountSetupDetailslbl2??.toMap();
data['storeAccountSetupDetailsLbl23'] =
this.storeAccountSetupDetailslbl23?.toNap();
data['storeAccountSetupDetailslbl24'] =
this.storeAccountSetupDetailslbl24?.toMap();
data['storeAccountSetupDetailslbl2s'] =
this.storeAccountSetupDetailslbl252.toMap();
data['storeAccountSetupDetailsLbl2s'] =
this..storeAccountSetupDetailstbl26?.toMap();
data['storeAccountSetupDetailsibl27''] =
this.storeAccountSetupDetailslbl27?.toMap();
data['storeAccountSetupDetailslbl28'] =
this.storeAccountSetupDetailslbl28?.toMap();
data['storeAccountSetupDetailslbl29'] =
this.storeAccountSetupDetailslbl29?.toMap();
data['storeAccountSetupDetailslbl30'] =
this.storeAccountSetupDetailsLbl30?.toMap();
data['storeAccountSetupDetailslbl3l'] =
this.storeAccountSetupDetailslbl31?.toMap();
data['storeAccountSetupDetailslbl32'] =
this.storeAccountSetupDetailsLbl3??.toMap();
data['storeAccountSetupFoodlbll'] = this.storeAccountSetupFoodlbl1?.toMap();
data['storeAccountSetupFoodlbl2'] = this.storeAccountSetupFoodLbl??.toMap();
data['storeAccountSetupFoodLbl3'] = this.storeAccountSetupFoodLbl3?.toMap();
data['storeAccountSetupFoodLbl4'] = this.storeAccountSetupFoodLbl4?.toMap();
data['storeAccountSetupFoodlbl5'] = this.storeAccountSetupFoodLbl52.toMap();
data['storeAccountSetupFoodlbls'] = this.storeAccountSetupFoodLblé?.toMap();
data['storeAccountSetupFoodLbl7'] = this.storeAccountSetupFoodlbl7?.toMap();
data['storeAccountSetupFoodlbl8'] = this.storeAccountSetupFoodLbl8?.toMap();
data['storeAccountSetupFoodLbl9'] = this.storeAccountSetupFoodlbl9?.toMap();
' data['storeAccountSetupFoodLbl10''] =
this.storeAccountSetupFoodLbl10?.toMap();
data['storeAccountSetupFoodLblll'] =
this.storeAccountSetupFoodLbl112.toMap();
data['storeAccountSetupFoodlbl12'] =
this.storeAccountSetupFoodLbl1??.toMap();
data['storeAccountSetupFoodLbl13'] =
this.storeAccountSetupFoodLbl13?.telap();
data['storeAccountSetupFoodLbl14'] =
this.storeAccountSetupFoodlbl14?.toMap();
data['storeAccountSetupFoodlbl15'] =
this.storeAccountSetupFoodLbl152.toHap();
data['storeAccountSetupFoodlbl16''] =
this.storeAccountSetupFoodLbl16?.toMap();
data['storeAccountSetupFoodlbl17'] =
this.storeAccountSetupFoodLbl172.toMap();
data['storeAccountSetupFoodLbl18'] =
this.storeAccountSetupFoodLbl18?.toRap();
data['storeAccountSetupFoodlbl19'] =
this.storeAccountSetupFoodLbl19?.toMap();
data[''storeAccountSetupFoodlbl20'] =
this.storeAccountSetupFoodLbl20?.toMap();
data['storeAccountSetupFoodlbl21'] =
this.storeAccountSetupFoodLbl21?.toMap(); I
data['storeAccountSetupFoodLbl22'] =
this.storeAccountSetupFoodLbl2??.toMap();
data['storeAccountSetupSchedulelbll'] =
this.storeAccountSetupSchedulelbl1?,toMap();
data['storeAccountSetupSchedulelbl2'] =
this.storeAccountSetupSchedulelbl??.toMap();
data['storeAccountSetupSchedulelbl3'] =
this.storeAccountSetupSchedulelbl3?.toMap();
data['storeAccountSetupSchedulelbld'] =
this.storeAccountSetupSchedulelbl4?.toMap();
data['storeAccountSetupSchedulelblS'] =
this.storeAccountSetupSchedulelbl52.toMap();
data['storeAccountSetupSchedulelbls'] =
this.storeAccountSetupSchedulelblé?. toNap();
data['storeAccountSetupSchedulelbl?'] =
this.storeAccountSetupSchedulelbl7?.toMap();
data['storeAccountSetupSchedulelbls'] =
this.storeAccountSetupSchedulelbl8?.toMap();
data['storeAccountSetupSchedulelbl9'] =
this.storeAccountSetupSchedulelbl92.toMap();
data['storeAccountSetupSchedulelbl10'] =
this.storeAccountSetupSchedulelbl10?.toNap();
data['storeAccountSetupSchedulelblll'] =
this.storeAccountSetupSchedulelbl11?.toMap();
data['storeAccountSetuplearnlbll'] =
this.storeAccountSetuplearnlbll?.toBap();
data['storeAccountSetuplearnlbl2'] =
this.storeAccountSetuplearnlbl??.tolap();
data['storeAccountSetuplearnlbl3'] =
this.storeAccountSetuplearnlbl3?.toMap();
data['storeAccountSetupLearnlbl4'] =
this.storeAccountSetuplearnlbl4?. toMap();
data['storeAccountSetuplearnlbl5'] =
this.storeAccountSetuplearntbl5?.toRap();
data['storeAccountSetuplearnlblé'] =
this.storeAccountSetuplearnlbl6?.tolap();
data[''storeAccountSetupLearnlbl?'] =
data['storeAccountSetupDetailslbl28'] =
data[''storeAccountSetupDetailsLhbl29'] =
this.storeAccountSetuplearnLbl8?.toMap();
data['storeAccountSetuplearnlbl9'] =
this.storeAccountSetuplearnlbl9?.tolap();
data[''storeAccountSetuplearnlbl10'] =
this.storeAccountSetuplearnlbl10?.toMap();
data['storeAccountSetuplearnlbl1l'] =
this.storeAccountSetuplearnlbl11?.toMap();
data['storeAccountSetuplearnlbl12'] =
this.storeAccountSetupLearnlbli??.toMap();
data['storeAccountSetupLearnlbll3'] =
this.storeAccountSetupLearnlbl13?.toBap();
data['storeAccountSetupLearnlbl14'] =
this.storeAccountSetuplearnlbll4?.toNap();
data['storeAccountSetuplearnlbll5'] =
this.storeAccountSetuplearnlbl15?.toNap();
data['storeAccountSetuplearnlblls'] =
this.storeAccountSetuplearnlbl16?.toRap();
data 'storeAccountSetupVatLbli'] = this.storeAccountSetupVatlbll?.toMap();
data['storeAccountSetupVatlbl2"] = this.storsAccountSetupVatLbl??.toMap();
data 'storeAccountSetupVatlbl3'] = this.storeAccountSetupVatlbl3?.toMap();
data['storeAccountSetupVatlblé'] = this.storeAccountSetupVatlblé?. toMap();
' data[''storeAccountSetupVatlbl5'] = this.storsAccountSetupVatLbl5?.toMap();
data[*storeAccountSetupVatlbls'] = this.storeAccountSetupVatLblé?.toMap();
data['storeAccountSetupVatLbl7'] = this.storeAccountSdtupVatlbl7?. toMap();
data['storeAccountSetupVatLhl8'] = this.storeAccountSetupVatLbl8?.toMap();
data['storeAccountSetupVatLbl9'] = this.storeAccountSetupVatlbl9?.toMap();
data['storeDetailsibll'] = this.storeDetailsLbli?.toMap();
data['storeDetailsibl2'] = this.storeDetailsLbl??.toMap();
data['storeDetailslbl3'] = this.storeDetailsLbl3?2.toMap();
data[''storeDetailslbl4") = this.storeDetailsLbl4?.toMap(); [
data['storeDetailsidl5'] = this.storeDetailslbl5?.toMap();
'' data['userControllerlbl4'] = this.userControllerlblé?.toMap(); TT
data['vserControllerlbl5'] = this.userControllerLbl5?.toMap(); x2
data['userControllerlblé'] = this.userControllerlblé?.toMap();
data[''systeaCenericErrorldl1"]) = this.systemGenericErrorlbli?.toHap();
data[*payaentGatewaylbl1'] = this.paymentGatewayLbl1?.toHap();
data['paymentGatewayLbl2'] = this.paymentSatewaylLbl??.toMap();
data[''paymentCatewaylbl3'] = this.paymentCatewaylLbl3?.toHap();
return data;
}

class Translationlanguages {
String en;
String ge;

Translationlanguages({
this.en = '-No Content-',
this.ge = '-Na Content-*,
oH

    . factory Translationlanguages.fromdson(String str) =>
' Transtationlanguages.fromMap(json.decode(str));

String toJson() => json.encode(toMap());

factory TranslationLanguages.fromMap(Map<String, dynamic> json) =>
' TranslationLanguages(
en: json[*en"] ?? '-Ho Content-',
ge: json["ge"] ?? '-No Content-',


Map<String, dynamic> toMap() => {
"en": en,
ge": ge,
i };

String getTranslationByCode(String code) {
' 1f (code == 'ge') {
return this.ge;
} else if (code == 'en') {
}
}

return this.en;
3

class DeviceInfo {
String? deviceld;
ZR Av
class Translationlanguages {
this.deviceld,
this.ipAddress,
3H
}

"factory StoreWeeklySchedule. frondsan(String str) => 2 Av
this.storsAccountSetupFoodlb12??.toHap(); xa av
data['storeAccountSetupSchedulelbll'] =


data[''storeChangePasswordlbl4*'] = this.storeChangePasswordlbl4?.toNap();
data['storeChangePasswordlblS'] = this.storeChangsPasswordLbl5?.toMap(); [
data['storeChangePasswordlbls'] = this.storeChangePasswordLblé?.toMap();
data['storeChangePasswordLhl7'] = this.storeChangePasswordLbl7?.toMap();
! data['storeApprovelbll'] = this.storeApprovelbli?.toNan():
this.storeAccountSetupDetailslbl1?.toNap();
data[ 'storeAccountSetupDetailsibl2'] =
this.storeAccountSetupDetailslbl??.tolap();
data['storeAccountSetupDetailsibl12'] =
this.storeAccountSetupDetailslbll??.toMap(); [
data['storeAccountSetupDetailsilbli3'] =
this.storeAccountSetupDetailsLbll3?. toNap();
! data['storeAccountSetupDetailslblls'] =
data['storeAccountloginlblé"] = this.storeAccountLoginlblé? toNap(); ZR Av
data['storeAccountLoginlbl5'] = this.storeAccountloginlbl52.toNap();
data['storeAccountloginlblé"] = this.storeAccountloginlblé?.toMap();
BCCOUNTUNTAXLLOLY ZT IPaNSLalI0NLYNGUEges, TFOANAPL JSUN] "8CCOUNTUSTALLLDOLI J; ~~ —_
accountDetaillblé = Translationlanguages.fromMap(json['accountDetailldlé]); xz av
accountDetailProfilelbll =
Translationlanguages.froadap(json['accountDetailProfilelbll']));
accountDetailProfilelbl2 =
= oraervservetaillolly = I - h
Trans\ationlanguages.fromdap(json['orderUserDetaillbli0o']); Xz av
orderUserDetaillblll =
TWLOFTACCUVIILLI'SateLULLL = - 7 - - - TT - -
Translationtangvages.froadap(json['storeAccountCreatelbl12')); x2 av
TT datalloginknTerSCLB{1'] = this.logiREnterstLbLIZ.teMapl); — ~ - = - - - :
data['storeAccountSetuplbl12'] = this.storeAccountSetuplbl1??.toNap();
data['storeAccountSetuplbl13"] = this.storeAccountSetuplbl13?.toHap();
data['storeAccountSetuplbl14*'] = this.storeAccountSetuplbl14?.toNap();
this.storeAccountSetupDatailslbl??.toMap(); z2 ~v
this.storeAccountSetupFoodLbl132. toKap(); x2 ~~
data['storeAccountSetupSchedulelbll'] =
this.storeAccountSetupSchedulelbll?.toMap();
data['storeAccountSetupSchedulelbl2'] =
this.storeAccountSetuplearnlbll?.toHap();
storeAccountSetupFoodLbl18 = x2 ~~
storeAccountSetupFoodlblly =
TranslationLanguages.fromMap(json['storeAccountSetupFoodlbl19°]);
°  storeAccountSetuplearnlblis = - B
accountDetaillbll = Translationlonguages., fromMap(Json accountDetailLbll® IH xR Av
'' storeAccountSetupDetailstbl4 = oT TT oT )
Translationtanguagos.fromMap(json[*storeAccountSetupDetailslbls"]); x2
storeAccountSetupDetailsibls =
Translationlanguages.fromMap(json['storeAccountSetupDetailsihi5'']);
Translationlanguages.frosHap(json['storeAccountSetupDetailslbls']);
storeAccountSetupDetailsibl? =
storeAccountSetupDetailslbli? = ZR Av
Translationtanguages,frosdap(json['storeAccountSetupDetadlsibli?']);
'' storeAccountSetupDetailstbl32 = To
Translationlanguagos.fromMap(json['storeAccountSetupDetaitsibl32']); x
storeAccountSetupFoodlbll =
Translationtanguages.fromMap(json'storeAccountSetupFoodlbll']);
storeAccountSetupFoedlLbl2 =
storeAccountSetuplearniblin = v2 Av
TranslationLanguages.fromMap(jsonf'storeAccountSetypLearnlhl10°]));
Translationtanguagoes.fromMap(json['storeAccountSetupLearalblil"]));
storeAccountSetuplearnibll2 =
Trans\ationlLanguagos.fromMap(json['storeAccountSetupLearnlblis']); zZ2 Av
storeAccountSetupVatlbll =
~ TranslationlLanguagos.fronNap(json['storeAccountSetupVatLbls"]); v2 a
Translationtanguages.frosMap(fson]'storeAccountSetupVatlbl9"]));

data[*loginlbl3'] = this.loginlbl32.toHap(); 2 Av
data[*loginBSLb13'] = this LoginBSLELS?, tokap(): L222 Aw
{ data['loginBSLb12'] = this.loginBSLb1??.toHap(); 2 A
data['loginBSLHL3I'] = this.loginBSLb13?.toNap();
data['loginBSLb14'] = this.loginBSLb14?.toMap();
- DLUreNamY. ~ JOUN] "slurvnName § rf ~~, - -
storeAddress: json["storeAddress"] ?? '', 2 ~~
timelabel: json["timeLabelr") ?? '',
} ZR Av
this.storeAccountSetupFoodlbl2]l, ZR ~ v
this.storeAccountSetupFoodlbl22,
this.storeAccountSetupSchedulelbll,
- -
factory OrderFilter.fromMap(Map<Steing, dynamic> json) => OrderFiltar( x2 sv
TranslationLanguages? storeForgotPasswordLbl$;
TranslationLanguages? storeForgotPasswordLblé;
TranslationLanguages? storeChangePasswordlLbll;
TranslationlLanguages? storeChangePasswordlLbl3;
Translationlanguages? storeChangePasswordLblé; [
Translationlanguages? storeChangePasswordLbl$;
TranslationlLanguages? storeChangePasswordLblé;
TranslationLanguages? storeChangePasswordlbl?7;
TranslationLanguages? storeChangePasswordLbl?;
TranslationLanguages? storeAccountSetuplbls;
TranslationlLanguages? storeAccountSetuplblS;
Translationlanguages? storeAccountSetuplbls;
TranslationLanguages? storeAccountSetuplbl?;
Translationlanguages? storeAccountSetuplbly;
TranslationLanguages? storeAccountSetupLbl10;]
- this.protileMainlbie, - TT - - - }
TranslationLanguages? storeApprovelbl3;
TranslationLanguages? storeApprovelbls;
TranslationLanguages? storeAccountSetuplbdl3;
TranslationLanguages? storeAccountSetuplbls;
TranslationLanguages? storeAccountCreatelbl20; N 2 Av
TranslationlLanguages? searchFilterlblé; ZR Av
TranslationlLanguages? searchFilterlbl$;
Teanslationlanguages? storeForgotPasswordLblé; x2 av
Teranslationlanguages? storeChangePasswordLbll;
TranslationlLanguages? storeChangePasswordlbl3;
TranslationLanguages? storeChangePasswordlLbl4;
TranslationLanguages? storeChangePasswordLbl5;
TranslationLanguages? storeChangePasswordlbls;
TranslationLangtages? storeChangePasswordLbl7;
TranslationLanguages? storeAppravelbll;
TranslationLanguages? storeApprovelbl2;
TranslationLanguages? storeApprovelbl3;
Translationlanguages? storeForgotPasswordLbl5; I
TranslationLanguages? storeForgotPasswordlblé;
TranslationLanguages? storeChangePasswordlLbll;
this.orderStorelbl6,
this.orderStorelbl?,
this.storeAccountCreateldl2l,
this.storeAccountCreateldbl22,
"7 1ranstationtanguages.troaMap(json] 'storeAccountSetupLearalhly"]); z 2 no
storeAccountCreateldlll = ZR ~ v
Translationlanguages.fromdap(json['storeAccountCreatelbl13']);
orderUserDetaillbllo = ZR Av
Translationlanguagoes.fromMap(json'storeAccountSetupDetailsibli2']); z2 ~v
storeAccountSetupBetailslblll =
Translationlanguages.fromMap(json['storeAccountSetupDetailsibl13']);
storeAccountSetupDetailsiblid =
storeAccountSetupFoodlbl22 = £2 sv
storeAccountSetupVatlbll =
storeAccountSetuplearnlblln = v2 Av
TranslationLanguages.fronap(json'storeAccountSetupLearnlhli10°]);
storeAccountSetuplearniblll =
Translationlanguagoes.fromMap(ison['storeAccountSetuplearalblil'));
storeAccountSetuplearnibll2 =
Translationtanguages.fromMap(json['storeAccountSetuplearnlbli2']);
Bb ~ this.storeAccountSetupSchedulalb18?,toMap(); - CT - i
data['storeAccountSetupSchedulelbly'] =
this.storeAccountSetupSchedulelbl9?.toMap();
this.storeAccountSetupSchedulelbl102, toMap();
data['storeAccountSetupSchedulelblil'] =