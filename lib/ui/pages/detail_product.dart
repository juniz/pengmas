part of 'pages.dart';

class DetailProduct extends StatefulWidget {
  @override
  _DetailProductState createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  final String sUrl = "https://jsonplaceholder.typicode.com/";
  List<ProductModel> listproduct;
  final Function onTap;

  _DetailProductState({this.onTap});

  @override
  void initState() {
    super.initState();
  }

  Future<List<ProductModel>> _fetchData() async {
    var params = "posts";
    try {
      var jsonResponse = await http.get(sUrl + params);
      if (jsonResponse.statusCode == 200) {
        final jsonItems =
            json.decode(jsonResponse.body).cast<Map<String, dynamic>>();

        listproduct = jsonItems.map<ProductModel>((json) {
          return ProductModel.fromJson(json);
        }).toList();
      }
    } catch (e) {}
    return listproduct;
  }

  Future<Null> _refresh() {
    return _fetchData().then((_listproduct) {
      setState(() => listproduct = _listproduct);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      RefreshIndicator(
        onRefresh: _refresh,
        child: FutureBuilder<List<ProductModel>>(
          future: _fetchData(),
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              return Padding(
                padding: EdgeInsets.only(top: 100, bottom: 40),
                child: SizedBox(
                  height: 50,
                  width: 50,
                  child: SpinKitFadingCircle(
                    color: mainColor,
                  ),
                ),
              );
            return GestureDetector(
              onTap: () {
                if (onTap != null) {
                  onTap();
                }
              },
              child: Column(
                  // padding: EdgeInsets.only(bottom: 10.0),
                  children: snapshot.data
                      .map(
                        (_data) => Column(children: <Widget>[
                          Container(
                            width: 200,
                            height: 80,
                            child: Card(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Icon(Icons.perm_media, size: 50),
                                  Text(_data.userId.toString(),
                                      style: TextStyle(color: mainColor)),
                                ],
                              ),
                            ),
                          ),
                        ]),
                      )
                      .toList()
                      .sublist(0, 6)),
            );
          },
        ),
      ),
    ]);
  }
}
