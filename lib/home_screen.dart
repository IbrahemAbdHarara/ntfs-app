import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foode_app/widget/image_list_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff010101),
      body: Stack(children: [
        Positioned.fill(
          child: ShaderMask(
            blendMode: BlendMode.dstOut,
            shaderCallback: (rect) {
              return LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.transparent,
                  Colors.black.withOpacity(0.8),
                  Colors.black.withOpacity(0.9),
                  Colors.black,
                ],
                stops: const [0, 0.62, 0.67, 0.85, 1],
              ).createShader(rect);
            },
            child: SingleChildScrollView(
              child: Column(
                children: const <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  ImageListView(
                    startInadex: 1,
                    duration: 25,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  ImageListView(
                    startInadex: 11,
                    duration: 45,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  ImageListView(
                    startInadex: 21,
                    duration: 65,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  ImageListView(
                    startInadex: 31,
                    duration: 30,
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: 24,
          right: 24,
          bottom: 60,
          // ignore: sized_box_for_whitespace
          child: Container(
            height: 150,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                'Art with NFTS',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'check out this raffle for you guys only! new minted show some love',
                style: TextStyle(color: Colors.white54, height: 1.2),
              ),
              const Spacer(),
              Container(
                height: 50,
                width: 140,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xff3000ff)
                    //color: Theme.of(context).primaryColor,
                    ),
                child: const Text('Discover',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
              )
            ]),
          ),
        )
      ]),
    );
  }
}
