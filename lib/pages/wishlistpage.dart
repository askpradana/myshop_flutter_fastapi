import 'package:fastapi_shop1/controller/api.dart';
import 'package:fastapi_shop1/model/model.dart';
import 'package:fastapi_shop1/widget/wishlist_widget.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ShoppingCartPage extends StatefulWidget {
  const ShoppingCartPage({Key? key}) : super(key: key);

  @override
  _ShoppingCartPageState createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 10,
          ),
          //TODO => ubah ke listview
          child: Column(
            children: [
              buildAppBarShoppingCart(context),
              FutureBuilder<List<ShopModel>>(
                future: fetchItem(http.Client()),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return SingleItemInCart(propCart: snapshot.data!);
                  } else if (snapshot.hasError) {
                    return Text(snapshot.error.toString());
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

enum JumlahBarang {
  increment,
  decrement,
}

class SingleItemInCart extends StatefulWidget {
  const SingleItemInCart({
    Key? key,
    required this.propCart,
  }) : super(key: key);

  final List<ShopModel> propCart;

  @override
  _SingleItemInCartState createState() => _SingleItemInCartState();
}

class _SingleItemInCartState extends State<SingleItemInCart> {
  late int jumlahBarang;

  @override
  void initState() {
    super.initState();
    jumlahBarang = 0;
  }

  handleJumlahBarang(fungsi) {
    if (fungsi == JumlahBarang.increment) {
      setState(() {
        jumlahBarang++;
      });
    } else if (fungsi == JumlahBarang.decrement) {
      jumlahBarang--;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Row(
              children: [
                buildGambarShoppingCart(index),
                buildDeskripsiShoppingCart(index)
              ],
            ),
          );
        },
      ),
    );
  }

  buildDeskripsiShoppingCart(int index) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                widget.propCart[index].title!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Text("Rp. ${widget.propCart[index].harga}"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () =>
                          handleJumlahBarang(JumlahBarang.decrement),
                      icon: Icon(Icons.remove),
                    ),
                    Text(jumlahBarang.toString()),
                    IconButton(
                      onPressed: () =>
                          handleJumlahBarang(JumlahBarang.increment),
                      icon: Icon(Icons.add),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete_outline),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  buildGambarShoppingCart(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.network(
        widget.propCart[index].gambar!,
        width: 100,
      ),
    );
  }
}
