// // ignore_for_file: lines_longer_than_80_chars

// import 'package:auto_route/annotations.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:yellow_squash/models/get_updated_user.dart';
// import 'package:yellow_squash/screens/UserProfile/cubit/user_profile_cubit.dart';
// import 'package:yellow_squash/screens/UserProfile/repository/user_profile_repository.dart';
// import 'package:yellow_squash/utils/common_widgets/loading_indicator.dart';
// import 'package:yellow_squash/utils/services/storage_manager.dart';

// @RoutePage()
// class Checkbotest extends StatelessWidget {
//   const Checkbotest({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => UserProfileCubit(UserProfileRepository()),
//       child: const MyListView(),
//     );
//   }
// }

// class MyListView extends StatefulWidget {
//   const MyListView({super.key});

//   @override
//   State<MyListView> createState() => _MyListViewState();
// }

// class _MyListViewState extends State<MyListView> {
//   final user = StorageManager.getUserData();
//   final getUpdatedUserData = List<getUpdatedData>.empty(growable: true);
//   List<int> selectedIndices = [];

//   @override
//   void initState() {
//     context.read<UserProfileCubit>().getUpdatedProfile(id: user!.id!);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<UserProfileCubit, UserProfileState>(
//       listener: (context, state) {
//         if (state is GetUpdatedUserLoaded) {
//           getUpdatedUserData
//             ..clear()
//             ..add(state.response.data!);
//         }
//       },
//       builder: (context, state) {
//         if (state is Loading) {
//           return const LoadingIndicator(show: true);
//         }
//         return 
//       },
//     );
//   }
// }
