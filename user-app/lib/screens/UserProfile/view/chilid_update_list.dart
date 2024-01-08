// // ignore_for_file: lines_longer_than_80_chars

// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:nb_utils/nb_utils.dart';
// import 'package:yellow_squash/app/app_router.dart';
// import 'package:yellow_squash/app/app_router.gr.dart';
// import 'package:yellow_squash/models/get_updated_user.dart';
// import 'package:yellow_squash/modules/di.dart';
// import 'package:yellow_squash/screens/UserProfile/cubit/user_profile_cubit.dart';
// import 'package:yellow_squash/screens/UserProfile/repository/user_profile_repository.dart';
// import 'package:yellow_squash/utils/common_widgets/crashed.dart';
// import 'package:yellow_squash/utils/common_widgets/loading_indicator.dart';
// import 'package:yellow_squash/utils/services/storage_manager.dart';

// @RoutePage()
// class ChildUpdateList extends StatelessWidget {
//   const ChildUpdateList({super.key});

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
//   bool checkness = false;

//   @override
//   void initState() {
//     context.read<UserProfileCubit>().getUpdatedProfile(id: user!.id!);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: const Icon(
//             Icons.arrow_back,
//             color: Color.fromRGBO(0, 0, 0, 1),
//           ),
//           onPressed: () {
//             getIt<AppRouter>().pop();
//           },
//         ),
//         backgroundColor: const Color.fromRGBO(249, 209, 33, 1),
//         title: const Text(
//           'Patient details',
//           style: TextStyle(
//             color: Colors.black,
//           ),
//         ),
//         automaticallyImplyLeading: false,
//       ),
//       body: BlocConsumer<UserProfileCubit, UserProfileState>(
//         listener: (context, state) {
//           if (state is GetUpdatedUserLoaded) {
//             getUpdatedUserData
//               ..clear()
//               ..add(state.response.data!);

//             log(state.response.data);
//             log(getUpdatedUserData.length);
//           }
//           if (state is ErrorState) {
//             checkness = true;
//           }
//         },
//         builder: (context, state) {
//           if (state is Loading) {
//             return const LoadingIndicator(
//               show: true,
//             );
//           }
//           return checkness
//               ? const crashedPage()
//               : Padding(
//                   padding: const EdgeInsets.all(4),
//                   child: Column(
//                     children: [
//                       Expanded(
//                         child: ListView.builder(
//                           itemCount:
//                               getUpdatedUserData[0].patientDetails!.length,
//                           itemBuilder: (context, index) {
//                             return Card(
//                               elevation: 9,
//                               child: ClipRRect(
//                                 borderRadius: BorderRadius.circular(50),
//                                 child: SizedBox(
//                                   height: 110,
//                                   child: ListTile(
//                                     leading: Container(
//                                       height: 120,
//                                       // width: 100,
//                                       decoration: BoxDecoration(
//                                         shape: BoxShape.circle,
//                                         border: Border.all(
//                                           color: Colors.green,
//                                           width: 2,
//                                         ),
//                                       ),
//                                       child: const Padding(
//                                         padding: EdgeInsets.all(2),
//                                         child: CircleAvatar(
//                                           radius: 30,
//                                           backgroundImage: NetworkImage(
//                                             '',
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     title: Row(
//                                       children: [
//                                         Column(
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: [
//                                             Text(
//                                               getUpdatedUserData[0]
//                                                   .patientDetails![index]
//                                                   .fullName!,
//                                               style: const TextStyle(
//                                                 color: Colors.black,
//                                                 fontWeight: FontWeight.bold,
//                                               ),
//                                             ),
//                                             const SizedBox(
//                                               height: 5,
//                                             ),
//                                             Text(
//                                               getUpdatedUserData[0]
//                                                   .patientDetails![index]
//                                                   .emailId!,
//                                               style: const TextStyle(
//                                                 color: Color.fromARGB(
//                                                   255,
//                                                   129,
//                                                   128,
//                                                   128,
//                                                 ),
//                                                 fontWeight: FontWeight.bold,
//                                               ),
//                                             ),
//                                             const SizedBox(
//                                               height: 15,
//                                             ), //
//                                             Row(
//                                               children: [
//                                                 SizedBox(
//                                                   height: 30,
//                                                   width: 100,
//                                                   child: ElevatedButton(
//                                                     onPressed: () {
//                                                       getIt<AppRouter>().push(
//                                                         ChildUpdateRoute(
//                                                           name: getUpdatedUserData[
//                                                                   0]
//                                                               .patientDetails![
//                                                                   index]
//                                                               .fullName,
//                                                           email: getUpdatedUserData[
//                                                                   0]
//                                                               .patientDetails![
//                                                                   index]
//                                                               .emailId,
//                                                           age: getUpdatedUserData[
//                                                                   0]
//                                                               .patientDetails![
//                                                                   index]
//                                                               .age,
//                                                           profileId:
//                                                               getUpdatedUserData[
//                                                                       0]
//                                                                   .patientDetails![
//                                                                       index]
//                                                                   .profileId,
//                                                         ),
//                                                       );
//                                                     },
//                                                     style: ElevatedButton
//                                                         .styleFrom(
//                                                       backgroundColor:
//                                                           Colors.yellow,
//                                                     ),
//                                                     child: const Text(
//                                                       'Update',
//                                                       style: TextStyle(
//                                                         color: Colors.black,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 const SizedBox(
//                                                   width: 30,
//                                                 ),
//                                               ],
//                                             ),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             );
//                           },
//                         ),
//                       ),
//                     ],
//                   ),
//                 );
//         },
//       ),
//     );
//   }
// }
