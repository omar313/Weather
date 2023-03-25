import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color(0xff352163),
              Color(0xff331972),
              Color(0xff33143C)
            ])),
        child: SafeArea(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '7 Days',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 36,
              ),
              Container(
                height: 255,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xff957DCD),
                          Color(0xff725CA5),
                          Color(0xff523D7F)
                        ])),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/cloudy_weather.png'),
                        Expanded(
                          child: Container(
                            height: 100,
                            color: Colors.red,
                            child: Stack(
                              fit: StackFit.loose,
                              children:  [
                                Positioned(
                                    top: 10,
                                    left: 0,
                                    right: 0,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children:  [
                                        const Text(
                                          '23',
                                          style: TextStyle(
                                              fontSize: 45,
                                              fontWeight: FontWeight.w900,
                                              color: Colors.white),
                                        ),
                                        const Text(
                                          '°',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(top: 25.0),
                                          child: Text('/',style: TextStyle(color: Colors.white,fontSize: 30, fontWeight: FontWeight.w700),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top:35.0, left: 10),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                            const Text(
                                              '23',
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white),
                                            ),
                                            const Text(
                                              '°',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.white),
                                            ),
                                          ],),
                                        )
                                      ],
                                    )),


                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
