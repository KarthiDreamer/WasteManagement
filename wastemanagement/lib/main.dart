import 'package:flutter/material.dart';
import 'circularProgressIndicatior.dart';
import 'linearProgressIndicator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final Map<int, Color> colorCodes = {
    50: const Color.fromRGBO(147, 205, 72, .1),
    100: const Color.fromRGBO(147, 205, 72, .2),
    200: const Color.fromRGBO(147, 205, 72, .3),
    300: const Color.fromRGBO(147, 205, 72, .4),
    400: const Color.fromRGBO(147, 205, 72, .5),
    500: const Color.fromRGBO(147, 205, 72, .6),
    600: const Color.fromRGBO(147, 205, 72, .7),
    700: const Color.fromRGBO(147, 205, 72, .8),
    800: const Color.fromRGBO(147, 205, 72, .9),
    900: const Color.fromRGBO(147, 205, 72, 1),
  };

// Green color code: FF93cd48

  @override
  Widget build(BuildContext context) {
    MaterialColor customColor = MaterialColor(0xff1d2b3a, colorCodes);
    return MaterialApp(
      title: 'Waste Management System',
      theme: ThemeData(
        primarySwatch: customColor,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Waste Management System'),
      ),
      backgroundColor: const Color(0xff1d2b3a),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.indigo.shade800,
        // surfaceTintColor: ,

        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.notifications_outlined),
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
        ],
      ),
      body: <Widget>[
        Container(
            color: const Color(0xff1d2b3a),
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 4,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
                    child: SizedBox(
                      height: 150,
                      width: 340,
                      child: Card(
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        color: Colors.white,
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(16, 20, 9, 20),
                          child: Row(
                            children: [
                              Text(
                                "Number of Bins \nCollected Today.",
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                ),
                                //TODO gotta add The circular bar here
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(40, 2, 0, 0),
                                child: SizedBox(
                                  width: 100, height: 100,
                                    child: MyCircularProgressIndicatior()
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(5, 9, 205, 8),
                    child: Text("More Bins At..",style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    ),
                  ),

                  // ListView.builder(
                  //     itemBuilder: (BuildContext context){
                  //
                  //     }
                  // ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
                    child: SizedBox(
                      height: 60,
                      width: 340,
                      child: Card(
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        color: Colors.white,
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(12, 8, 9, 8),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(100, 8,0, 8),
                                child: Text(
                                  "From Gate",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),

                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
                    child: SizedBox(
                      height: 60,
                      width: 340,
                      child: Card(
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        color: Colors.white,
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(12, 8, 9, 8),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(90, 8,0, 8),
                                child: Text(
                                  "Bike Parking",
                                  //TODO little overflow
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),

                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
                    child: SizedBox(
                      height: 60,
                      width: 340,
                      child: Card(
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        color: Colors.white,
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(12, 8, 9, 8),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(110, 8,0, 8),
                                child: Text(
                                  "Temple",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),

                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  Padding(padding: const EdgeInsets.fromLTRB(30, 25, 20, 17),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 167,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xff3d77ac),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(26, 15, 0, 15),
                            child: Text("Bio-degradable"),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 167,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xffababab),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text("Non-Bio-degradable"),
                          ),
                        ),
                      )
                    ],
                  ),
                  ),
                  const Divider(
                    height: 20,
                    thickness: 3,
                    indent: 30,
                    endIndent: 20,
                    color: Color(0xffcac5c5),
                  ),

                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 13, 145, 8),
                    child: Text("Last Week's Summary",style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    ),
                  ),
                  Padding(padding: const EdgeInsets.fromLTRB(30, 25, 20, 17),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 20,
                          width: 200,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color(0xff3d77ac),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.fromLTRB(26, 15, 0, 15),
                              // child: Text("Bio-degradable"),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                          width: 140,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color(0xffababab),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(15.0),
                              // child: Text("Non-Bio-degradable"),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 13, 141, 8),
                    child: Text("Last Month's Summary",style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    ),
                  ),
                  Padding(padding: const EdgeInsets.fromLTRB(30, 25, 20, 17),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 20,
                          width: 160,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color(0xff3d77ac),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.fromLTRB(26, 15, 0, 15),
                              // child: Text("Bio-degradable"),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                          width: 180,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color(0xffababab),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(15.0),
                              // child: Text("Non-Bio-degradable"),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],

              ),
            ),
        ), //Page1
        Container(
          color: const Color(0xff1d2b3a),
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(5, 0, 310, 8),
                  child: Text("Full !",style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
                  child: SizedBox(
                    height: 60,
                    width: 340,
                    child: Card(
                      shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      color: Colors.white,
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(12, 8, 9, 8),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(100, 8,0, 8),
                              child: Text(
                                "From Gate",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),

                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
                  child: SizedBox(
                    height: 60,
                    width: 340,
                    child: Card(
                      shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      color: Colors.white,
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(12, 8, 9, 8),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(90, 8,0, 8),
                              child: Text(
                                "Bike Parking",
                                //TODO little overflow
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),

                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 150,
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 300, 8),
                  child: Text("Almost..",style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
                  child: SizedBox(
                    height: 60,
                    width: 340,
                    child: Card(
                      shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      color: Colors.white,
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(12, 8, 9, 8),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(100, 8,0, 8),
                              child: Text(
                                "Back Gate",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),

                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
                  child: SizedBox(
                    height: 60,
                    width: 340,
                    child: Card(
                      shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      color: Colors.white,
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(12, 8, 9, 8),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(90, 8,0, 8),
                              child: Text(
                                "Bike Parking",
                                //TODO little overflow
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),

                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],

            ),
          ),
        ), //Page 2
        Container(
          color: const Color(0xff1d2b3a),
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              children: [

                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 9, 240, 8),
                  child: Text("Bike Parking",style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  ),
                ), //Bike Parking
                Padding(padding: const EdgeInsets.fromLTRB(30, 25, 20, 17),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 20,
                        width: 280,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xff3d77ac),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(26, 15, 0, 15),
                            // child: Text("Bio-degradable"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ), //1
                Padding(padding: const EdgeInsets.fromLTRB(30, 25, 20, 17),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 20,
                        width: 170,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xff3d77ac),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(26, 15, 0, 15),
                            // child: Text("Bio-degradable"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ), //2
                Padding(padding: const EdgeInsets.fromLTRB(30, 25, 20, 17),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 20,
                        width: 220,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xff3d77ac),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(26, 15, 0, 15),
                            // child: Text("Bio-degradable"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ), //3
                Padding(padding: const EdgeInsets.fromLTRB(30, 25, 20, 17),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 20,
                        width: 140,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xff3d77ac),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(26, 15, 0, 15),
                            // child: Text("Bio-degradable"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ), //4
                Padding(padding: const EdgeInsets.fromLTRB(30, 25, 20, 17),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 20,
                        width: 330,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xff3d77ac),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(26, 15, 0, 15),
                            // child: Text("Bio-degradable"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ), //5
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 13, 315, 8),
                  child: Text("Park",style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  ),
                ), //Park
                Padding(padding: const EdgeInsets.fromLTRB(30, 25, 20, 17),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 20,
                        width: 330,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xff3d77ac),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(26, 15, 0, 15),
                            // child: Text("Bio-degradable"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ), //5
                Padding(padding: const EdgeInsets.fromLTRB(30, 25, 20, 17),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 20,
                        width: 220,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xff3d77ac),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(26, 15, 0, 15),
                            // child: Text("Bio-degradable"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ), //3
                Padding(padding: const EdgeInsets.fromLTRB(30, 25, 20, 17),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 20,
                        width: 140,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xff3d77ac),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(26, 15, 0, 15),
                            // child: Text("Bio-degradable"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ), //4
                Padding(padding: const EdgeInsets.fromLTRB(30, 25, 20, 17),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 20,
                        width: 170,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xff3d77ac),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(26, 15, 0, 15),
                            // child: Text("Bio-degradable"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ), //2
                const Padding(
                  padding: EdgeInsets.fromLTRB(18, 13, 290, 8),
                  child: Text("Bus Stop",style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  ),
                ), //Bus Stop
                Padding(padding: const EdgeInsets.fromLTRB(30, 25, 20, 17),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 20,
                        width: 220,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xff3d77ac),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(26, 15, 0, 15),
                            // child: Text("Bio-degradable"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(padding: const EdgeInsets.fromLTRB(30, 25, 20, 17),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 20,
                        width: 220,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xff3d77ac),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(26, 15, 0, 15),
                            // child: Text("Bio-degradable"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(padding: const EdgeInsets.fromLTRB(30, 25, 20, 17),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 20,
                        width: 170,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xff3d77ac),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(26, 15, 0, 15),
                            // child: Text("Bio-degradable"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(padding: const EdgeInsets.fromLTRB(30, 25, 20, 17),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 20,
                        width: 220,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xff3d77ac),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(26, 15, 0, 15),
                            // child: Text("Bio-degradable"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                    width: 300,
                    child: MyLinearProgressIndicatior()),
              ],
            ),
          ),
        ), //Page 3
      ][currentPageIndex],
    );
  }
}
