import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytriptokashmir/Authentication/provider/auth_provider.dart';
import 'package:mytriptokashmir/misc/colors.dart';
import 'package:provider/provider.dart';

class MyPopupMenu2 extends StatefulWidget {
  final Widget child;

  MyPopupMenu2({Key? key, required this.child})
      : assert(child.key != null),
        super(key: key);

  @override
  _MyPopupMenu2State createState() => _MyPopupMenu2State();
}

class _MyPopupMenu2State extends State<MyPopupMenu2> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: widget.child,
      onTap: _showPopupMenu,
    );
  }

  void _showPopupMenu() {
    //Find renderbox object
    RenderBox renderBox = (widget.child.key as GlobalKey).currentContext
        ?.findRenderObject() as RenderBox;
    Offset position = renderBox.localToGlobal(Offset.zero);

    showCupertinoDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return PopupMenuContent(
            position: position,
            size: renderBox.size,
            onAction: (x) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                duration: Duration(seconds: 1),
                content: Text('Action => $x'),
              ));
            },
          );
        }
    );
  }
}

class PopupMenuContent extends StatefulWidget {
  final Offset position;
  final Size size;
  final ValueChanged<String>? onAction;

  const PopupMenuContent(
      {Key? key, required this.position, required this.size, this.onAction})
      : super(key: key);

  @override
  _PopupMenuContentState createState() => _PopupMenuContentState();
}

class _PopupMenuContentState extends State<PopupMenuContent>
    with SingleTickerProviderStateMixin {
  //Let's create animation
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200));
    _animation = Tween<double>(begin: 1.0, end: 1.0).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeOut));
    super.initState();

    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      _animationController.forward();
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ap = Provider.of<AuthProvider>(context, listen: false);
    return WillPopScope(
      onWillPop: () async {
        _closePopup("");
        return false;
      },
      child: GestureDetector(
        onTap: () => _closePopup(""),
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            height: double.maxFinite,
            width: double.maxFinite,
            color: Colors.transparent,
            child: Stack(
              children: [
                Positioned(
                    left: 0,
                    //right:  (MediaQuery.of(context).size.width - widget.position.dx) - widget.size.width,
                    right: 20,
                    top: widget.position.dy,
                    child: AnimatedBuilder(
                      animation: _animationController,
                      builder: (context, child) {
                        return Transform.scale(
                          scale: _animation.value,
                          alignment: Alignment.topRight,
                          child: Opacity(opacity: _animation.value,
                              child: child),
                        );
                      },
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.symmetric(
                              horizontal: 24, vertical: 64),
                          margin: EdgeInsets.only(left: 54),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(24),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(.0),
                                  blurRadius: 8,
                                )
                              ]
                          ),
                          child: Column(
                            children: [
                              //  Text("hdh"),

                              SizedBox(height: 20,),
                              CircleAvatar(

                                backgroundColor: AppColors.textColor1,
                                backgroundImage: NetworkImage(
                                    ap.userModel.profilePic),
                                radius: 150,
                              ),
                              SizedBox(height: 20,),

                              //SizedBox(height: 15,),
                              //Text(ap.userModel.name,style: GoogleFonts.rowdies(fontSize: 22,fontWeight: FontWeight.bold),),
                              // SizedBox(height: 8,),
                              //   Text(ap.userModel.phoneNumber,style: GoogleFonts.rowdies(fontSize: 18),),
                              //     SizedBox(height: 8,),
                              //       Text(ap.userModel.email,style: GoogleFonts.rowdies(fontSize: 18),),
                              //         SizedBox(height: 8,),
                              //           Text("My Bio :"+ap.userModel.bio,style: GoogleFonts.rowdies(fontSize: 18),),
                            ],
                          ),
                        ),
                      ),
                    )
                ),
              ],
            ),
          ),
        ),
      ),
    );
    //],
    //),
    //),
    //),
    //),
    //);
  }

  void _closePopup(String action) {
    _animationController.reverse().whenComplete(() {
      Navigator.of(context).pop();

      if (action.isNotEmpty) widget.onAction?.call(action);
    });
  }
}