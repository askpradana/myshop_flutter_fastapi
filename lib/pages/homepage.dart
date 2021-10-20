import 'package:fastapi_shop1/widget/appbar.dart';
import 'package:fastapi_shop1/widget/homepage_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 10,
          ),
          //TODO : NOTE => Consider ubah ke sliver grid
          child: Column(
            children: [
              buildMiripAppBar(context),
              buildTitlePage(context),
              ItemList(),
              // Text(currencyFormatter.format(angka)),
            ],
          ),
        ),
      ),
    );
  }
}


//CONSIDERED FEATURE
// class HomePage extends StatelessWidget {
//   HomePage({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).primaryColor,
//       ),
//       body: SafeArea(
//         child: CustomScrollView(
//           slivers: <Widget>[
//             SliverAppBar(
//               backgroundColor: Theme.of(context).primaryColor,
//               floating: true,
//               pinned: true,

//               expandedHeight: 250,

//               //expanded appbar
//               flexibleSpace: Center(
//                 child: FlexibleSpaceBar(
//                   title: Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       Icon(
//                         Icons.search_outlined,
//                       ),
//                       Icon(
//                         Icons.menu_outlined,
//                       ),
//                     ],
//                   ),

//                   //background
//                   background: Center(
//                     child: Text("Discover Our Exclusive Deals"),
//                   ),
//                 ),
//               ),
//             ),

//             //grid
//             SliverGrid(
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 ///no.of items in the horizontal axis
//                 crossAxisCount: 2,
//               ),

//               ///Lazy building of list
//               delegate: SliverChildBuilderDelegate(
//                 (BuildContext context, int index) {
//                   /// To convert this infinite list to a list with "n" no of items,
//                   /// uncomment the following line:
//                   if (index > 15) return null;
//                   return Text("Hello");
//                 },

//                 /// Set childCount to limit no.of items
//                 /// childCount: 100,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
