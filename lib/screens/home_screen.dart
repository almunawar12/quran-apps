import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran_apps/screens/global.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: _appBar(),
      bottomNavigationBar: _bottomNavigationBar(),
      body: SafeArea(child: Text("Home Screen")),
    );
  }

  BottomNavigationBar _bottomNavigationBar() => BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    backgroundColor: gray,
    showSelectedLabels: false,
    showUnselectedLabels: false,
        items: [
          _bottomBar(icon: "assets/svgs/quran-icon.svg", label: "Quran"),
          _bottomBar(icon: "assets/svgs/lamp-icon.svg", label: "Tips"),
          _bottomBar(icon: "assets/svgs/pray-icon.svg", label: "Sholat"),
          _bottomBar(icon: "assets/svgs/doa-icon.svg", label: "Doa"),
          _bottomBar(icon: "assets/svgs/bookmark-icon.svg", label: "Bookmark"),
        ],
      );

  BottomNavigationBarItem _bottomBar(
          {required String icon, required String label}) =>
      BottomNavigationBarItem(
          icon: SvgPicture.asset(
            icon,
            color: text,
          ),
          activeIcon: SvgPicture.asset(
            icon,
            color: primary,
          ),
          label: label);

  AppBar _appBar() {
    return AppBar(
      backgroundColor: background,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/svgs/menu-icon.svg'),
          ),
          const SizedBox(
            width: 24,
          ),
          Text(
            "Quran App",
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/svgs/search-icon.svg'),
          ),
        ],
      ),
    );
  }
}
