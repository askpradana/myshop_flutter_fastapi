import 'package:fastapi_shop1/controller/api.dart';
import 'package:fastapi_shop1/model/model.dart';
import 'package:fastapi_shop1/pages/singleitem/comment_section.dart';
import 'package:fastapi_shop1/pages/singleitem/widgets/singleitem_widgets.dart';
import 'package:fastapi_shop1/widget/appbar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

// class HalamanLiatItem extends StatefulWidget {
//   const HalamanLiatItem({
//     Key? key,
//     required this.data,
//   }) : super(key: key);

//   final data;

//   @override
//   _HalamanLiatItemState createState() => _HalamanLiatItemState();
// }

// class _HalamanLiatItemState extends State<HalamanLiatItem> {
//   late bool isFavorit;
//   String dropdownValSize = 'S';
//   String dropdownValCol = 'Merah';
//   bool readMore = false;

//   @override
//   void initState() {
//     super.initState();
//     isFavorit = false;
//   }

//   ubahFav(e) {
//     setState(() {
//       isFavorit = e;
//     });
//   }

//   isFavourite() {
//     if (isFavorit == true) {
//       return Icon(Icons.favorite);
//     } else {
//       return Icon(Icons.favorite_border);
//     }
//   }

//   triggerFavourite(trigger) {
//     setState(() {
//       isFavorit = trigger;
//     });
//   }

//   final convertCurrency = NumberFormat.currency(locale: 'ID');

//   List<DropdownMenuItem<String>> get pilihanWarna {
//     List<DropdownMenuItem<String>> menuItems = [
//       DropdownMenuItem(
//         child: Text("Merah"),
//         value: 'Merah',
//       ),
//       DropdownMenuItem(
//         child: Text("Biru"),
//         value: 'Biru',
//       ),
//       DropdownMenuItem(
//         child: Text("Abu"),
//         value: 'Abu',
//       ),
//       DropdownMenuItem(
//         child: Text("Hijau"),
//         value: 'Hijau',
//       ),
//     ];
//     return menuItems;
//   }

//   List<DropdownMenuItem<String>> get pilihanUkuran {
//     List<DropdownMenuItem<String>> menuItems = [
//       DropdownMenuItem(
//         child: Text("S"),
//         value: 'S',
//       ),
//       DropdownMenuItem(
//         child: Text("L"),
//         value: 'L',
//       ),
//       DropdownMenuItem(
//         child: Text("XL"),
//         value: 'XL',
//       ),
//       DropdownMenuItem(
//         child: Text("XXL"),
//         value: 'XXL',
//       ),
//     ];
//     return menuItems;
//   }

//   handleReadMoreButton() {
//     setState(() {
//       readMore = !readMore;
//     });
//   }

//   descriptionDeciderToReadMoreOrNot() {
//     if (readMore == false) {
//       return buildDeskripsiItem();
//     } else if (readMore == true) {
//       return buildDeskripsiItemMore();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: bikinBottomAppBar(),
//       body: SafeArea(
//         child: Container(
//           padding: EdgeInsets.symmetric(
//             vertical: 5,
//             horizontal: 10,
//           ),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 AppBarWithFunction(),
//                 buildGambarItem(),
//                 buildTitleHargaPenilaianFavoriteItem(),
//                 descriptionDeciderToReadMoreOrNot(),
//                 buildReadMoreDescription(),
//                 buildPilihanUkuranWarnaItem(),
//                 ViewCommentButton(),
//                 KomenList(),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   buildReadMoreDescription() {
//     return TextButton(
//       onPressed: () => handleReadMoreButton(),
//       child: Text(
//           readMore ? 'Read Less'.toUpperCase() : 'Read More'.toUpperCase()),
//     );
//   }

