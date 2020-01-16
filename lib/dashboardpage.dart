import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(7.0)),
                  child:
                      Center(child: Icon(Icons.filter_list, color: Colors.white)),
                ),
                Text('HOME',
                style: GoogleFonts.montserrat(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                  textStyle: TextStyle(color: Colors.white)
                )
                ),
                 Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(7.0)),
                  child:
                      Center(child: Icon(Icons.bookmark_border, color: Colors.white)),
                ),
              ]
            )
          ),
          SizedBox(height: 10.0),
          Container(
            height: MediaQuery.of(context).size.height - 156.0,
            child: ListView(
              children: <Widget>[
                    _buildListItem('assets/jg.jpg', 'Jogja',
                    'Wes tau foto neng Tugu durung?'),
                     _buildListItem('assets/sby.jpg', 'Surbaya',
                    'Ayo dolan mbene rek!'),
                     _buildListItem('assets/smg.jpg', 'Semarang',
                    'Wes tau neng lawang sewu durung?')
              ],
              )
          )
        ],
      );

  }
  _buildListItem(String imgPath, String prov, String desc){
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 300.0
          ),
          Container(
              height: 300.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      image: AssetImage(imgPath),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.green.withOpacity(0.7), BlendMode.darken))),
            ),
          Container(
            height:300.0,
            child: Center(
              child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(prov,
                style: GoogleFonts.montserrat(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  textStyle: TextStyle(color:Colors.white)
                )
                ),
                Text(desc,
                style: GoogleFonts.montserrat(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w400,
                  textStyle: TextStyle(color:Colors.white)
                )
                ),
                SizedBox(height: 20.0),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 50.0,
                    width: 125.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white
                    ),
                    child: Center(
                      child: Text('Ayo Gaskeun!',
                      style: GoogleFonts.montserrat(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                        textStyle: TextStyle(color: Colors.green)
                      )),
                    ),
                  )
                )
              ],
              )
            )
          )
        ]),
    );
  }
}
