import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:quran_apps/models/surah.dart';
import 'package:quran_apps/screens/global.dart';

class DetailScreen extends StatelessWidget {
  final int noSurat;
  const DetailScreen({super.key, required this.noSurat});

  Future<Surah> _getDataSurah() async {
    var data = await Dio().get("https://equran.id/api/surat/$noSurat");
    return Surah.fromJson(json.decode(data.toString()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: FutureBuilder<Surah>(
        future: _getDataSurah(),
        initialData: null,
        builder: (context, snapshot) => SafeArea(child: Text('$noSurat')),
      ),
    );
  }
}
