import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mytriptokashmir/misc/colors.dart';
import 'package:mytriptokashmir/widgets/app_text.dart';
import 'package:mytriptokashmir/widgets/bg_widget.dart';
import 'package:velocity_x/velocity_x.dart';

class SeeAll extends StatefulWidget {
  const SeeAll({super.key});

  @override
  State<SeeAll> createState() => _SeeAllState();
}

class _SeeAllState extends State<SeeAll> {
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


