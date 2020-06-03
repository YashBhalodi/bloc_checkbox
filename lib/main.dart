import 'package:bloccheckbox/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (context) => ProfileBloc(),
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: BlocBuilder<ProfileBloc, ProfileState>(
            builder: (context, state) {
              return Checkbox(
                value: state is BoxSelected ? true : false,
                onChanged: (value) {
                  value
                      ? BlocProvider.of<ProfileBloc>(context).add(BoxChecked())
                      : BlocProvider.of<ProfileBloc>(context).add(BoxUnchecked());
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
