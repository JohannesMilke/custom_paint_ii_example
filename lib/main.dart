import 'package:custom_paint_example/page/arc_paint_page.dart';
import 'package:custom_paint_example/page/circle_paint_page.dart';
import 'package:custom_paint_example/page/image_paint_page.dart';
import 'package:custom_paint_example/page/line_paint_page.dart';
import 'package:custom_paint_example/page/rectangle_paint_page.dart';
import 'package:custom_paint_example/page/rounded_rectangle_page.dart';
import 'package:custom_paint_example/page/triangle_paint_page.dart';
import 'package:custom_paint_example/widget/tabbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Custom Paint';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(
            primarySwatch: Colors.deepOrange,
            scaffoldBackgroundColor: Colors.black),
        home: MainPage(),
      );
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => TabBarWidget(
        title: MyApp.title,
        tabs: [
          Tab(icon: Icon(Icons.stacked_line_chart), text: 'Line'),
          Tab(icon: Icon(Icons.crop_landscape), text: 'Rectangle'),
          Tab(icon: Icon(Icons.crop_square), text: 'Rounded Rectangle'),
          Tab(icon: Icon(Icons.circle), text: 'Circle'),
          Tab(icon: Icon(Icons.architecture), text: 'Arc'),
          Tab(icon: Icon(Icons.warning), text: 'Triangle'),
          Tab(icon: Icon(Icons.image), text: 'Image'),
        ],
        children: [
          LinePaintPage(),
          RectanglePaintPage(),
          RoundedRectanglePaintPage(),
          CirclePaintPage(),
          ArcPaintPage(),
          TrianglePaintPage(),
          ImagePaintPage(),
        ],
      );
}
