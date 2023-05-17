import 'package:asdapp/responsive/desktop_body.dart';
import 'package:asdapp/responsive/mobil_body.dart';
import 'package:asdapp/responsive/responsive_layout.dart';
import 'package:asdapp/widgets/ui/appbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        desktopBody: Desktopbody(),
        mobileBody: MobilBody(),
      ),
    );
  }
}
