import 'package:fastapi_shop1/configs/router.dart';
import 'package:fastapi_shop1/controller/api.dart';
import 'package:fastapi_shop1/model/model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

buildTitlePage(context) {
  return Container(
    alignment: Alignment.topLeft,
    padding: EdgeInsets.symmetric(vertical: 20),
    child: Text(
      'Discover our exclusive deals',
      style: Theme.of(context).textTheme.headline1,
    ),
  );
}

class ItemList extends StatefulWidget {
  const ItemList({Key? key}) : super(key: key);

  @override
  _ItemListState createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ShopModel>>(
      future: fetchItem(http.Client()),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ItemSatuan(propItem: snapshot.data!);
        } else if (snapshot.hasError) {
          return Center(
            child: Text("No Internet Connection"),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}

class ItemSatuan extends StatelessWidget {
  const ItemSatuan({
    Key? key,
    required this.propItem,
  }) : super(key: key);

  final List<ShopModel> propItem;

  handleFungsiNavigasi(context, title, harga, gambar, deskripsi) {
    Navigator.pushNamed(
      context,
      itemSingleRoute,
      arguments: [
        title,
        harga,
        gambar,
        deskripsi,
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
        ),
        itemCount: propItem.length,
        itemBuilder: (BuildContext context, int index) {
          return buildCard(context, index);
        },
      ),
    );
  }

  buildCard(BuildContext context, int index) {
    var buildCardImage = cardImage(index, propItem);
    var buildDescription = cardPropeties(index, propItem, context);
    return Card(
      elevation: 2,
      //TODO : NOTE => Pindahin ke theme data nih
      shadowColor: Colors.white,
      margin: EdgeInsets.all(5),
      child: InkWell(
        onTap: () {
          handleFungsiNavigasi(
            context,
            propItem[index].title,
            propItem[index].harga,
            propItem[index].gambar,
            propItem[index].deskripsi,
          );
        },
        splashColor: Colors.purple,
        child: Column(
          children: [
            buildCardImage,
            buildDescription,
          ],
        ),
      ),
    );
  }
}

cardImage(int index, propItem) {
  return Expanded(
    flex: 3,
    child: Image.network(
      propItem[index].gambar.toString(),
      fit: BoxFit.cover,
      width: double.infinity,
    ),
  );
}

//Untuk convert currency 10000 => IDR10.000,00
final convertCurrency = NumberFormat.currency(locale: 'ID');

cardPropeties(int index, dynamic propItem, BuildContext context) {
  return Expanded(
    flex: 2,
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //Nama Barang
          Text(
            propItem[index].title!,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyle(
              fontSize: 12,
            ),
          ),

          //Harga dan favorit
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Harga Barang
              Text(
                convertCurrency.format(propItem[index].harga),
                style: Theme.of(context).textTheme.headline2,
              ),

              //Favorit Barang
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
