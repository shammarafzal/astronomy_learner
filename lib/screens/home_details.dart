import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:astronomy_learner/data/swiper_data.dart';
import '../constants/constants.dart';

class HomeDetails extends StatefulWidget {
  const HomeDetails({Key? key}) : super(key: key);

  @override
  State<HomeDetails> createState() => _HomeDetailsState();
}

class _HomeDetailsState extends State<HomeDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [gradientStartColor, gradientEndColor],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.3,0.7]
          )
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      'Explore',
                      style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 44,
                          color: titleTextColor,
                          fontWeight: FontWeight.w900
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      'Solar System',
                      style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 24,
                          color: contentTextColor,
                          fontWeight: FontWeight.w500
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  // DropdownButton<String>(
                  //   items: [
                  //   const DropdownMenuItem(child: const Text(
                  //     'Solar System',
                  //     style: TextStyle(
                  //         fontFamily: 'Avenir',
                  //         fontSize: 24,
                  //         color: contentTextColor,
                  //         fontWeight: FontWeight.w500
                  //     ),
                  //     textAlign: TextAlign.left,
                  //   ),
                  //   )
                  // ],
                  //   onChanged: (value){
                  //
                  // },
                  // icon: Padding(
                  //   padding: const EdgeInsets.only(left: 16.0),
                  //   child: Image.asset("assets/drop_down_icon.png"),
                  // ),
                  //   underline: const SizedBox(),
                  // )
                ],
              ),
            ),
            Container(
              height: 500,
              padding: EdgeInsets.only(left: 32),
              child: Swiper(
                itemCount: planets.length,
                itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                layout: SwiperLayout.STACK,
                pagination: SwiperPagination(
                  builder: DotSwiperPaginationBuilder(
                      activeSize: 20,
                      space: 8
                  ),
                ),
                itemBuilder: (context, index){
                  return InkWell(
                    onTap: (){
                      Navigator.of(context).pushNamed(
                          '/planet_details',
                          arguments: {'planetInfo': planets[index]});
                    },
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 100,
                            ),
                            Card(
                              elevation: 8,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32)
                              ),
                              color: titleTextColor,
                              child: Padding(
                                padding: const EdgeInsets.all(32.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 100,
                                    ),
                                    Text(
                                      planets[index].name,
                                      style: TextStyle(
                                        fontFamily: 'Avenir',
                                        fontSize: 44,
                                        color: const Color(0xff47455f),
                                        fontWeight: FontWeight.w900,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      "Solar System",
                                      style: TextStyle(
                                        fontFamily: 'Avenir',
                                        fontSize: 23,
                                        color: primaryTextColor,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    SizedBox(height: 32),
                                    Row(
                                      children: [
                                        Text(
                                          "Know more",
                                          style: TextStyle(
                                            fontFamily: 'Avenir',
                                            fontSize: 18,
                                            color: secondaryTextColor,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                        Icon(
                                          Icons.arrow_forward, color: secondaryTextColor,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        Hero(
                            tag: planets[index].position,
                            child: Image.asset(planets[index].iconImage))
                      ],
                    ),
                  );
                },

              ),
            )
          ],
        ),
      ),
    );
  }
}
