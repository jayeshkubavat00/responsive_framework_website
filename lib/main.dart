import 'package:flutter/material.dart';
import 'package:lookat_solution/screens/modules/dashboard_module/screen/dashboard_screen.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, child!),
        breakpoints: const [
          ResponsiveBreakpoint.resize(480, name: MOBILE),
          ResponsiveBreakpoint.autoScale(768, name: TABLET),
          ResponsiveBreakpoint.resize(992, name: DESKTOP),
          ResponsiveBreakpoint.autoScale(1280, name: "XL"),
        ],
      ),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: DashBoardScreen(),
    );
  }
}


// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   ScrollController _scrollController = ScrollController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Auto Scroll Demo'),
//       ),
//       body: ListView.builder(
        // controller: _scrollController,
//         itemCount: 100,
//         itemBuilder: (context, index) {
//           return Container(
//             height: 50,
//             child: Center(
//               child: Text('Item $index'),
//             ),
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
          // _scrollController.animateTo(
          //   250.0,
          //   duration: Duration(seconds: 1),
          //   curve: Curves.ease,
          // );
//         },
//         child: Icon(Icons.arrow_downward),
//       ),
//     );
//   }
// }
