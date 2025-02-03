import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/common/utils/color/colors.dart';
import 'package:portfolio/features/Home/widget/CustomTextButton.dart';
import 'package:portfolio/features/about/presentation/part3.dart';
import 'package:portfolio/main.dart';
import '../../service/presentation/service.dart';
import '../widget/part1.dart'; // Ensure this file contains the necessary imports and definitions.

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ScrollController _scrollController = ScrollController();
  @override
  void dispose() {
    // TODO: implement
    _scrollController.dispose();
    super.dispose();
  }

  List<Map<String, String>> platformsWithIndex = [
    {
      "index": "0",
      "platform": "iOS and Android",
      "description":
          "With a single codebase, you can build apps for both iOS and Android."
    },
    {
      "index": "1",
      "platform": "Web",
      "description":
          "Flutter also supports web applications, meaning you can run your Flutter app in a web browser."
    },
    {
      "index": "2",
      "platform": "Desktop",
      "description":
          "Flutter supports macOS, Windows,  and Linux, making it possible to build apps for desktop platforms."
    }
  ];

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colorss.PrimaryColor,
      body: Theme(
        data: ThemeData(
          scrollbarTheme: ScrollbarThemeData(
            thumbColor: WidgetStateProperty.all(Colors.orange), // لون الشريط
            trackColor:
                WidgetStateProperty.all(Colors.grey.shade300), // لون المسار
            trackBorderColor:
                WidgetStateProperty.all(Colors.transparent), // إزالة الحدود
            radius: Radius.circular(8), // تدوير الزوايا
            thickness: WidgetStateProperty.all(8), // حجم الشريط
          ),
        ),
        child: Scrollbar(
          controller: _scrollController,
          thumbVisibility: true,
          child: SingleChildScrollView(
            controller: _scrollController,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                part1(w: w, h: h),
                part2(h: h, w: w, platformsWithIndex: platformsWithIndex),
                part3(h: h, w: w),
                part4(w: w, h: h),
                part5(w: w, h: h),
                Container(
                    width: w,
                    height: h * 0.7,
                    color: Colorss.ContainerColor2,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: w * 0.1, right: w * 0.1, top: h * 0.1),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/LOGO.svg'),
                          SizedBox(
                            height: h * .1,
                          ),
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomTextButton(
                                isSelected: false,
                                text: 'Home',
                                onPressed: () {},
                              ),
                              SizedBox(
                                width: w * 0.01,
                              ),
                              CustomTextButton(
                                text: 'Services',
                                onPressed: () {},
                              ),
                              SizedBox(
                                width: w * 0.01,
                              ),
                              CustomTextButton(
                                text: 'About me',
                                onPressed: () {},
                              ),
                              SizedBox(
                                width: w * 0.01,
                              ),
                              CustomTextButton(
                                text: 'Portfolio',
                                onPressed: () {},
                              ),
                              SizedBox(
                                width: w * 0.01,
                              ),
                              CustomTextButton(
                                text: 'Contact me',
                                onPressed: () {},
                              ),
                            ],
                          ),
                          SizedBox(
                            height: h * .05,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: w * 0.025,
                                height: w * 0.025,
                                child: SvgPicture.asset('assets/Vector.svg'),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colorss.TextColor1,
                                      width: .5,
                                    )),
                              ),
                              SizedBox(
                                width: w * 0.02,
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: SvgPicture.asset(
                                    'assets/mingcute_linkedin-line.svg'),
                                width: w * 0.025,
                                height: w * 0.025,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colorss.TextColor1,
                                      width: .5,
                                    )),
                              ),
                              SizedBox(
                                width: w * 0.02,
                              ),
                              Container(
                                width: w * 0.025,
                                height: w * 0.025,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colorss.TextColor1,
                                      width: .5,
                                    )),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: h * .05,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.email_outlined,
                                color: Colorss.TextColor1,
                              ),
                              SizedBox(
                                width: w * 0.001,
                              ),
                              Text(
                                'kassabkasb@gmail.com',
                                style: GoogleFonts.lato(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colorss.TextColor1),
                              ),
                              SizedBox(
                                width: w * .05,
                              ),
                              Icon(
                                Icons.phone_outlined,
                                color: Colorss.TextColor1,
                              ),
                              SizedBox(
                                width: w * 0.001,
                              ),
                              Text(
                                '+201063012453',
                                style: GoogleFonts.lato(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colorss.TextColor1),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: h * .05,
                          ),
                          Divider(
                            endIndent: w * 0.25,
                            indent: w * 0.25,
                            color: Colorss.TextColor1,
                          ),
                          SizedBox(
                            height: h * .05,
                          ),
                          Row(
                            
                            children: [
                              Icon(
                                Icons.copyright_outlined,
                                color: Colorss.TextColor1,
                              ),
                              SizedBox(
                                width: w * 0.01,
                              ),
                              Text(
                                'Developed by Salah Saad',
                                style: GoogleFonts.lato(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colorss.TextColor1),
                              )
                            ],
                          )
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class part5 extends StatelessWidget {
  const part5({
    super.key,
    required this.w,
    required this.h,
  });

  final double w;
  final double h;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
      height: h * 1.2,
      color: Colorss.PrimaryColor,
      child: Padding(
        padding: EdgeInsets.only(left: w * 0.1, right: w * 0.1, top: h * 0.1),
        child: Column(
          children: [
            Text(
              'Contact me',
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                  fontSize: ResponsiveFontsize.responsiveFontSize(context, 40),
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: h * 0.05,
            ),
            Text(
              'I am available for freelance work. Connect with me via phone or email or contact form.',
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                  fontSize: ResponsiveFontsize.responsiveFontSize(context, 14),
                  fontWeight: FontWeight.w500,
                  color: Colorss.TextColor1,
                ),
              ),
            ),
            SizedBox(
              height: h * 0.1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customtextfeild(title: 'Name', w: w),
                SizedBox(
                  width: w * 0.05,
                ),
                customtextfeild(title: 'Email', w: w)
              ],
            ),
            SizedBox(
              height: h * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customtextfeild(title: 'Phone', w: w),
                SizedBox(
                  width: w * 0.05,
                ),
                customtextfeild(title: 'Time Line', w: w)
              ],
            ),
            SizedBox(
              height: h * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: w * .75,
                  decoration: BoxDecoration(
                    color: Colorss.ContainerColor2,
                    borderRadius: BorderRadius.circular(
                        w * 0.008), // تحديد نصف قطر الزوايا
                  ),
                  child: TextFormField(
                      maxLines: 5,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(
                                w * 0.008), // تحديد نصف قطر الزوايا
                          ),
                          hintText: 'Enter your message',
                          hintStyle: GoogleFonts.lato(
                            textStyle: TextStyle(
                              fontSize: ResponsiveFontsize.responsiveFontSize(
                                  context, 14),
                              fontWeight: FontWeight.w400,
                              color: Colorss.TextColor1,
                            ),
                          ))),
                ),
              ],
            ),
            SizedBox(
              height: h * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: w * .02),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(w * 0.04, h * 0.08),
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(w * 0.008),
                            side: BorderSide(
                              color: Colorss.TextColor1,
                              width: 2,
                            )),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Send',
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(
                          fontSize: ResponsiveFontsize.responsiveFontSize(
                              context, 14),
                          fontWeight: FontWeight.w600,
                          color: Colorss.TextColor1,
                        )),
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class customtextfeild extends StatelessWidget {
  const customtextfeild({
    super.key,
    required this.w,
    required this.title,
  });

  final double w;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w * 0.35,
      decoration: BoxDecoration(
        color: Colorss.ContainerColor2,
        borderRadius: BorderRadius.circular(w * 0.008), // تحديد نصف قطر الزوايا
      ),
      child: TextFormField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius:
                    BorderRadius.circular(w * 0.008), // تحديد نصف قطر الزوايا
              ),
              hintText: title,
              hintStyle: GoogleFonts.lato(
                textStyle: TextStyle(
                  fontSize: ResponsiveFontsize.responsiveFontSize(context, 14),
                  fontWeight: FontWeight.w400,
                  color: Colorss.TextColor1,
                ),
              ))),
    );
  }
}

