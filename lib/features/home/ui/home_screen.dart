import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hk4_ecommerce/features/home/logic/cubit/home_cubit.dart';
import 'package:hk4_ecommerce/features/home/logic/cubit/home_state.dart';
import 'package:hk4_ecommerce/features/home/ui/widgets/bottom_navigation_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return WillPopScope(
          onWillPop: ()async{
           return context.read<HomeCubit>().onWillPop(context: context);
          },
          child: Scaffold(
            bottomNavigationBar: const CustomNavBottom(),
            body: context
                .read<HomeCubit>()
                .widgetOptions[context.read<HomeCubit>().indexScreen],
          ),
        );
      },
    );
  }
}
