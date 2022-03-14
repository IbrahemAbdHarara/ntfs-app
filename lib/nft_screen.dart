import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foode_app/fade.dart';

class NftScreen extends StatelessWidget {
  const NftScreen({Key? key, required this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Hero(tag: image, child: Image.asset(image)),
              Positioned(
                  bottom: 10,
                  left: 10,
                  child: FAdeAnimation(
intervalEnd: 0.1,

                    child: Container(
                      width: 160,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white.withOpacity(0.1),
                      ),
                      child: const Text(
                        'Digial NFT Art',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: FAdeAnimation(
              intervalStart: 0.3,
              child: Text(
                'harara  #2001',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: FAdeAnimation(
              intervalStart: 0.35,
              child: Text(
                'Owned by Gennady',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white70),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FAdeAnimation(
              intervalStart: 0.4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  _InfoTile(
                    title: '15d 6h 6m',
                    subtitle: 'Remaing',
                  ),
                  _InfoTile(
                    title: '76.9 ETN',
                    subtitle: 'Remaing',
                  ),
           SizedBox(width: 40,)
                ],
              
              ),
            ),
            

          ),
          const Spacer(),
          FAdeAnimation(
intervalStart: 0.6,
            child: Container(
              width: double.infinity,
              height: 50,
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xff3000ff),
              ),
              child: const FAdeAnimation(
                intervalStart: 0.8,
                child: Text(
                  'place Bid',
                  
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _InfoTile extends StatelessWidget {
  const _InfoTile({Key? key, required this.title, required this.subtitle})
      : super(key: key);
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          subtitle,
          style: const TextStyle(
            color: Colors.white70,
          ),
        )
      ],
    );
  }
}
