import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/bloc/materi_bloc.dart';
import 'package:project1/bloc/perintah_bloc.dart';
import 'package:project1/services/services.dart';
import 'package:project1/ui/pages/pages.dart';

import 'bloc/blocs.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => PageBloc()),
        BlocProvider(create: (_) => MateriBloc(materisRepo: MaterisRepoImpl())),
        BlocProvider(
            create: (_) => LatihanBloc(latihansRepo: LatihansRepoImpl())),
        BlocProvider(
            create: (_) => PerintahBloc(perintahRepo: PerintahRepoImpl())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Wrapper(),
      ),
    );
  }
}
