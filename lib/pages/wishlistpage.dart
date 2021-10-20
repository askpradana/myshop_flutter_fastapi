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
      appBar: AppBar(),
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 5,
          ),
          child: FutureBuilder<List<ShopModel>>(
            future: fetchItem(http.Client()),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    if (index == 0) {
                      return buildAppBarShoppingCart(context);
                    } else {
                      // return SingleItemInCart(propCart: snapshot.data!);
                      // TODO => Kirim mediaquery besert if else kalau potrait landscaepe
                      return SingleItem(
                        prop: snapshot.data!,
                        index: index,
                      );
                    }
                  },
                );
              } else if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
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

class SingleItem extends StatefulWidget {
  SingleItem({
    Key? key,
    required this.prop,
    required this.index,
  }) : super(key: key);

  final List<ShopModel> prop;
  final int index;

  @override
  State<SingleItem> createState() => _SingleItemState();
}

class _SingleItemState extends State<SingleItem> {
  late int jumlahbarang;
  var size, totalheight, totalWidth;

  @override
  void initState() {
    jumlahbarang = 0;
    super.initState();
  }

  handleBanyakBarang(fungsi) {
    if (fungsi == JumlahBarang.increment) {
      setState(() {
        jumlahbarang++;
      });
    } else if (fungsi == JumlahBarang.decrement) {
      // TODO => FIXME Bener yang mana?
      setState(() {
        jumlahbarang--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    totalWidth = size.width;
    totalheight = size.height;
    return Card(
      color: Theme.of(context).colorScheme.surface,
      elevation: 1,
      child: Row(
        children: [
          SizedBox(
            width: 150,
            child: Image.network(
              widget.prop[widget.index].gambar!,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: totalWidth / 1.8,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 10, bottom: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.prop[widget.index].title.toString(),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  // TODO => Ubah pake currency lagi
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    child: Text(widget.prop[widget.index].harga.toString()),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () =>
                                handleBanyakBarang(JumlahBarang.decrement),
                            icon: Icon(Icons.remove),
                          ),
                          Text(jumlahbarang.toString()),
                          IconButton(
                            onPressed: () =>
                                handleBanyakBarang(JumlahBarang.increment),
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
          ),
        ],
      ),
    );
  }
}
