// part of 'pages.dart';

// class ModalTrigger extends StatefulWidget {
//   Materi materi;

//   ModalTrigger({this.materi});

//   @override
//   _ModalTriggerState createState() => _ModalTriggerState();
// }

// class _ModalTriggerState extends State<ModalTrigger> {
//   _showModalBottomSheet(context) {
//     showModalBottomSheet(
//         context: context,
//         builder: (BuildContext context) {
//           return Stack(children: <Widget>[
//             Container(
//               height: 600,
//               decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(40),
//                     topRight: Radius.circular(0),
//                   )),
//               child: ListView(children: <Widget>[
//                 Column(children: <Widget>[
//                   Row(children: <Widget>[
//                     Padding(
//                       padding: const EdgeInsets.all(10.0),
//                       child: IconButton(
//                         onPressed: () {
//                           Navigator.of(context).pop();
//                         },
//                         icon: Icon(Icons.cancel, color: mainColor, size: 20),
//                       ),
//                     ),
//                     Center(
//                       child: Container(
//                         margin: EdgeInsets.only(left: 40),
//                         child: Text(
//                           widget.materi.judul,
//                           textAlign: TextAlign.center,
//                           style: blackTextFont.copyWith(
//                               fontSize: 20, fontWeight: FontWeight.w500),
//                         ),
//                       ),
//                     ),
//                   ])
//                 ]),
//                 Container(
//                     margin: EdgeInsets.symmetric(
//                         vertical: 20, horizontal: defaultMargin),
//                     child: Divider(
//                       color: Color(0xFFE4E4E4),
//                       thickness: 1,
//                     )),
//                 Padding(
//                   padding: EdgeInsets.fromLTRB(40, 20, 20, 20),
//                   child: Text(
//                     'Lorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.\nLorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.\nLorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.\n',
//                     style: purpleTextFont.copyWith(fontSize: 16),
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.fromLTRB(40, 20, 20, 20),
//                   child: Text(
//                     'Lorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.\nLorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.\nLorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.\n',
//                     style: purpleTextFont.copyWith(fontSize: 16),
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//               ]),
//             ),

//             // SizedBox(height: 15.0),
//           ]);
//         });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 250,
//       height: 70,
//       child: RaisedButton(
//         child: Center(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Padding(
//                 padding: const EdgeInsets.only(left: 5, right: 10),
//                 child: Icon(Icons.nature_people, color: accentColor4),
//               ),
//               Text(
//                 "Untuk apa saya melakukan ini?",
//                 style: purpleTextFont.copyWith(fontSize: 16),
//               ),
//             ],
//           ),
//         ),
//         color: Colors.white,
//         elevation: 10,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
//         onPressed: () {
//           _showModalBottomSheet(context);
//         },
//       ),
//     );
//   }
// }

// class ModalTrigger2 extends StatefulWidget {
//   Materi materi;

//   ModalTrigger2({this.materi});

//   @override
//   _ModalTrigger2State createState() => _ModalTrigger2State();
// }

// class _ModalTrigger2State extends State<ModalTrigger2> {
//   _showModalBottomSheet2(context) {
//     showModalBottomSheet(
//         context: context,
//         builder: (BuildContext context) {
//           return Stack(children: <Widget>[
//             Container(
//               height: 600,
//               decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(40),
//                     topRight: Radius.circular(0),
//                   )),
//               child: ListView(children: <Widget>[
//                 Column(children: <Widget>[
//                   Row(children: <Widget>[
//                     Padding(
//                       padding: const EdgeInsets.all(10.0),
//                       child: IconButton(
//                         onPressed: () {
//                           Navigator.of(context).pop();
//                         },
//                         icon: Icon(Icons.cancel, color: mainColor, size: 20),
//                       ),
//                     ),
//                     Center(
//                       child: Container(
//                         margin: EdgeInsets.only(left: 40),
//                         child: Text(
//                           // widget.materi.judul,
//                           'Judul',
//                           textAlign: TextAlign.center,
//                           style: blackTextFont.copyWith(
//                               fontSize: 20, fontWeight: FontWeight.w500),
//                         ),
//                       ),
//                     ),
//                   ])
//                 ]),
//                 Container(
//                     margin: EdgeInsets.symmetric(
//                         vertical: 20, horizontal: defaultMargin),
//                     child: Divider(
//                       color: Color(0xFFE4E4E4),
//                       thickness: 1,
//                     )),
//                 Padding(
//                   padding: EdgeInsets.fromLTRB(40, 20, 20, 20),
//                   child: Text(
//                     widget.materi.detailMateri,
//                     // '1. Lorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.\n'
//                     // '2. Lorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.\n'
//                     // '3. Lorem ipsum dolor sit amet, consect adipiscing elit, sed do.\n',
//                     style: purpleTextFont.copyWith(fontSize: 16),
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//               ]),
//             ),
//             // SizedBox(height: 15.0),
//           ]);
//         });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 250,
//       height: 70,
//       child: RaisedButton(
//         child: Center(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Padding(
//                 padding: const EdgeInsets.only(left: 10, right: 10),
//                 child: Icon(Icons.question_answer, color: accentColor4),
//               ),
//               Text(
//                 "Ikuti instruksi berikut ini",
//                 style: purpleTextFont.copyWith(fontSize: 16),
//               ),
//             ],
//           ),
//         ),
//         color: Colors.white,
//         elevation: 10,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
//         onPressed: () {
//           _showModalBottomSheet2(context);
//         },
//       ),
//     );
//   }
// }
