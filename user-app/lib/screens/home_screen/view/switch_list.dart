// ignore_for_file: lines_longer_than_80_chars

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/app/app_router.gr.dart';
import 'package:yellow_squash/models/get_updated_user.dart';
import 'package:yellow_squash/models/user_response.dart';
import 'package:yellow_squash/modules/di.dart';
import 'package:yellow_squash/screens/UserProfile/cubit/user_profile_cubit.dart';
import 'package:yellow_squash/screens/UserProfile/repository/user_profile_repository.dart';
import 'package:yellow_squash/utils/common_widgets/loading_indicator.dart';
import 'package:yellow_squash/utils/services/storage_manager.dart';

@RoutePage()
class MySwitchList extends StatelessWidget {
  const MySwitchList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserProfileCubit(UserProfileRepository()),
      child: const MyListView(),
    );
  }
}

class MyListView extends StatefulWidget {
  const MyListView({super.key});

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  final user = StorageManager.getUserData();
  final getUpdatedUserData = List<getUpdatedData>.empty(growable: true);

  @override
  void initState() {
    context.read<UserProfileCubit>().getUpdatedProfile(id: user!.id!);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color.fromRGBO(0, 0, 0, 1),
          ),
          onPressed: () {
            getIt<AppRouter>().push(const HomeRoute());
          },
        ),
        backgroundColor: const Color.fromRGBO(249, 209, 33, 1),
        title: const Text(
          'Switch Profile',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: BlocConsumer<UserProfileCubit, UserProfileState>(
        listener: (context, state) {
          if (state is GetUpdatedUserLoaded) {
            getUpdatedUserData
              ..clear()
              ..add(state.response.data!);
          }
        },
        builder: (context, state) {
          if (state is Loading) {
            return const LoadingIndicator(show: true);
          }
          return Padding(
            padding: const EdgeInsets.all(4),
            child: Column(
              children: [
                Card(
                  elevation: 9,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: SizedBox(
                      height: 125,
                      child: ListTile(
                        leading: Container(
                          height: 120,
                          // width: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.green,
                              width: 2,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                getUpdatedUserData[0].profilePicture!,
                              ),
                            ),
                          ),
                        ),
                        title: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  getUpdatedUserData[0].fullName!,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  getUpdatedUserData[0].email!,
                                  style: const TextStyle(
                                    color: Color.fromARGB(255, 129, 128, 128),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ), //
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 30,
                                      width: 180,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          final userData = UserData(
                                            fullName: getUpdatedUserData[0]
                                                    .fullName ??
                                                '',
                                            email:
                                                getUpdatedUserData[0].email ??
                                                    '',
                                            address:
                                                getUpdatedUserData[0].address,
                                            id: getUpdatedUserData[0].id,
                                            phone: getUpdatedUserData[0].phone,
                                            // profilePicture:
                                            //     getUpdatedUserData[0]
                                            //         .profilePicture,
                                            isParent: true,
                                          );
                                          StorageManager.saveUserData(userData);
                                          getIt<AppRouter>().push(
                                            const NavigaitonBar(),
                                          );
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.yellow,
                                        ),
                                        child: const Text(
                                          'Switch to parent',
                                          style: TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: getUpdatedUserData[0].patientDetails!.length,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 9,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: SizedBox(
                            height: 110,
                            child: ListTile(
                              leading: Container(
                                height: 120,
                                // width: 100,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.green,
                                    width: 2,
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(2),
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundImage: NetworkImage(
                                      // '  getUpdatedUserData[index]
                                      //           .patientDetails![index]
                                      //           .image ??'
                                      '',
                                    ),
                                  ),
                                ),
                              ),
                              title: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        getUpdatedUserData[0]
                                            .patientDetails![index]
                                            .fullName!,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        getUpdatedUserData[0]
                                            .patientDetails![index]
                                            .emailId!,
                                        style: const TextStyle(
                                          color: Color.fromARGB(
                                            255,
                                            129,
                                            128,
                                            128,
                                          ),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ), //
                                      Row(
                                        children: [
                                          SizedBox(
                                            height: 30,
                                            width: 100,
                                            child: ElevatedButton(
                                              onPressed: () {
                                                final userData = UserData(
                                                  index: index,
                                                  profileid: getUpdatedUserData[
                                                          0]
                                                      .patientDetails![index]
                                                      .profileId,
                                                  fullName:
                                                      getUpdatedUserData[0]
                                                              .patientDetails![
                                                                  index]
                                                              .fullName ??
                                                          '',
                                                  email: getUpdatedUserData[0]
                                                          .email ??
                                                      '',
                                                  address: getUpdatedUserData[0]
                                                      .address,
                                                  id: getUpdatedUserData[0].id,
                                                  phone: getUpdatedUserData[0]
                                                      .phone,
                                                  isParent: false,
                                                  //  profilePicture:getUpdatedUserData[0].patientDetails?[index].image,
                                                );
                                                StorageManager.saveUserData(
                                                  userData,
                                                );
                                                getIt<AppRouter>().push(
                                                  const NavigaitonBar(),
                                                );
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.yellow,
                                              ),
                                              child: const Text(
                                                'Switch',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 30,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
