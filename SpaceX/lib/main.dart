import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: <Widget>[
            Center(child: Padding(
              padding: const EdgeInsets.only(top: 60.0),
              
              child: Image(image: AssetImage('images/spacexTitle.png'), width: 300,),
            ),),
            Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Text("FALCON 9",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                                  fontSize: 34.0,
                                  color: Colors.white,
                                ),),
                                Text("FIRST ORBITAL CLASS ROCKET CAPABLE OF REFLIGHT",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                                  fontSize: 8.0,
                                  color: Colors.white,
                                ),),
                  ],
                ),
              ),
            ),
           Padding(
             padding: const EdgeInsets.only(top: 30.0),
             child: Row(
               crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
               children: <Widget>[
                 Image(image: NetworkImage('https://img2.pngio.com/falcon-9-spacex-falcon-9-png-414_5414.png'), width: 100,height: 600,fit: BoxFit.contain),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 250,
                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: <Widget>[
                                      Spacer(),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text("84",style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                                      fontSize: 48.0,
                                                      color: Colors.white,
                                                    ),),
                                          Text("TOTAL LAUNCHES",style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                                      fontSize: 18.0,
                                                      color: Colors.white,
                                                    ),)
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: <Widget>[
                                      Spacer(),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text("45",style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                                      fontSize: 48.0,
                                                      color: Colors.white,
                                                    ),),
                                          Text("TOTAL LANDINGS",style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                                      fontSize: 18.0,
                                                      color: Colors.white,
                                                    ),)
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: <Widget>[
                                      Spacer(),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text("31",style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                                      fontSize: 48.0,
                                                      color: Colors.white,
                                                    ),),
                                          Text("REFLOWN ROCKETS",style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                                      fontSize: 18.0,
                                                      color: Colors.white,
                                                    ),)
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Falcon 9 is a reusable, two-stage rocket designed and manufactured by SpaceX for the reliable and safe transport of people and payloads into Earth orbit and beyond. Falcon 9 is the world’s first orbital class reusable rocket. Reusability allows SpaceX to refly the most expensive parts of the rocket, which in turn drives down the cost of space access.", overflow: TextOverflow.ellipsis,
    maxLines: 24,
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                            fontSize: 17.0,
                                            color: Colors.white,
                                          ),),
                          )

                        ],
                      ),
                    ),
                  ),
               ],
             ),
           ),
          ],
        ),
        
      ),
    ),
  );
}
