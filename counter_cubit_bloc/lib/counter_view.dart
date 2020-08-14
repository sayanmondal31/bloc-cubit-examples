
import 'package:counter_cubit_bloc/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter with cubit"),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: Icon(
              Icons.add
            ),
            // from counter cubit we are taking increament function and using in current context 
            onPressed: () => context.bloc<CounterCubit>().increament(),
          ),
          SizedBox(height: 10,),
          FloatingActionButton(
            child: Icon(
              Icons.remove
            ),
            // from counter cubit we are taking decreament function and using in current context 
            onPressed: () => context.bloc<CounterCubit>().decreament(),
          ),
        ],
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            return Text('number $state ');
          },
        ),
      ),
    );
  }
}
