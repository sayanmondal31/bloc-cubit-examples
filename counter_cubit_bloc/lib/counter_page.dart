import 'package:counter_cubit_bloc/counter_view.dart';
import 'package:counter_cubit_bloc/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_)=>CounterCubit(),
      child: CounterView(),
    );
  }
}