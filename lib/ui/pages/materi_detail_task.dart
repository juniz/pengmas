part of 'pages.dart';

// ignore: must_be_immutable
class MateriDetailTask extends StatefulWidget {
  Materi materi;

  MateriDetailTask({this.materi});

  @override
  _MateriDetailTaskState createState() => _MateriDetailTaskState();
}

class _MateriDetailTaskState extends State<MateriDetailTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cricket"),
      ),
      body: ListView(
        padding: EdgeInsets.all(5.0),
        children: <Widget>[
          // Hero(
          //   tag: article.urlToImage,
          //   child: Image.network(article.urlToImage),
          // ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(10.0),
            child: Text(
              widget.materi.judul,
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            margin: EdgeInsets.all(5.0),
            child: Text(widget.materi.createdAt),
          ),
          Text(widget.materi.detailMateri),
        ],
      ),
    );
  }
}
