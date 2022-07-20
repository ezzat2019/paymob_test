import 'package:flutter/material.dart';
import 'package:paymob_test/app/constant.dart';
import 'package:paymob_test/app/network/dio_helper.dart';
import 'package:paymob_test/data/models/paymob/paymob_order_model.dart';
import 'package:paymob_test/data/repo/paymob/paymob_repo.dart';
import 'package:paymob_test/ui/pay_mob_web_view.dart';

void main() {
 DioHelper();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PaymobRepo paymobRepo=PaymobRepo();

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          PaymobOrderModel paymobOrderModel=PaymobOrderModel(authToken: tokenAuth,
          deliveryNeeded: "false",
          amountCents: "10000",
          currency: "EGP",items: []);

          paymobRepo.paymobFinalTokrn(paymobOrderModel).then((value) {
            if (value.statusCode!>200) {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => PayMobWebView(),));
            }
          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
