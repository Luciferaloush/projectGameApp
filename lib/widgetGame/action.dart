import 'package:flutter/material.dart';
import 'package:shopping_project/auth/game/game.dart';
import 'package:shopping_project/model/modelGame/modelGame.dart';
import 'package:shopping_project/model/modelSlider/modelSlider.dart';

class Featured extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Top action game",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "see all",
                style: TextStyle(
                    color: Colors.lightBlue,
                    fontWeight: FontWeight.w400),
              ),
            )
          ],
        ),
        SizedBox(
          width: double.infinity,
          child: ListView.builder(
            itemCount: game.length,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemBuilder: (context, index) {
              return games(
                  game[index].name.toString(),
                  game[index].download.toString(),
                  game[index].play.toString(),
                  game[index].photoGame.toString(),
                  (){},
                  (){},
                  context);
            },
          ),
        ),
      ],
    );
  }
}
