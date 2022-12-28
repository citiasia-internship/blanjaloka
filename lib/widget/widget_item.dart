
import 'package:flutter/material.dart';
import '../page/detail_screen.dart';
import '../theme/theme.dart';

Widget buildContentPendanaan(
{
  required BuildContext context,
  // BussinesSoon bussinesSoon,
  required String imgUrl,
  required String title,
  required String  price,
  required int percenBussines,
  required double valueBussines
}) {
  return GestureDetector(
    onTap: (){
      Navigator.pushNamed(context, DetailScreen.routeName) ;
    },
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
                const EdgeInsets.symmetric(vertical: 5, horizontal: 9.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: titleItemCard , maxLines: 1 , overflow: TextOverflow.ellipsis,),
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
                      price,
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

Widget buildContentSegera( {
  required BuildContext context,
  required String imgUrl,
  required String title,
  required String  price,
}) {
  return GestureDetector(
    onTap: (){
      Navigator.pushNamed(context, DetailScreen.routeName) ;
    },
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
                    Text(title, style: titleItemCard,maxLines: 1 , overflow: TextOverflow.ellipsis,),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('Nilai Bisnis', style: businessPriceItemCard),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      price,
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