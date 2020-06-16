import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/bitcoin-ticker/components/crypto_card.dart';
import 'package:flutter_tutorial/bitcoin-ticker/components/picker.dart';
import 'package:flutter_tutorial/bitcoin-ticker/model/coin.dart';
import 'package:flutter_tutorial/styles.dart';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = currenciesList[0];
  Map<String, String> coinValues = {};
  bool isWaiting = false;
  Timer timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    updateExchangeRates(selectedCurrency);
  }

  void updateExchangeRates(String selectedCurrency) {
    isWaiting = true;

    // update currency name
    setState(() {
      this.selectedCurrency = selectedCurrency;
    });

    // update currency rate
    if (timer != null) timer.cancel();
    timer = Timer(Duration(seconds: 1), () {
      CoinData().getExchangeRates(selectedCurrency).then((data) {
        isWaiting = false;
        setState(() {
          coinValues = data;
        });
      });
    });
  }

  Column makeCards() {
    List<CryptoCard> cryptoCards = [];
    for (String crypto in cryptoList) {
      cryptoCards.add(
        CryptoCard(
          cryptoCurrency: crypto,
          selectedCurrency: selectedCurrency,
          value: isWaiting || coinValues == null ? '?' : coinValues[crypto],
        ),
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: cryptoCards,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Styles.getCustomDarkTheme(context),
      child: Scaffold(
        appBar: AppBar(
          title: Text('🤑  Coin Ticker'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            makeCards(),
            Container(
              height: 100.0,
              alignment: Alignment.center,
              padding: EdgeInsets.only(bottom: 0.0),
              color: Styles.accentColor,
              child: Picker(callback: updateExchangeRates),
            ),
          ],
        ),
      ),
    );
  }
}
