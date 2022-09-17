import 'package:astronomy_learner/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class PlanetDetails extends StatefulWidget {
  const PlanetDetails({Key? key}) : super(key: key);

  @override
  State<PlanetDetails> createState() => _PlanetDetailsState();
}

class _PlanetDetailsState extends State<PlanetDetails> {
  late BannerAd _bannerAd;
  late InterstitialAd _interstitialAd;
  bool _isAdLoaded = false;

  @override
  initState(){
    super.initState();
    _initBannerAd();
    _initInterstitialAd();
  }
  _initBannerAd(){
    _bannerAd = BannerAd(size: AdSize.banner, adUnitId: BannerAd.testAdUnitId
    // dotenv.get('BannerAD_ID_Android', fallback: BannerAd.testAdUnitId)
        , listener: BannerAdListener(
      onAdLoaded: (ad){
        setState((){
          _isAdLoaded = true;
        });
      },
      onAdFailedToLoad: (ad, error){}
    ), request: AdRequest());
    _bannerAd.load();
  }
  _initInterstitialAd(){
    InterstitialAd.load(adUnitId: InterstitialAd.testAdUnitId
    // dotenv.get('InterAD_ID_Android', fallback: InterstitialAd.testAdUnitId)
        , request: AdRequest(), adLoadCallback: InterstitialAdLoadCallback(onAdLoaded: onAdLoaded, onAdFailedToLoad: (error){}));
  }
  void onAdLoaded(InterstitialAd ad){
    _interstitialAd = ad;
    _isAdLoaded = true;
    _interstitialAd.fullScreenContentCallback = FullScreenContentCallback(
      onAdDismissedFullScreenContent: (ad){
          _interstitialAd.dispose();
      },
      onAdFailedToShowFullScreenContent: (ad, error){
        _interstitialAd.dispose();
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 300,),
                        Text(
                          arguments["planetInfo"].name ?? '',
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 56,
                            color: primaryTextColor,
                            fontWeight: FontWeight.w900,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "Solar System",
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 31,
                            color: primaryTextColor,
                            fontWeight: FontWeight.w300,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Divider(color: Colors.black38,),
                        SizedBox(height: 32,),
                        Text(
                          arguments["planetInfo"].description ?? '',
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 20,
                            color: contentTextColor,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: (){
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return Dialog(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                                    elevation: 16,
                                    child: SizedBox(
                                      height: MediaQuery.of(context).size.height * 0.5,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          IconButton(onPressed: (){
                                            Navigator.pop(context);
                                            if(_isAdLoaded){
                                            _interstitialAd.show();
                                            }

                                          }, icon: Icon(Icons.cancel_outlined)),
                                          SizedBox(
                                            height: MediaQuery.of(context).size.height * 0.42,
                                            child: ListView(
                                              shrinkWrap: true,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 28),
                                                  child: Text(
                                              arguments["planetInfo"].description ?? '',
                                              style: TextStyle(
                                                  fontFamily: 'Avenir',
                                                  fontSize: 20,
                                                  color: contentTextColor,
                                                  fontWeight: FontWeight.w500,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              );

                            },
                            child: Text(
                              "Read more",
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 18,
                                color: secondaryTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ),
                        SizedBox(height: 32,),
                        // Divider(color: Colors.black38,),
                        // Text(
                        //   "3D Modal",
                        //   style: TextStyle(
                        //     fontFamily: 'Avenir',
                        //     fontSize: 25,
                        //     color: primaryTextColor,
                        //     fontWeight: FontWeight.w300,
                        //   ),
                        //   textAlign: TextAlign.left,
                        // ),
                        // Align(
                        //   alignment: Alignment.center,
                        //   child: SizedBox(
                        //     width: MediaQuery.of(context).size.width * 0.8,
                        //     height: 450,
                        //     child: ModelViewer(
                        //       src: arguments["planetInfo"].modal,
                        //       alt: "A 3D model of an ${arguments["planetInfo"].name}",
                        //       ar: true,
                        //       autoRotate: true,
                        //       cameraControls: true,
                        //     ),
                        //   ),
                        // ),
                        Divider(color: Colors.black38,),
                        Text(
                          "Gallery",
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 25,
                            color: primaryTextColor,
                            fontWeight: FontWeight.w300,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Container(
                          height: 250,
                          child: ListView.builder(
                              itemCount: arguments["planetInfo"].images.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index){
                            return Card(
                              clipBehavior: Clip.antiAlias,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24)
                              ),
                              child: AspectRatio(
                                  aspectRatio: 1,
                                  child: Image.network(
                                      arguments["planetInfo"].images[index],
                                     fit: BoxFit.cover,
                                  )),
                            );
                          }),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                right: -64,
                child: Hero(
                    tag: arguments["planetInfo"].position,
                    child: Image.asset(arguments["planetInfo"].iconImage))),
            Positioned(
              top: 60,
                left: 32,
              child: Text(
              arguments["planetInfo"].position.toString(),
              style: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 247,
                color: primaryTextColor.withOpacity(0.08),
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.left,
            ),),
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back_ios))
          ],
        ),
      ),
      bottomNavigationBar: _isAdLoaded ? Container(
        height: _bannerAd.size.height.toDouble(),
        width: _bannerAd.size.width.toDouble(),
        child: AdWidget(ad: _bannerAd,),
      ) : SizedBox(),
    );
  }
}
