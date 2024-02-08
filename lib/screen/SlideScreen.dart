import 'package:flutter/material.dart';
import '../model/slide.dart';
import '../widgets/slide_item.dart';
import 'dart:async';
class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  _StartScreenState createState() => _StartScreenState();
}


class _StartScreenState extends State<StartScreen> {
  int _currentPage = 0;

  final PageController _pageController = PageController(
    initialPage: 0
  );

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 5), (Timer timer) {

      if (_currentPage < 2) {
        _currentPage++;
      }
      else {
        _currentPage = 0;
      }
      _pageController.animateToPage(_currentPage, duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
    });

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.all(5),
            child: Column(
              children:<Widget> [
                Expanded(
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: <Widget> [
                    PageView.builder(
                      itemBuilder: (ctx, i) => SlideItem(i),
                      itemCount: slideList.length,
                      scrollDirection: Axis.horizontal,
                      controller: _pageController,
                      onPageChanged: _onPageChanged,
    
                    ),
                  /*       Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget> [
                              for (int i = 0 ; i < slideList.length; i++)
                                if (i == _currentPage)
                                  SlideDots(true)
                              else
                                SlideDots(false)
    
                            ],
                          ),
                        ), */
                      ],
                ),
                ),
              ],
          ),
        );
  }
}