class part4 extends StatefulWidget {
  const part4({
    super.key,
    required this.w,
    required this.h,
  });

  final double w;
  final double h;

  @override
  State<part4> createState() => _part4State();
}

class _part4State extends State<part4> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: widget.w * 0.1, right: widget.w * 0.1, top: widget.h * 0.1),
      child: Container(
        width: widget.w,
        height: widget.h * 2.5,
        color: Colorss.PrimaryColor,
        child: Column(
          children: [
            Text(
              'Portfolio',
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                  fontSize: ResponsiveFontsize.responsiveFontSize(context, 40),
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: widget.h * 0.1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomBustom(
                    onPressed: () {
                      setState(() {
                        _currentIndex = 0;
                      });
                    },
                    color: _currentIndex == 0
                        ? Colorss.ColorOrange1
                        : Colorss.ContainerColor1,
                    title: 'All',
                    w: widget.w,
                    h: widget.h),
                SizedBox(
                  width: widget.w * .05,
                ),
                CustomBustom(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 1;
                    });
                  },
                  color: _currentIndex == 1
                      ? Colorss.ColorOrange1
                      : Colorss.ContainerColor1,
                  title: 'Website',
                  w: widget.w,
                  h: widget.h,
                ),
                SizedBox(
                  width: widget.w * .05,
                ),
                CustomBustom(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 2;
                    });
                  },
                  color: _currentIndex == 2
                      ? Colorss.ColorOrange1
                      : Colorss.ContainerColor1,
                  title: 'App mobile',
                  w: widget.w,
                  h: widget.h,
                ),
                SizedBox(
                  width: widget.w * .05,
                ),
                CustomBustom(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 3;
                    });
                  },
                  color: _currentIndex == 3
                      ? Colorss.ColorOrange1
                      : Colorss.ContainerColor1,
                  title: 'App desktop',
                  w: widget.w,
                  h: widget.h,
                ),
              ],
            ),
            SizedBox(
              height: widget.h * 0.08,
            ),
            HoverGridView(),
          ],
        ),
      ),
    );
  }
}

