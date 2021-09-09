import 'package:danini/BuildAppToolBar.dart';
import 'package:danini/Comman/ColorFile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../filterpage.dart';

class CategoriesPage extends StatefulWidget {
  @override
  _CategoriesPageState createState() => _CategoriesPageState();
}

final List<DataList> data = <DataList>[
  DataList(
    'Dress Shirts',
    <DataList>[
      DataList('Slim Fit'),
      DataList('Contemporary Fit'),
      DataList('Classic Fit'),
      DataList('All Dress shirts'),
    ],
  ),
  DataList(
    'Sports shirts',
    <DataList>[
      DataList('T-Shirts'),
      DataList('Round'),
      DataList(
        'Cricket',
        <DataList>[
          DataList('shoues'),
          DataList('Pents'),
          DataList('Shorts'),
        ],
      ),
    ],
  ),
  DataList(
    'short sleeve shirts',
  ),
];

class DataList {
  DataList(this.title, [this.children = const <DataList>[]]);

  final String title;
  final List<DataList> children;
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppToolBar(context, "categories", true, false),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: 40,
                color: Colors.transparent,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: ktextpriceColor,
                          ),
                          hintText: "Search",
                          hintStyle: TextStyle(
                              fontSize: 12,
                              color: ktextpriceColor,
                              fontFamily: 'GothaPro',
                              fontWeight: FontWeight.w300),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide.none),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: ktextpriceColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.filter_list,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          // Provider.of<MyBottomSheetModel>(context)
                          //     .changeState();

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FilterPage(),
                              ));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                height: MediaQuery.of(context).size.height / 4,
                child: GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage("assets/slider_1.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                )),
            ListView.builder(
              itemBuilder: (BuildContext context, int index) =>
                  DataPopUp(data[index]),
              itemCount: data.length,
              shrinkWrap: true,
            ),
          ],
        ),
      ),
    );
  }
}

class DataPopUp extends StatelessWidget {
  const DataPopUp(this.popup);

  final DataList popup;

  Widget _buildTiles(DataList root) {
    if (root.children.isEmpty)
      return ListTile(
          title: Text(
        root.title,
        style: TextStyle(
            fontSize: 14,
            color: kTextColor,
            fontFamily: 'GothaPro',
            fontWeight: FontWeight.w300),
      ));
    return ExpansionTile(
      key: PageStorageKey<DataList>(root),
      title: Text(
        root.title,
        style: TextStyle(
            fontSize: 16,
            color: kTextColor,
            fontFamily: 'GothaPro',
            fontWeight: FontWeight.w300),
      ),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(popup);
  }
}
