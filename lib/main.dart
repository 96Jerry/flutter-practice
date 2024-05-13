import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'myApp', home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'home',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.check,
                ),
                label: 'todo'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.pets,
                ),
                label: 'pet'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.analytics,
                ),
                label: 'report'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: 'profile'),
          ],
        ),
        body: Column(
          children: [
            Row(
              children: [
                Container(margin: EdgeInsets.all(20), child: Icon(Icons.apple)),
                Spacer(),
                Container(
                    margin: EdgeInsets.all(20),
                    child: Icon(Icons.notification_add))
              ],
            )
          ],
        ));
  }
}

class BasicStructure extends StatefulWidget {
  @override
  State<BasicStructure> createState() => _BasicStructureState();
}

class _BasicStructureState extends State<BasicStructure> {
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => MyAppState(),
//       child: MaterialApp(
//         title: 'Namer App',
//         theme: ThemeData(
//           useMaterial3: true,
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
//         ),
//         home: MyHomePage(),
//       ),
//     );
//   }
// }

// class MyAppState extends ChangeNotifier {}

// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   late Future futureData;

//   @override
//   void initState() {
//     super.initState();
//     futureData = fetchData('/');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: FutureBuilder(
//         future: futureData,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.done) {
//             if (snapshot.hasError) {
//               return Text('something went wrong');
//             }
//             return Text('${snapshot.data}');
//           } else {
//             return CircularProgressIndicator();
//           }
//         },
//       ),
//     );
//   }
// }
