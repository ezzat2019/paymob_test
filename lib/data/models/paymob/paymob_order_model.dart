
class PaymobOrderModel {
  PaymobOrderModel({
      this.authToken, 
      this.deliveryNeeded, 
      this.amountCents, 
      this.currency,
      this.items, 
     });

  PaymobOrderModel.fromJson(dynamic json) {
    authToken = json['auth_token'];
    deliveryNeeded = json['delivery_needed'];
    amountCents = json['amount_cents'];
    currency = json['currency'];
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
  }
  String? authToken;
  String? deliveryNeeded;
  String? amountCents;
  String? currency;

  List<Items>? items;


PaymobOrderModel copyWith({  String? authToken,
  String? deliveryNeeded,
  String? amountCents,
  String? currency,
  int? merchantOrderId,
  List<Items>? items,
  ShippingData? shippingData,
  ShippingDetails? shippingDetails,
}) => PaymobOrderModel(  authToken: authToken ?? this.authToken,
  deliveryNeeded: deliveryNeeded ?? this.deliveryNeeded,
  amountCents: amountCents ?? this.amountCents,
  currency: currency ?? this.currency,
  items: items ?? this.items,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['auth_token'] = authToken;
    map['delivery_needed'] = deliveryNeeded;
    map['amount_cents'] = amountCents;
    map['currency'] = currency;

    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class ShippingDetails {
  ShippingDetails({
      this.notes, 
      this.numberOfPackages, 
      this.weight, 
      this.weightUnit, 
      this.length, 
      this.width, 
      this.height, 
      this.contents,});

  ShippingDetails.fromJson(dynamic json) {
    notes = json['notes'];
    numberOfPackages = json['number_of_packages'];
    weight = json['weight'];
    weightUnit = json['weight_unit'];
    length = json['length'];
    width = json['width'];
    height = json['height'];
    contents = json['contents'];
  }
  String? notes;
  int? numberOfPackages;
  int? weight;
  String? weightUnit;
  int? length;
  int? width;
  int? height;
  String? contents;
ShippingDetails copyWith({  String? notes,
  int? numberOfPackages,
  int? weight,
  String? weightUnit,
  int? length,
  int? width,
  int? height,
  String? contents,
}) => ShippingDetails(  notes: notes ?? this.notes,
  numberOfPackages: numberOfPackages ?? this.numberOfPackages,
  weight: weight ?? this.weight,
  weightUnit: weightUnit ?? this.weightUnit,
  length: length ?? this.length,
  width: width ?? this.width,
  height: height ?? this.height,
  contents: contents ?? this.contents,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['notes'] = notes;
    map['number_of_packages'] = numberOfPackages;
    map['weight'] = weight;
    map['weight_unit'] = weightUnit;
    map['length'] = length;
    map['width'] = width;
    map['height'] = height;
    map['contents'] = contents;
    return map;
  }

}

/// apartment : "803"
/// email : "claudette09@exa.com"
/// floor : "42"
/// first_name : "Clifford"
/// street : "Ethan Land"
/// building : "8028"
/// phone_number : "+86(8)9135210487"
/// postal_code : "01898"
/// extra_description : "8 Ram , 128 Giga"
/// city : "Jaskolskiburgh"
/// country : "CR"
/// last_name : "Nicolas"
/// state : "Utah"

class ShippingData {
  ShippingData({
      this.apartment, 
      this.email, 
      this.floor, 
      this.firstName, 
      this.street, 
      this.building, 
      this.phoneNumber, 
      this.postalCode, 
      this.extraDescription, 
      this.city, 
      this.country, 
      this.lastName, 
      this.state,});

  ShippingData.fromJson(dynamic json) {
    apartment = json['apartment'];
    email = json['email'];
    floor = json['floor'];
    firstName = json['first_name'];
    street = json['street'];
    building = json['building'];
    phoneNumber = json['phone_number'];
    postalCode = json['postal_code'];
    extraDescription = json['extra_description'];
    city = json['city'];
    country = json['country'];
    lastName = json['last_name'];
    state = json['state'];
  }
  String? apartment;
  String? email;
  String? floor;
  String? firstName;
  String? street;
  String? building;
  String? phoneNumber;
  String? postalCode;
  String? extraDescription;
  String? city;
  String? country;
  String? lastName;
  String? state;
ShippingData copyWith({  String? apartment,
  String? email,
  String? floor,
  String? firstName,
  String? street,
  String? building,
  String? phoneNumber,
  String? postalCode,
  String? extraDescription,
  String? city,
  String? country,
  String? lastName,
  String? state,
}) => ShippingData(  apartment: apartment ?? this.apartment,
  email: email ?? this.email,
  floor: floor ?? this.floor,
  firstName: firstName ?? this.firstName,
  street: street ?? this.street,
  building: building ?? this.building,
  phoneNumber: phoneNumber ?? this.phoneNumber,
  postalCode: postalCode ?? this.postalCode,
  extraDescription: extraDescription ?? this.extraDescription,
  city: city ?? this.city,
  country: country ?? this.country,
  lastName: lastName ?? this.lastName,
  state: state ?? this.state,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['apartment'] = apartment;
    map['email'] = email;
    map['floor'] = floor;
    map['first_name'] = firstName;
    map['street'] = street;
    map['building'] = building;
    map['phone_number'] = phoneNumber;
    map['postal_code'] = postalCode;
    map['extra_description'] = extraDescription;
    map['city'] = city;
    map['country'] = country;
    map['last_name'] = lastName;
    map['state'] = state;
    return map;
  }

}

/// name : "ASC1515"
/// amount_cents : "500000"
/// description : "Smart Watch"
/// quantity : "1"

class Items {
  Items({
      this.name, 
      this.amountCents, 
      this.description, 
      this.quantity,});

  Items.fromJson(dynamic json) {
    name = json['name'];
    amountCents = json['amount_cents'];
    description = json['description'];
    quantity = json['quantity'];
  }
  String? name;
  String? amountCents;
  String? description;
  String? quantity;
Items copyWith({  String? name,
  String? amountCents,
  String? description,
  String? quantity,
}) => Items(  name: name ?? this.name,
  amountCents: amountCents ?? this.amountCents,
  description: description ?? this.description,
  quantity: quantity ?? this.quantity,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['amount_cents'] = amountCents;
    map['description'] = description;
    map['quantity'] = quantity;
    return map;
  }

}