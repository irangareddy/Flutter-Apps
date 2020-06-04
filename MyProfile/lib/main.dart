import 'package:flutter/material.dart';

void main() {
  runApp(MyProfile());
}

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CircleAvatar(
                          radius: 47.0,
                          backgroundColor: Colors.red[200],
                          child: CircleAvatar(
                            radius: 44.0,
                            backgroundImage: AssetImage('images/latest.jpg'),
                          ),
                        ),
                    Column(
                      children: <Widget>[
                        Text(
                          '39',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 22.0,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Posts',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 17.0,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          '137',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 22.0,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Followers',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 17.0,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          '96',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 22.0,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Following',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 17.0,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                // SizedBox(
                //   height: 8.0
                // ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        'Ranga Reddy',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Personal Blog',
                        style: TextStyle(
                          color: Colors.black26,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '📲 Enthusiastic about Mobile App Development',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '😜 Crazy about SwiftUI',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '🤓 Exploring Flutter Now',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '♻️ Learn, Code, Enjoy',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '⏬ Latest Code available here',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'github.com/irangareddy/FlutterExampleApps',
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 4),
                      Row(children: <Widget>[
                        Text(
                          'Followed by ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text("Enthusiastic Developers",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ])
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton(
                          color: Colors.blue,
                          child: Text(
                            "Follow",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          onPressed: () => null,
                          shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(4.0),),
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Expanded(
                        child: RaisedButton(
                          color: Colors.white,
                          child: Text(
                            "Message",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          onPressed: () => null,
                          shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(4.0),
                          side: BorderSide(color: Colors.grey),),
                        ),
                      ),
                    ],
                  ),
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(width: 16.0),
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.blueGrey[50],
                          child: CircleAvatar(
                            radius: 28.0,
                            backgroundImage: NetworkImage(
                                'https://developer.apple.com/news/images/og/swiftui-og.png'),
                          ),
                        ),
                        SizedBox(height: 4.0),
                        Text('SwiftUI')
                      ],
                    ),
                    SizedBox(width: 16.0),
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.blueGrey[50],
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 28.0,
                            backgroundImage: NetworkImage(
                                'https://www.pngitem.com/pimgs/m/444-4446728_swift-logo-01-live-youtube-png-transparent-png.png'),
                          ),
                        ),
                        SizedBox(height: 4.0),
                        Text('iOS UIKit')
                      ],
                    ),
                    SizedBox(width: 16.0),
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.blueGrey[50],
                          child: CircleAvatar(
                            radius: 28.0,
                            backgroundImage: NetworkImage(
                                'https://f6z3926wu5m489s6n3nvfg9k-wpengine.netdna-ssl.com/wp-content/uploads/2020/03/600_466219125-1.png'),
                          ),
                        ),
                        SizedBox(height: 4.0),
                        Text('Flutter')
                      ],
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton(
                          color: Colors.white,
                          child: Icon(
                            Icons.grid_on,
                            color: Colors.black,
                            size: 30.0,
                          ),
                          onPressed: () => null,
                        ),
                      ),
                      Expanded(
                        child: RaisedButton(
                          color: Colors.white,
                          child: Icon(
                            Icons.live_tv,
                            color: Colors.grey,
                            size: 30.0,
                          ),
                          onPressed: () => null,
                        ),
                      ),
                      Expanded(
                        child: RaisedButton(
                          color: Colors.white,
                          child: Icon(
                            Icons.assignment_ind,
                            color: Colors.grey,
                            size: 30.0,
                          ),
                          onPressed: () => null,
                        ),
                      ),
                    ],
                  ),
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Image(
                            image: NetworkImage('https://picsum.photos/200'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          child: Image(
                            image: NetworkImage('https://picsum.photos/300'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          child: Image(
                            image: NetworkImage('https://picsum.photos/100'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Image(
                            image: NetworkImage('https://picsum.photos/290'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          child: Image(
                            image: NetworkImage('https://picsum.photos/310'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          child: Image(
                            image: NetworkImage('https://picsum.photos/700'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
