import 'package:intl/intl.dart';

class CurrencyFormat{
  static String convertToIdn(int digit ){
    NumberFormat currencyFormatter = NumberFormat.currency(
      locale: 'id' ,
      symbol:  'Rp '
    )  ;
    return currencyFormatter.format(digit) ;
  }
}