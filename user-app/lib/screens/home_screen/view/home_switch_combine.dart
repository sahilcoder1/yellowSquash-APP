// ignore_for_file: lines_longer_than_80_chars

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:yellow_squash/models/get_updated_user.dart';
import 'package:yellow_squash/screens/UserProfile/cubit/user_profile_cubit.dart';
import 'package:yellow_squash/screens/UserProfile/repository/user_profile_repository.dart';
import 'package:yellow_squash/screens/home_screen/view/new_navigation_bar.dart';
import 'package:yellow_squash/screens/home_screen/view/switch_list.dart';
import 'package:yellow_squash/utils/services/storage_manager.dart';

@RoutePage()
class HomeSwitchCombine extends StatelessWidget {
  const HomeSwitchCombine({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserProfileCubit(UserProfileRepository()),
      child: const HomeSwitchCombineView(),
    );
  }
}

class HomeSwitchCombineView extends StatefulWidget {
  const HomeSwitchCombineView({super.key});

  @override
  State<HomeSwitchCombineView> createState() => _HomeSwitchCombineViewState();
}

class _HomeSwitchCombineViewState extends State<HomeSwitchCombineView> {
  final user = StorageManager.getUserData();
  final getUpdatedUserData = <getUpdatedData>[];

  @override
  void initState() {
    context.read<UserProfileCubit>().getUpdatedProfile(id: user!.id!);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<UserProfileCubit, UserProfileState>(
        listener: (context, state) {
          if (state is GetUpdatedUserLoaded) {
            getUpdatedUserData
              ..clear()
              ..add(state.response.data!);

            log(state.response.data.toString());
            log(getUpdatedUserData.length.toString());
          }
        },
        builder: (context, state) {
          if (state is ErrorState) {
            return const Center(
              child: Padding(
                padding: EdgeInsets.all(28),
                child: Text(
                  'Whoops, looks like we got lost in the digital wilderness. Please try again later.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
            );
          }
          if (state is Loading) {
            return Loader(
              color: yellow,
            );
          }
          return getUpdatedUserData[0].patientDetails!.isNotEmpty
              ? const MySwitchList()
              : const MyNavigationBar();
        },
      ),
    );
  }
}
