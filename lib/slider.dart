import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';

class SliderPage extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  SliderPage({this.title, this.description, this.image});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    //double height = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
         /* SvgPicture.asset(
            image,
            width: width * 0.6,
          ), */
      Container(
        width: width * 0.6,
        //height: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                  image: AssetImage(
                    //TO DO
                   '_pages[index].image',
                  ),
                  fit: BoxFit.cover
              )
          ),
          ),



          SizedBox(
            height: 60,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Text(
              description,
              style: TextStyle(
                height: 1.5,
                fontWeight: FontWeight.normal,
                fontSize: 14,
                letterSpacing: 0.7,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}