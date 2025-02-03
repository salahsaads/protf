import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/common/utils/color/colors.dart';
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
          "Flutter supports macOS, Windows, and Linux, making it possible to build apps for desktop platforms."
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
                part4(w: w, h: h)
              ],
            ),
          ),
        ),
      ),
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
