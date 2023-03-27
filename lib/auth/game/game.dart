import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_project/constClor.dart';

Widget games(String name,download,play,photoGame,onp,ontap,context){
  return  Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
            children:[ GestureDetector(
              onTap: ontap,
              child: Container(
                margin: EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color:white),

              ),
            ),
              Container(
                child: Positioned(
                  left: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Container(
                          width: 60,
                          height: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage(photoGame),fit: BoxFit.cover
                              )
                          ),
                        ),
                        SizedBox(width: 15,),
                        Column(children: [
                          Text(name, style: TextStyle(
                              color: black, fontSize: 20,fontWeight: FontWeight.w700),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0,top: 8),
                            child: InkWell(
                              onTap: onp,
                              child: Text(download,style: TextStyle(
                                  color: grey, fontSize: 12,fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),

                        ],)
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: Positioned(
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Container(
                      width: 60,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        gradient: LinearGradient(
                          colors: [
                            Colors.lightBlueAccent.withOpacity(0.2),
                            blueAccent,
                          ],
                        ),
                      ),
                      child: Center(
                        child: Text(play),
                      ),
                    ),
                  ),
                ),
              )
            ]),
      ),
    ],
  );
}
Widget gameSlider(String name,download,photoGame,context){
  return  Row(
    children: [
      InkWell(
        onTap: () {},
        child: Stack(children: [
          Container(
            margin: EdgeInsets.all(5),
            width: MediaQuery
                .of(context)
                .size
                .width - 50,
            height: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                    image: AssetImage(
                       photoGame),
                    fit: BoxFit.cover)),
          ),
          Container(
            child: Positioned(
              bottom: 30.0, left: 15.0,
              child: Column(
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        color:white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ), SizedBox(height: 5,),
                  Text(
                    download,
                    style: TextStyle(
                        color: white70,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),

                ],
              ),
            ),
          )
        ]),
      ),
    ],
  );
}