//   buildPilihanUkuranWarnaItem() {
//     return Container(
//       padding: EdgeInsets.symmetric(vertical: 5),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             children: [
//               Text('Size : '),
//               DropdownButton(
//                 items: pilihanUkuran,
//                 value: dropdownValSize,
//                 onChanged: (String? newVal) {
//                   setState(() {
//                     dropdownValSize = newVal!;
//                   });
//                 },
//               ),
//             ],
//           ),
//           Row(
//             children: [
//               Text('Warna : '),
//               DropdownButton(
//                 items: pilihanWarna,
//                 value: dropdownValCol,
//                 onChanged: (String? newVal) {
//                   setState(() {
//                     dropdownValCol = newVal!;
//                   });
//                 },
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   buildDeskripsiItem() {
//     return Container(
//       child: Text(
//         widget.data[3],
//         style: TextStyle(fontSize: 16),
//         maxLines: 3,
//         overflow: TextOverflow.ellipsis,
//       ),
//     );
//   }

//   buildDeskripsiItemMore() {
//     return Container(
//       child: Text(
//         widget.data[3],
//         style: TextStyle(fontSize: 16),
//       ),
//     );
//   }

//   buildTitleHargaPenilaianFavoriteItem() {
//     return Container(
//       padding: EdgeInsets.symmetric(vertical: 25),
//       child: Column(
//         children: [
//           Container(
//             child: Text(
//               widget.data[0],
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 22,
//               ),
//               overflow: TextOverflow.ellipsis,
//               maxLines: 2,
//             ),
//           ),
//           Container(
//             alignment: Alignment.centerLeft,
//             padding: EdgeInsets.symmetric(vertical: 10),
//             child: Text(
//               // 'Rp.${widget.data[1]}',
//               '${convertCurrency.format(widget.data[1])}',
//               style: TextStyle(
//                 color: Color(0xfffe7f2d),
//                 fontSize: 16,
//               ),
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Container(
//                 alignment: Alignment.topLeft,
//                 child: Row(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Icon(Icons.star, color: Colors.yellow[500]),
//                     Icon(Icons.star, color: Colors.yellow[500]),
//                     Icon(Icons.star, color: Colors.yellow[500]),
//                     const Icon(Icons.star, color: Colors.black),
//                     const Icon(Icons.star, color: Colors.black),
//                     Text('(3 / 5)')
//                   ],
//                 ),
//               ),
//               IconButton(
//                 onPressed: () {
//                   setState(() {
//                     isFavorit = !isFavorit;
//                   });
//                 },
//                 icon: isFavourite(),
//               )
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Image buildGambarItem() => Image.network(widget.data[2]);
// }

// class ViewCommentButton extends StatelessWidget {
//   const ViewCommentButton({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       alignment: Alignment.topRight,
//       padding: EdgeInsets.only(bottom: 5),
//       child: TextButton(
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (_) => CommenctSection()),
//           );
//         },
//         child: Text(
//           "View All Comment".toUpperCase(),
//           style: TextStyle(
//             color: Color(0xfffe7f2d),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class KomenList extends StatefulWidget {
//   const KomenList({Key? key}) : super(key: key);

//   @override
//   _KomenListState createState() => _KomenListState();
// }

// class _KomenListState extends State<KomenList> {
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<List<KomenModel>>(
//       future: fetchKomen(http.Client()),
//       builder: (context, snapshot) {
//         if (snapshot.hasData) {
//           return KomenSatuan(propKomen: snapshot.data!);
//         } else if (snapshot.hasError) {
//           return Text("Error ${snapshot.hasError}");
//         } else {
//           return Center(
//             child: CircularProgressIndicator(),
//           );
//         }
//       },
//     );
//   }
// }

// class KomenSatuan extends StatelessWidget {
//   const KomenSatuan({
//     Key? key,
//     required this.propKomen,
//   }) : super(key: key);
//   final List<KomenModel> propKomen;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Expanded(
//           child: SizedBox(
//             height: 330,
//             child: ListView.builder(
//               itemCount: 3,
//               itemBuilder: (BuildContext context, int index) {
//                 return Card(
//                   child: Container(
//                     padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         CircleAvatar(
//                           backgroundImage: NetworkImage(
//                               propKomen[index].profilepict.toString()),
//                           radius: 20,
//                         ),
//                         Expanded(
//                           child: Container(
//                             padding: EdgeInsets.only(left: 10),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Padding(
//                                   padding: const EdgeInsets.only(bottom: 10),
//                                   child: Text(propKomen[index].nama!),
//                                 ),
//                                 Text(
//                                   propKomen[index].comment!,
//                                   overflow: TextOverflow.ellipsis,
//                                   maxLines: 3,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