class CustomBustom extends StatelessWidget {
  const CustomBustom({
    super.key,
    required this.w,
    required this.h,
    required this.title,
    required this.color,
    required this.onPressed,
  });

  final double w;
  final double h;
  final String title;
  final Color color;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(w * 0.04, h * 0.08),
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(w * 0.008),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: GoogleFonts.lato(
          textStyle: TextStyle(
              fontSize: ResponsiveFontsize.responsiveFontSize(context, 14),
              fontWeight: FontWeight.w300,
              color: Colors.white),
        ),
      ),
    );
  }
}

class HoverGridView extends StatefulWidget {
  @override
  _HoverGridViewState createState() => _HoverGridViewState();
}

class _HoverGridViewState extends State<HoverGridView> {
  final List<String> images =
      List.generate(8, (index) => 'assets/Rectangle 21.png');

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // 3 columns
        crossAxisSpacing: 10, // Horizontal space between items
        mainAxisSpacing: 10, // Vertical space between items
      ),
      itemCount: images.length, // Number of items in the grid
      itemBuilder: (context, index) {
        return HoverItem(image: images[index]);
      },
    );
  }
}

class HoverItem extends StatefulWidget {
  final String image;
  HoverItem({required this.image});

  @override
  _HoverItemState createState() => _HoverItemState();
}

class _HoverItemState extends State<HoverItem> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200), // Smooth transition time
        curve: Curves.easeInOut, // Smooth transition curve
        decoration: BoxDecoration(
          color: _isHovered
              ? Colorss.ColorOrange1
              : Colorss.ContainerColor1, // Color change on hover
          borderRadius: BorderRadius.circular(10), // Rounded corners
          image: DecorationImage(
            image: AssetImage(widget.image),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: AnimatedOpacity(
            opacity: _isHovered ? 1.0 : 0.0, // Text appears on hover
            duration: Duration(milliseconds: 200),
            child: Text(
              'Item',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
