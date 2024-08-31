import 'package:flustars_flutter3/flustars_flutter3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    print(
        "w:${ScreenUtil.getInstance().screenWidth}  h:${ScreenUtil.getInstance().screenHeight}");
    return SafeArea(
      child: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late PageController inner;
  late PageController outer;

  @override
  void initState() {
    super.initState();
    inner = PageController();
    outer = PageController();
    inner.addListener(() {
      //ceilToDouble向上取整   floorToDouble向下取整
      if (inner.page == inner.page!.ceilToDouble() &&
          inner.page == inner.page!.floorToDouble()) {
        outer.nextPage(
            duration: const Duration(milliseconds: 300), curve: Curves.ease);
      }
    });
  }

  @override
  void dispose() {
    outer.dispose();
    inner.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nested PageViews"),
      ),
      body: PageView(
        controller: outer,
        children: [
          Container(
            color: Colors.blue,
            child: Center(
              child: Text('Outer Page 1'),
            ),
          ),
          Container(
              child: PageView(
            controller: inner,
            children: [
              Container(
                color: Colors.blue,
                child: Center(
                  child: Text('inner Page 1'),
                ),
              ),
              Container(
                color: Colors.green,
                child: Center(
                  child: Text('inner Page 2'),
                ),
              ),
              Container(
                color: Colors.limeAccent,
                child: Center(
                  child: Text('inner Page 3'),
                ),
              ),
              Container(
                color: Colors.purpleAccent,
                child: Center(
                  child: Text('inner Page 4'),
                ),
              ),
              Container(
                color: Colors.amberAccent,
                child: Center(
                  child: Text('inner Page 5'),
                ),
              )
              // Add more outer pages as needed
            ],
          )),
          Container(
            color: Colors.green,
            child: Center(
              child: Text('Outer Page 2'),
            ),
          ),
          // Add more outer pages as needed
        ],
      ),
    );
  }
}

// VideoView(
// height: 200.vx,
// isLandscapeVideo: false,
// videoUrl: "https://maiche.jmtv.com.cn/2023/09/07/f16e88b9587c47e490b4fb6198becb59.low.mp4",
// )
