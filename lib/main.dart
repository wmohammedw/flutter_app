import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  Widget sizedBox(double w,double h)
  {
    return SizedBox(
      width: w,
      height: h,
    );
  }


Widget actor(String picture,String name)
{
  return Column(
    children: [
      CircleAvatar(
        radius: 50.0,
        backgroundImage: AssetImage('images/$picture.jpg'),
      ),
      Text(name,style: TextStyle(
        color: Colors.white,
      ),),

    ],
  );
}
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Just Mercy '),
          ),
          backgroundColor: Colors.black87,
        ),
        //Color(0xFF8D8E80)
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('images/justmercy.jpeg'),
            sizedBox(0.0,20.0),
            Text(
              'Genre: Biography, Crime, Drama\nDuration: 137 min',
            textAlign: TextAlign.left,

              style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            ),
            Divider(
              color: Colors.white,
            ),
            Text(
              'Descrition: World-renowned civil rights defense attorney Bryan Stevenson works to free a wrongly condemned death row prisoner.',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
            Divider(
              color: Colors.white,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Icon(Icons.star,color: Colors.yellow,size: 50.0,),
                sizedBox(15.0,0.0),

                Text('7.6',
                  style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,))
              ],
            ),
            Divider(
              color: Colors.white,
            ),

            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  actor('michael','Michael B.Jordan'),
                  sizedBox(20.0,0.0),
                  actor('adam','Adam Boyer'),
                  sizedBox(20.0,0.0),
                  actor('christopher','Christopher Wolfe'),
                  sizedBox(20.0,0.0),
                  actor('dominic','Dominic Bogart'),
                  sizedBox(20.0,0.0),
                  actor('jamie','Jamie Foxx'),
                  sizedBox(20.0,0.0),
                  actor('john','John Lacy'),
                  sizedBox(20.0,0.0),
                  actor('sebastian','Sebastian Eugene  '),

                ],
              ),
            )




          ],
        ),

      ),
    );
  }
}