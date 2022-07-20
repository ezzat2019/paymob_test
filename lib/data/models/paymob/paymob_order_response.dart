class PaymobOrderResponse {
  PaymobOrderResponse({
      this.id, 
      this.createdAt, 
      this.deliveryNeeded, 
      this.merchant, 
      this.collector, 
      this.amountCents, 
      this.shippingData, 
      this.currency, 
      this.isPaymentLocked, 
      this.merchantOrderId, 
      this.walletNotification, 
      this.paidAmountCents, 
      this.items,});

  PaymobOrderResponse.fromJson(dynamic json) {
    id = json['id'];
    createdAt = json['created_at'];
    deliveryNeeded = json['delivery_needed'].toString();
    merchant = json['merchant'] != null ? Merchant.fromJson(json['merchant']) : null;
    collector = json['collector'];
    amountCents = json['amount_cents'];
    shippingData = json['shipping_data'] != null ? ShippingData.fromJson(json['shipping_data']) : null;
    currency = json['currency'];
    isPaymentLocked = json['is_payment_locked'].toString();
    merchantOrderId = json['merchant_order_id'];
    walletNotification = json['wallet_notification'];
    paidAmountCents = json['paid_amount_cents'];
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
  }
  int? id;
  String? createdAt;
  String? deliveryNeeded;
  Merchant? merchant;
  String? collector;
  int? amountCents;
  ShippingData? shippingData;
  String? currency;
  String? isPaymentLocked;
  String? merchantOrderId;
  String? walletNotification;
  int? paidAmountCents;
  List<Items>? items;
PaymobOrderResponse copyWith({  int? id,
  String? createdAt,
  String? deliveryNeeded,
  Merchant? merchant,
  String? collector,
  int? amountCents,
  ShippingData? shippingData,
  String? currency,
  String? isPaymentLocked,
  String? merchantOrderId,
  String? walletNotification,
  int? paidAmountCents,
  List<Items>? items,
}) => PaymobOrderResponse(  id: id ?? this.id,
  createdAt: createdAt ?? this.createdAt,
  deliveryNeeded: deliveryNeeded ?? this.deliveryNeeded,
  merchant: merchant ?? this.merchant,
  collector: collector ?? this.collector,
  amountCents: amountCents ?? this.amountCents,
  shippingData: shippingData ?? this.shippingData,
  currency: currency ?? this.currency,
  isPaymentLocked: isPaymentLocked ?? this.isPaymentLocked,
  merchantOrderId: merchantOrderId ?? this.merchantOrderId,
  walletNotification: walletNotification ?? this.walletNotification,
  paidAmountCents: paidAmountCents ?? this.paidAmountCents,
  items: items ?? this.items,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['created_at'] = createdAt;
    map['delivery_needed'] = deliveryNeeded;
    if (merchant != null) {
      map['merchant'] = merchant?.toJson();
    }
    map['collector'] = collector;
    map['amount_cents'] = amountCents;
    if (shippingData != null) {
      map['shipping_data'] = shippingData?.toJson();
    }
    map['currency'] = currency;
    map['is_payment_locked'] = isPaymentLocked;
    map['merchant_order_id'] = merchantOrderId;
    map['wallet_notification'] = walletNotification;
    map['paid_amount_cents'] = paidAmountCents;
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

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

class ShippingData {
  ShippingData({
      this.id, 
      this.firstName, 
      this.lastName, 
      this.street, 
      this.building, 
      this.floor, 
      this.apartment, 
      this.city, 
      this.state, 
      this.country, 
      this.email, 
      this.phoneNumber, 
      this.postalCode, 
      this.extraDescription, 
      this.shippingMethod, 
      this.orderId, 
      this.order,});

  ShippingData.fromJson(dynamic json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    street = json['street'];
    building = json['building'];
    floor = json['floor'];
    apartment = json['apartment'];
    city = json['city'];
    state = json['state'];
    country = json['country'];
    email = json['email'];
    phoneNumber = json['phone_number'];
    postalCode = json['postal_code'];
    extraDescription = json['extra_description'];
    shippingMethod = json['shipping_method'];
    orderId = json['order_id'];
    order = json['order'];
  }
  int? id;
  String? firstName;
  String? lastName;
  String? street;
  String? building;
  String? floor;
  String? apartment;
  String? city;
  String? state;
  String? country;
  String? email;
  String? phoneNumber;
  String? postalCode;
  String? extraDescription;
  String? shippingMethod;
  int? orderId;
  int? order;
ShippingData copyWith({  int? id,
  String? firstName,
  String? lastName,
  String? street,
  String? building,
  String? floor,
  String? apartment,
  String? city,
  String? state,
  String? country,
  String? email,
  String? phoneNumber,
  String? postalCode,
  String? extraDescription,
  String? shippingMethod,
  int? orderId,
  int? order,
}) => ShippingData(  id: id ?? this.id,
  firstName: firstName ?? this.firstName,
  lastName: lastName ?? this.lastName,
  street: street ?? this.street,
  building: building ?? this.building,
  floor: floor ?? this.floor,
  apartment: apartment ?? this.apartment,
  city: city ?? this.city,
  state: state ?? this.state,
  country: country ?? this.country,
  email: email ?? this.email,
  phoneNumber: phoneNumber ?? this.phoneNumber,
  postalCode: postalCode ?? this.postalCode,
  extraDescription: extraDescription ?? this.extraDescription,
  shippingMethod: shippingMethod ?? this.shippingMethod,
  orderId: orderId ?? this.orderId,
  order: order ?? this.order,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['first_name'] = firstName;
    map['last_name'] = lastName;
    map['street'] = street;
    map['building'] = building;
    map['floor'] = floor;
    map['apartment'] = apartment;
    map['city'] = city;
    map['state'] = state;
    map['country'] = country;
    map['email'] = email;
    map['phone_number'] = phoneNumber;
    map['postal_code'] = postalCode;
    map['extra_description'] = extraDescription;
    map['shipping_method'] = shippingMethod;
    map['order_id'] = orderId;
    map['order'] = order;
    return map;
  }

}

class Merchant {
  Merchant({
      this.id, 
      this.createdAt, 
      this.phones, 
      this.companyEmails, 
      this.companyName, 
      this.state, 
      this.country, 
      this.city, 
      this.postalCode, 
      this.street,});

  Merchant.fromJson(dynamic json) {
    id = json['id'];
    createdAt = json['created_at'];
    phones = json['phones'] != null ? json['phones'].cast<String>() : [];
    companyEmails = json['company_emails'] != null ? json['company_emails'].cast<String>() : [];
    companyName = json['company_name'];
    state = json['state'];
    country = json['country'];
    city = json['city'];
    postalCode = json['postal_code'];
    street = json['street'];
  }
  int? id;
  String? createdAt;
  List<String>? phones;
  List<String>? companyEmails;
  String? companyName;
  String? state;
  String? country;
  String? city;
  String? postalCode;
  String? street;
Merchant copyWith({  int? id,
  String? createdAt,
  List<String>? phones,
  List<String>? companyEmails,
  String? companyName,
  String? state,
  String? country,
  String? city,
  String? postalCode,
  String? street,
}) => Merchant(  id: id ?? this.id,
  createdAt: createdAt ?? this.createdAt,
  phones: phones ?? this.phones,
  companyEmails: companyEmails ?? this.companyEmails,
  companyName: companyName ?? this.companyName,
  state: state ?? this.state,
  country: country ?? this.country,
  city: city ?? this.city,
  postalCode: postalCode ?? this.postalCode,
  street: street ?? this.street,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['created_at'] = createdAt;
    map['phones'] = phones;
    map['company_emails'] = companyEmails;
    map['company_name'] = companyName;
    map['state'] = state;
    map['country'] = country;
    map['city'] = city;
    map['postal_code'] = postalCode;
    map['street'] = street;
    return map;
  }

}