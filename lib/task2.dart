import 'package:flutter/material.dart';

class CounterDiscount extends StatefulWidget {
  @override
  _CounterDiscountState createState() => _CounterDiscountState();
}

class _CounterDiscountState extends State<CounterDiscount> {
  double _offerPercent = 0;
  double _productPrice = 25;

  void _incrementPercent() {
    setState(() {
      if (_offerPercent < 100.0) {
        _offerPercent++;
        _calcPriceAfterSale();
      }
    });
  }

  void _decrementPercent() {
    setState(() {
      if (_offerPercent > 0.0) {
        _offerPercent--;
        _calcPriceAfterSale();
      }
    });
  }

  double _calcPriceAfterSale ()=> _productPrice * (1 - _offerPercent / 100);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("my Title"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(10.0),
              child: RichText(
                text: TextSpan(
                  text: "Current Product Price ",
                  style: TextStyle(color: Colors.black87,fontSize: 24),
                  children: <TextSpan>[
                    TextSpan(text: '$_productPrice EG', style: TextStyle(color: Colors.red,fontSize: 24)),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text("Set offer to the product",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24)),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Container(
                  margin: const EdgeInsets.all(16.0),
                  child: RaisedButton(
                      child: Text("+",style:TextStyle(fontSize: 48,fontStyle: FontStyle.normal)),
                      color: Colors.blue,
                      onPressed: _incrementPercent),
                ),
                Text("$_offerPercent%",style: TextStyle(fontSize: 24,fontStyle: FontStyle.normal,color: Colors.red)),
                Container(
                  margin: const EdgeInsets.all(16.0),
                  child: RaisedButton(
                      child: Text("-",style: TextStyle(fontSize: 48,fontStyle: FontStyle.normal)),
                      color: Colors.blue,
                      onPressed: _decrementPercent),
                )
              ],
            ),
            RichText(
              text: TextSpan(
                text: "Price After apply offer : ",
                style: TextStyle(color: Colors.black87,fontSize: 24),
                children: <TextSpan>[
                  TextSpan(text: '${_calcPriceAfterSale()} EG', style: TextStyle(color: Colors.red,fontSize: 24)),
                ],
              ),
            ),

          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
