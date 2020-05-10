import 'package:flutter/material.dart';
import 'dart:async';

import 'package:mpesa_flutter_plugin/mpesa_flutter_plugin.dart'; //Import the plugin
//import './global_keys.dart';

void main() {
  /*Set Consumer credentials before initializing the payment.
    You can get  them from https://developer.safaricom.co.ke/ by creating
    an account and an app.
     */
  // MpesaFlutterPlugin.setConsumerKey(mConsumerKey);
  // MpesaFlutterPlugin.setConsumerSecret(mConsumerSecret);

  runApp(GiveOnline());
}

class GiveOnline extends StatefulWidget {
  static const String id = 'give_online_screen';
  @override
  _GiveOnlineState createState() => _GiveOnlineState();
}

class _GiveOnlineState extends State<GiveOnline> {
  Future<void> startCheckout({String userPhone, double amount}) async {
    //Preferably expect 'dynamic', response type varies a lot!
    dynamic transactionInitialisation;
    //Better wrap in a try-catch for lots of reasons.
    try {
      //Run it
      transactionInitialisation =
          await MpesaFlutterPlugin.initializeMpesaSTKPush(
              businessShortCode: "174379",
              transactionType: TransactionType.CustomerPayBillOnline,
              amount: amount,
              partyA: userPhone,
              partyB: "174379",
              callBackURL: Uri(scheme: "https", host : "my-app.herokuapp.com", path: "/callback"),
              accountReference: "shoe",
              phoneNumber: "254720033411",
              baseUri: Uri(scheme: "https", host: "sandbox.safaricom.co.ke"),
              transactionDesc: "purchase",
              passKey: "mPasskey"
              );

      print("TRANSACTION RESULT: " + transactionInitialisation.toString());

      /*Update your db with the init data received from initialization response,
      * Remaining bit will be sent via callback url*/
      return transactionInitialisation;
    } catch (e) {
      //For now, console might be useful
      print("CAUGHT EXCEPTION: " + e.toString());
    }
  }

  List<Map<String, dynamic>> itemsOnSale = [
    {
      "image": "image/shoe.jpg",
      "itemName": "Breathable Oxford Casual Shoes",
      "price": 1.0
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.brown[450], primarySwatch: Colors.brown),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mpesa Payment plugin'),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 4.0,
              child: Container(
                decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.brown),
                height: MediaQuery.of(context).size.height * 0.35,
                //color: Colors.brown,
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Image.asset(
                        itemsOnSale[index]["image"],
                        fit: BoxFit.cover,
                      ),
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.width * 0.95,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width*0.45,
                          child: Text(
                            itemsOnSale[index]["itemName"],
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 14.0, color: Colors.black),
                          ),
                        ),
                        Text(
                          "Ksh. " + itemsOnSale[index]["price"].toString(),
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            onPressed: () {
                              startCheckout(
                                  userPhone: "254710529574",
                                  amount: itemsOnSale[index]["price"]);
                            },
                            child: Text("Checkout"))
                      ],
                    )
                  ],
                ),
              ),
            );
          },
          itemCount: itemsOnSale.length,
        ),
      ),
    );
  }
}