import 'package:fastapi_shop1/widget/currency.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final convertCurrency = NumberFormat.currency(locale: 'ID');

cardPropeties(int index, propItem) {
  return Expanded(
    flex: 4,
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            propItem[index].title!,
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Text('Rp.${propItem[index].harga}'),
              Text(convertCurrency.format(propItem[index].harga)),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_border),
              )
            ],
          ),
        ],
      ),
    ),
  );
}

cardImage(int index, propItem) {
  return Expanded(
    flex: 6,
    child: Image.network(
      propItem[index].gambar.toString(),
      fit: BoxFit.cover,
      width: double.infinity,
    ),
  );
}
