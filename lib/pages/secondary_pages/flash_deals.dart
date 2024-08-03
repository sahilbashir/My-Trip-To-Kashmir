/*import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytriptokashmir/misc/colors.dart';
import 'package:mytriptokashmir/widgets/chewiePlayer.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:video_player/video_player.dart';

class FlashDeals extends StatefulWidget {
  const FlashDeals({super.key});

  @override
  State<FlashDeals> createState() => _FlashDealsState();
}

class _FlashDealsState extends State<FlashDeals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
*/
import 'package:mytriptokashmir/pages/secondary_pages/detail.dart';
import 'package:mytriptokashmir/pages/secondary_pages/todo.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'character.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'detail.dart';

const itemSize = 150.0;

class ShrinkTopListPage extends StatefulWidget {
  @override
  _ShrinkTopListPageState createState() => _ShrinkTopListPageState();
}

class _ShrinkTopListPageState extends State<ShrinkTopListPage> {
  final scrollController = ScrollController();

  void onListen() {
    setState(() {});
  }

  @override
  void initState() {
    characters.addAll(List.from(characters));
    scrollController.addListener(onListen);
    super.initState();
  }

  @override
  void dispose() {
    scrollController.removeListener(onListen);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     //appBar: AppBar(
        //title: Text('Shrink top List'),
      //),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
        child: CustomScrollView(
          controller: scrollController,
          slivers: <Widget>[
            const SliverToBoxAdapter(
              child:SizedBox(
                height: 50,
              )
              //Placeholder(
                //fallbackHeight: 100.0,
              //),
            ),
            SliverAppBar(
              automaticallyImplyLeading: false,
              title: Text(
                'Places',
                style: GoogleFonts.rowdies(fontSize: 30,color: Colors.black)
              ),
              pinned: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            SliverToBoxAdapter(
              child: const SizedBox(
                height: 50,
              ),
            ),
            //10.heightBox,
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  final heightFactor = 0.6;
                  final character = characters[index];
                  final itemPositionOffset = index * itemSize * heightFactor;
                  final difference =
                      scrollController.offset - itemPositionOffset;
                  final percent =
                      1.0 - (difference / (itemSize * heightFactor));
                  double opacity = percent;
                  double scale = percent;
                  if (opacity > 1.0) opacity = 1.0;
                  if (opacity < 0.0) opacity = 0.0;
                  if (percent > 1.0) scale = 1.0;

                  return Align(
                      heightFactor: heightFactor,
                      child: Opacity(
                        opacity: opacity,
                        child: Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.identity()..scale(scale, 1.0),
                          child: InkWell(
                            onTap: () {
                              Get.to(()=>DetailPage(imageUrl: character.avatar!,
                                title: character.title!,
                                description: character.description!,)
                              );
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50.0),
                                  topRight: Radius.circular(50.0),
                                ),
                              ),
                              color: Color(character.color!),
                              child:


                              SizedBox(
                                height: itemSize,
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Text(
                                          character.title!,
                                          style: GoogleFonts.rowdies(
                                              fontSize: 35, color: Colors.white),
                                        ),
                                      ),
                                    ),

                                    // Image.network(character.avatar!,),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                  );
                },
                childCount: characters.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
