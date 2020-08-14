import 'package:bloc/bloc.dart';

class CounterObserver extends BlocObserver{
  @override
  void onChange(Cubit cubit, Change change){
    print('${cubit.runtimeType} $change');
    
    // pass it to super class
    super.onChange(cubit, change);
  }
}