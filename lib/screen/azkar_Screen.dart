import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AzkarScreen extends StatefulWidget {
  @override
  _AzkarScreenState createState() => _AzkarScreenState();
}

class _AzkarScreenState extends State<AzkarScreen> {
   int _Counter = 0;
   String _content='الحمد الله ';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Azkar',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            icon: Icon(
              Icons.not_listed_location_sharp,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pushNamed(context, "/about_Screen");
            }),
        actions: [
          PopupMenuButton <String>(
            onSelected: (String value) {
              if(_content!=value){
                setState(() {
                  _content=value;
                  _Counter=0;

                });
              }
            },
            itemBuilder: (context) {
             return [
               PopupMenuItem(child: Text('الحمد الله'),value: 'الحمد الله',),
               PopupMenuItem(child: Text('سبحان الله'),value: ' سبحان الله',),
               PopupMenuItem(child: Text('استغفر الله'),value: 'استغفر الله',),

             ];
            },
              ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.teal.shade800,
              Colors.teal.shade200,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://m.media-amazon.com/images/I/41xz4XzTewL._AC_SY1000_.jpg'),
                radius: 40,
              ),
              SizedBox(
                height: 15,
              ),
              Card(
                margin: EdgeInsets.only(bottom: 15),
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: Text(
                          _content,
                          style: TextStyle(
                            fontSize: 22,
                            fontFamily: "ScheherazadeNew",
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.orange,
                      child: Center(
                        child: Text(
                          _Counter.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontFamily: "ScheherazadeNew",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.teal.shade600,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.only(
                            topStart: Radius.circular(10),
                          ),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          ++_Counter;
                        });
                      },
                      child: Text(
                        'تسبيح',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: "ScheherazadeNew",
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _Counter=0;
                        });
                      },
                      child: Text('إعادة',
                        style: TextStyle(
                            fontSize: 15, fontFamily: "ScheherazadeNew"
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange.shade600,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.only(
                            bottomEnd:  Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
