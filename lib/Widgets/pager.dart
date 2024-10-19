import 'package:bakers/models/PagerModel.dart';
import 'package:flutter/material.dart';

class Pager extends StatefulWidget {
  Pager({super.key});

  List<Pagermodel> pages = [
    Pagermodel(imgUrl: 'assets/cake1.jpeg', logo: "Angel bakers"),
    Pagermodel(imgUrl: 'assets/cake2.jpeg', logo: "Angel bakers"),
    Pagermodel(imgUrl: 'assets/cake3.jpeg', logo: "Angel bakers"),
  ];

  @override
  State<Pager> createState() => _PagerState();
}

class _PagerState extends State<Pager> {
  int currentPage = 0;
  PageController? controller;

  @override
  void initState() {
    // Initializing the page controller
    controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    // Disposing the controller
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: Column(
        children: [
          Expanded(
              child: PageView(
            scrollDirection: Axis.horizontal,
            pageSnapping: true,
            controller: controller,
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
            children: List.generate(widget.pages.length, (index) {
              return Container(
                alignment: Alignment.bottomLeft,
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.2),
                      blurRadius: 10,
                      offset: const Offset(0.0, 5.0),
                    )
                  ],
                  image: DecorationImage(
                    image: AssetImage(widget.pages[currentPage].imgUrl!),
                    fit: BoxFit.cover,
                  ),
                  
                ),
                child: Text(widget.pages[currentPage].logo!,
                    style: const TextStyle(
                      color: Colors.white
                    ),)
              );
            }),
          ))
        ],
      ),
    );
  }
}
