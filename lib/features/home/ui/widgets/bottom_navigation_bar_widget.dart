import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hk4_ecommerce/core/theming/colors.dart';
import 'package:hk4_ecommerce/features/home/logic/cubit/home_cubit.dart';
import 'package:hk4_ecommerce/features/home/logic/cubit/home_state.dart';

class CustomNavBottom extends StatelessWidget {
  const CustomNavBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return BottomNavigationBar(
          backgroundColor: ColorsManager.lightGray,
          type: BottomNavigationBarType.fixed,
          currentIndex: context.read<HomeCubit>().indexScreen,
          onTap: (index) {
            context.read<HomeCubit>().setIndexScreen(index);
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.cabin), label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favorite'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        );
      },
    );
  }
}
