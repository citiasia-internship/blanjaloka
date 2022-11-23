import 'package:flutter/material.dart';

import '../constants/currency_format.dart';
import '../page/detail_screen.dart';
import '../theme/theme.dart';

Widget buildContentPendanaan(
    BuildContext context,
    String imgUrl,
    String title,
    int  price,
    int percenBussines,
    double valueBussines) {
  return GestureDetector(
    onTap: () => Navigator.pushNamed(context, DetailScreen.routeName),
    child: Container(
      height: 200,
      width: 149,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 2,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8), topRight: Radius.circular(8)),
              child: Image.network(
                imgUrl,
                height: 80,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            // detail dari item
            Expanded(
              child: Container(
                padding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 9.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: titleItemCard),
                    SizedBox(height: 10),
                    LinearProgressIndicator(
                      backgroundColor: progressGrey,
                      valueColor: const AlwaysStoppedAnimation<Color>(
                          Color(0xff398AB9)),
                      value: valueBussines,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Nilai Bisnis', style: businessPriceItemCard),
                          Text(
                            '$percenBussines %',
                            style: businessPriceItemCard,
                          )
                        ]),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      CurrencyFormat.convertToIdn(price),
                      style: priceItemCard,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}

Widget buildContentSegera(
    BuildContext context,
    String imgUrl,
    String title,
    int  price,) {
  return GestureDetector(
    onTap: () => Navigator.pushNamed(context, DetailScreen.routeName),
    child: Container(
      height: 200,
      width: 149,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 2,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8), topRight: Radius.circular(8)),
              child: Image.network(
                imgUrl,
                height: 80,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            // detail dari item
            Expanded(
              child: Container(
                padding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 9.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: titleItemCard),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('Nilai Bisnis', style: businessPriceItemCard),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      CurrencyFormat.convertToIdn(price),
                      style: priceItemCard,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}