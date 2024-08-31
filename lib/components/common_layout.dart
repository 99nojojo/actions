import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_actions/static/static.dart';
import 'package:flutter_actions/utils/utils.dart';
import 'package:rxdart/rxdart.dart';

///搜索布局
class SearchLayout extends StatefulWidget {
  const SearchLayout(
      {super.key,
      this.title = "",
      this.titleColor = const Color(0xff9faab9),
      this.bgColor = const Color(0xfff3f7fb),
      this.height = 24,
      this.adverHints = const <String>[]});

  final String title;
  final Color? titleColor;
  final Color? bgColor;
  final double height;
  final List<String>? adverHints;

  @override
  State<SearchLayout> createState() => _SearchLayoutState();
}

class _SearchLayoutState extends State<SearchLayout> {
  BehaviorSubject<String>? titleControler;
  Timer? timer;
  int index = 0;

  @override
  void initState() {
    titleControler = BehaviorSubject<String>.seeded(widget.title);
    loopTitle();
  }

  void loopTitle() {
    if (widget.adverHints!.isNotEmpty) {
      var count = widget.adverHints!.length;
      timer?.cancel();
      timer = Timer.periodic(const Duration(seconds: 3), (timer) {
        var position = (++index) % count;
        titleControler?.add(widget.adverHints![position]);
      });
    }
  }

  @override
  void dispose() {
    titleControler?.close();
    timer?.cancel();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant SearchLayout oldWidget) {
    loopTitle();
  }

  @override
  void didChangeDependencies() {
    loopTitle();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: widget.bgColor!,
          borderRadius: const BorderRadius.all(Radius.circular(4))),
      padding: EdgeInsets.only(left: 8.hx),
      alignment: Alignment.centerLeft,
      height: widget.height,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            ICON_SEARCH,
            width: 10.hx,
            height: 10.hx,
          ),
          4.hGap,
          StreamBuilder<String>(
              initialData: titleControler!.value,
              stream: titleControler!.stream,
              builder: (_, snapt) {
                var title = snapt.data!;
                if (title.isEmpty) return const SizedBox.shrink();
                return Text(
                  title,
                  style: getTextStyle(
                      size: 9, isBold: true, color: widget.titleColor!),
                );
              })
        ],
      ),
    );
  }
}

///加载页面
class LoadingContainer extends StatelessWidget {
  const LoadingContainer({super.key, required this.child, required this.show, required this.loadView});

  final Widget child;
  final Widget loadView;
  final bool show;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [child, if (show) loadView],
    );
  }
}
