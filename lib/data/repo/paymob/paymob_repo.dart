import 'package:dio/dio.dart';
import 'package:paymob_test/app/constant.dart';
import 'package:paymob_test/app/network/dio_helper.dart';
import 'package:paymob_test/data/models/paymob/paymob_order_response.dart';

import '../../models/paymob/paymob_final_tokken_request.dart';
import '../../models/paymob/paymob_order_model.dart';

class PaymobRepo{

  Future<Response> _paymobAuthRequest()async{
   return await DioHelper.dio!.post(PAYMOB_AUTH,data: {
      "api_key":PAYMOB_API_KEY
    });
  }
  Future<Response> _paymobOrderRequest(PaymobOrderModel paymobOrderModel)async{
    var authRes=await _paymobAuthRequest();
     tokenAuth=authRes.data["token"];
    paymobOrderModel.authToken=tokenAuth;
    return await DioHelper.dio!.post(PAYMOB_ORDER,data: paymobOrderModel.toJson());
  }
  Future<Response> paymobFinalTokrn(PaymobOrderModel paymobOrderModel)async{
    var res=await _paymobOrderRequest(paymobOrderModel);
    PaymobOrderResponse paymobOrderResponse=PaymobOrderResponse.fromJson(res.data);
    PaymobFinalTokkenRequest paymobFinalTokkenRequest=PaymobFinalTokkenRequest(
      authToken: tokenAuth,amountCents: paymobOrderResponse.amountCents.toString(),
      expiration:3600,orderId: paymobOrderResponse.id.toString(),
      billingData: BillingData(
        apartment: "NA",
        email: "e@e.com",
        floor: "NA",
        firstName: "ezzat",
        street: "NA",
        building: "NA",
        phoneNumber: "01144614303",
        shippingMethod: "NA",
        postalCode: "NA",city: "cairo",
        country: "eg",
        lastName: "mohamed",
        state: "NA"
      ),
      currency: "EGP",
      integrationId: IntegrationIdVisa

    );
    var res2= await DioHelper.dio!.post(PAYMOB_PAY_KEY,data: paymobFinalTokkenRequest.toJson());
    tokenFinal=res2.data["token"];
    return res2;
  }

}