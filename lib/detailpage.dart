import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatefulWidget {
  final imgPath, title;
  DetailPage({this.imgPath, this.title});
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.imgPath),
                fit: BoxFit.cover
              )
            ),
          ),
          BackdropFilter(
            filter: new ImageFilter.blur(sigmaX: 4, sigmaY: 4),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5)
              )
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15,25,15,15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.green
                  ),
                  child: Center(
                    child: Icon(Icons.filter_list, color: Colors.white),
                  ),
                ),
                Text(widget.title.toString().toUpperCase(),
                style: GoogleFonts.montserrat(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w400,
                  textStyle: TextStyle(color: Colors.white)
                )
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.black54
                  ),
                  child: Center(
                    child: Icon(Icons.bookmark_border, color: Colors.white),
                  ),
                ),
              ],
            )    
          ),
          Positioned(
            top: 80,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width-15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Yang Lagi Nge-hitsss",
                        style: GoogleFonts.montserrat(
                          fontSize : 22,
                          fontWeight: FontWeight.bold,
                          textStyle: TextStyle(color: Colors.white)
                        )),
                        IconButton(
                          icon: Icon(Icons.more_vert, color: Colors.white),
                          onPressed: (){},
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Stack(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 25),
                        child: Container(
                          height: 200,
                          width: 325,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('assets/mangunan.jpg'),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.darken)
                            )
                          ),
                        ),
                      ),
                      Positioned(
                        top: 125,
                        left: 10,
                        child: Container(
                          width: MediaQuery.of(context).size.width-60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Mangunan",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    textStyle: TextStyle(color: Colors.white)
                                  )),
                                  Text("Ayo metik buah!",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    textStyle: TextStyle(color: Colors.white)
                                  ))
                                ]
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.white
                                ),
                                child: Center(
                                  child: Icon(Icons.arrow_forward_ios, color: Colors.green),
                                )
                              )
                            ]
                          ),
                        ),
                      )
                    ]
                    ),
                    SizedBox(height: 20),
                    Container(
                    width: MediaQuery.of(context).size.width-15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Arep nendi kwe ?",
                        style: GoogleFonts.montserrat(
                          fontSize : 22,
                          fontWeight: FontWeight.bold,
                          textStyle: TextStyle(color: Colors.white)
                        )),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        _BuildListItems('assets/btl.jpg','Bantul'),
                        _BuildListItems('assets/sleman.jpg','Sleman'),
                        _BuildListItems('assets/kulon_progo.jpg','Kulon Progo'),
                        _BuildListItems('assets/gunung_kidul.jpg','Gunung Kidul'),
                        _BuildListItems('assets/jog.jpg','Yogyakarta'),
                      ],
                    ),
                  )
                ],
              ),
            )
          )
        ]
      )
    );
  }
  _BuildListItems(String imgPath, String kab){
    return Padding(
      padding: EdgeInsets.all(10),
      child: Stack(
        children: [
          Container(
            height: 170,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              image: DecorationImage(
                image: AssetImage(imgPath),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.darken)
              )
            ),
          ),
          Positioned(
            top: 15,
            right: 15,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white
              ),
              child: Center(
                child: Icon(
                  Icons.bookmark_border,
                  color : Colors.green
                ),
              ),
            ),
            
          ),
          Positioned(
            top: 125,
            left: 15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(kab,
                style: GoogleFonts.montserrat(
                  fontSize: 20,
                  textStyle: TextStyle(
                    color: Colors.white
                  )
                ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}