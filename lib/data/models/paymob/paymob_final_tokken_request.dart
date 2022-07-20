class PaymobFinalTokkenRequest {
  PaymobFinalTokkenRequest({
      this.authToken, 
      this.amountCents, 
      this.expiration, 
      this.orderId, 
      this.billingData, 
      this.currency, 
      this.integrationId,});

  PaymobFinalTokkenRequest.fromJson(dynamic json) {
    authToken = json['auth_token'];
    amountCents = json['amount_cents'];
    expiration = json['expiration'];
    orderId = json['order_id'];
    billingData = json['billing_data'] != null ? BillingData.fromJson(json['billing_data']) : null;
    currency = json['currency'];
    integrationId = json['integration_id'];

  }
  String? authToken;
  String? amountCents;
  int? expiration;
  String? orderId;
  BillingData? billingData;
  String? currency;
  int? integrationId;

PaymobFinalTokkenRequest copyWith({  String? authToken,
  String? amountCents,
  int? expiration,
  String? orderId,
  BillingData? billingData,
  String? currency,
  int? integrationId,

}) => PaymobFinalTokkenRequest(  authToken: authToken ?? this.authToken,
  amountCents: amountCents ?? this.amountCents,
  expiration: expiration ?? this.expiration,
  orderId: orderId ?? this.orderId,
  billingData: billingData ?? this.billingData,
  currency: currency ?? this.currency,
  integrationId: integrationId ?? this.integrationId,

);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['auth_token'] = authToken;
    map['amount_cents'] = amountCents;
    map['expiration'] = expiration;
    map['order_id'] = orderId;
    if (billingData != null) {
      map['billing_data'] = billingData?.toJson();
    }
    map['currency'] = currency;
    map['integration_id'] = integrationId;

    return map;
  }

}

class BillingData {
  BillingData({
      this.apartment, 
      this.email, 
      this.floor, 
      this.firstName, 
      this.street, 
      this.building, 
      this.phoneNumber, 
      this.shippingMethod, 
      this.postalCode, 
      this.city, 
      this.country, 
      this.lastName, 
      this.state,});

  BillingData.fromJson(dynamic json) {
    apartment = json['apartment'];
    email = json['email'];
    floor = json['floor'];
    firstName = json['first_name'];
    street = json['street'];
    building = json['building'];
    phoneNumber = json['phone_number'];
    shippingMethod = json['shipping_method'];
    postalCode = json['postal_code'];
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
  String? shippingMethod;
  String? postalCode;
  String? city;
  String? country;
  String? lastName;
  String? state;
BillingData copyWith({  String? apartment,
  String? email,
  String? floor,
  String? firstName,
  String? street,
  String? building,
  String? phoneNumber,
  String? shippingMethod,
  String? postalCode,
  String? city,
  String? country,
  String? lastName,
  String? state,
}) => BillingData(  apartment: apartment ?? this.apartment,
  email: email ?? this.email,
  floor: floor ?? this.floor,
  firstName: firstName ?? this.firstName,
  street: street ?? this.street,
  building: building ?? this.building,
  phoneNumber: phoneNumber ?? this.phoneNumber,
  shippingMethod: shippingMethod ?? this.shippingMethod,
  postalCode: postalCode ?? this.postalCode,
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
    map['shipping_method'] = shippingMethod;
    map['postal_code'] = postalCode;
    map['city'] = city;
    map['country'] = country;
    map['last_name'] = lastName;
    map['state'] = state;
    return map;
  }

}