import 'package:flutter_tutorial/clima/services/networking.dart';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = 'CAC82AF9-28AA-4C17-B6E8-1149882AC31F';

class CoinData {
  Future<dynamic> getCoinData(String assetIdBase, String assetIdQuote) {
    NetworkHelper networkHelper =
    NetworkHelper('$coinAPIURL/$assetIdBase/$assetIdQuote?apikey=$apiKey');
    // add delay to avoid limited api restriction
    return Future.delayed(Duration(milliseconds: 300)).then((_){
      return networkHelper.getData();
    });
  }

  Future<dynamic> getExchangeRates(String assetIdQuote) {
    Map<String, String> cryptoPrices = {};
    List<Future<dynamic>> futureCoinData = [];
    for (String assetIdBase in cryptoList) {
      futureCoinData.add(getCoinData(assetIdBase, assetIdQuote));
    }
    return Future.wait(futureCoinData).then((List responses) {
      for (var response in responses) {
        double price = response["rate"];
        cryptoPrices[response["asset_id_base"]] = price.toStringAsFixed(0);
      }
      return cryptoPrices;
    }).catchError((e) => print(e));
  }
}
