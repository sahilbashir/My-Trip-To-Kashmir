

/*

import 'package:flutter/material.dart';

import 'package:velocity_x/velocity_x.dart';

import '../../misc/colors.dart';
import '../../widgets/app_text.dart';
import '../../widgets/bg_widget.dart';

class BarItemPage extends StatelessWidget {
  const BarItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

List images=[
  "assets/img/welcome_one.png",
  "assets/img/welcome_two.png",
  "assets/img/welcome_three.jpg",
  "assets/img/welcome_four.jpg",
  "assets/img/welcome_one.png",
  "assets/img/welcome_one.png",
  "assets/img/welcome_one.png",
      "assets/img/welcome_one.png",
  "assets/img/welcome_two.png",
  "assets/img/welcome_three.jpg",
  "assets/img/welcome_four.jpg",
  "assets/img/welcome_one.png",
];

List names=[
  "Gulmarg",
  "Pahalgam",
  "Gurez",
  "Sonamarg",
  "Srinagar",
  "Baramulla",
  "Aharbal",
  "Bangus Valley",
  "Lolab Valley",
  "Betaab valley",
  "Aru Valley",
  "Pampore"
];

List prices=[
  "\$6000",
  "\$7000",
  "\$4000",
  "\$3000",
  "\$9000",
  "\$8000",
  "\$1000",
  "\$2000",
  "\$9000",
  "\$4000",
  "\$5000",
  "\$7000",
];

    return Scaffold(
      body: bgWidget(

        child: Container(
          padding: const EdgeInsets.all(12),
          child: GridView.builder(
              shrinkWrap:true,
              itemCount: images.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 12,crossAxisSpacing: 10,mainAxisExtent: 200), itemBuilder: (context,index){
            return Column(
              children: [
                //Image.asset(images[index],height: 120,width: 200,fit: BoxFit.cover,),

                VxSwiper.builder(
                    autoPlay: true,
                    aspectRatio: 16/9,

                    itemCount: 3, itemBuilder: (context,index){
                  return Image.asset(images[index],height: 200,width: 300,fit: BoxFit.cover).box.roundedFull.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 1)).make();
                }),
                10.heightBox,
               // names[index].text.color(Colors.black).align(TextAlign.center).make(),
              AppText(text: names[index],color: AppColors.bigTextColor,size: 22,),
                10.heightBox,
                AppText(text: prices[index],color: AppColors.textColor1,size: 18,),
              ],
            ).box.white.rounded.clip(Clip.antiAlias).outerShadowSm.make().onTap(() {


            });
          }),
        ),
      ),

    );
  }
}

*/

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mytriptokashmir/widgets2/locations_widget.dart';

import '../../misc/colors.dart';

class BarItemPage extends StatelessWidget {
  const BarItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.lightBackgroundGray,
      body: LocationsWidget()
    );
  }
}
