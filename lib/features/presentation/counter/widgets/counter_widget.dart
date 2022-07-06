import 'package:algoriza_task_1/features/presentation/counter/cubit/cubit.dart';
import 'package:algoriza_task_1/features/presentation/counter/cubit/states.dart';
import 'package:algoriza_task_1/features/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterWidgets extends StatelessWidget {
  const CounterWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: ( context) { return CounterCubit(); },
        child: BlocConsumer<CounterCubit,CounterStates>(
          listener: ( context,  state) {  },
          builder: ( context, state) {
            return  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(onPressed: (){
                      CounterCubit.get(context).decrement();
                    },child: const Icon(Icons.minimize),
                    backgroundColor: kPrimaryColor,),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      '${CounterCubit.get(context).counter}',
                      style: Theme
                          .of(context)
                          .textTheme
                          .headline4,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    FloatingActionButton(onPressed: (){CounterCubit.get(context).increment();},child: const Icon(Icons.plus_one),backgroundColor: kPrimaryColor,),
                  ],
                ),
              ],
            );
          },

        ),
      ),
    );
  }
}
