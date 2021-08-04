import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

// this will be the header of my website
class HeaderView extends StatelessWidget {
  const HeaderView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // to make our website more responsive we use the libarary that is mentiond below
    return ResponsiveBuilder(
      builder: (_, size) {
        // this condition indicates that if its mobile view or not
        if (size.isMobile) return HeaderMobileView();
        return Container(
          height: 800, //its height
          width: 1100, //its width
          // to add padding to the actuall website we use this code below to add padding
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              //a chiled of the intial container and we make a row on it
              children: [
                //we make some childern and put it in the intial row of the container
                Expanded(
                  child: Column(
                    //and we make a columen with some text widgets
                    //this code below basicly says put the texts in the center
                    mainAxisAlignment: MainAxisAlignment.center,
                    //this code below basicly says make them align to the start of the page

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //the column will also have some childern which are text widgets
                      // the text widgits
                      Text(
                        'I\'m a C++ and Dart ',
                        style: GoogleFonts.montserrat(fontSize: 60),
                      ),
                      Text(
                        'Developer </>',
                        style: GoogleFonts.montserrat(fontSize: 60),
                      ),
                      SizedBox(height: 37),
                      Text(
                        'IF you want a Game developer or a Mobile App developer... look no further!',
                        style: TextStyle(fontSize: 24),
                      ),
                      SizedBox(height: 40),
                      // it will also have a button widgit made to contact me
                      TextButton(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          backgroundColor: Colors.redAccent,
                        ),

                        //when pressed contact me
                        /*to do code in here */
                        onPressed: () {},
                        // the text that is inside the button
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 17,
                            horizontal: 15,
                          ),
                          child: Text(
                            'just give me a call!',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                // my picture
                FlutterLogo(
                  size: 300,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

// this state less widgit is used when our website is in mobile view
class HeaderMobileView extends StatelessWidget {
  const HeaderMobileView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // we take the height and the width of it and we only need the 90% of the hight
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      height: height * 0.9,
      width: width,
    );
  }
}
