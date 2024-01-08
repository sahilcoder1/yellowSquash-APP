// ignore_for_file: inference_failure_on_function_invocation

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/app/app_router.gr.dart';
import 'package:yellow_squash/models/get_updated_user.dart';
import 'package:yellow_squash/modules/di.dart';
import 'package:yellow_squash/screens/UserProfile/cubit/user_profile_cubit.dart';
import 'package:yellow_squash/screens/UserProfile/repository/user_profile_repository.dart';
import 'package:yellow_squash/utils/common_widgets/loading_indicator.dart';
import 'package:yellow_squash/utils/services/storage_manager.dart';

@RoutePage()
class UserProfileAlertDialog extends StatelessWidget {
  const UserProfileAlertDialog({required this.userData, super.key});
  final List<getUpdatedData> userData;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('User Profile'),
      content: SizedBox(
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 9,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: SizedBox(
                    height: 110,
                    child: ListTile(
                      leading: Container(
                        height: 120,
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
                              userData[0].profilePicture!,
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
                                userData[0].fullName!,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                userData[0].email!,
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 129, 128, 128),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    height: 30,
                                    width: 100,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        getIt<AppRouter>().push(
                                          YellowHome(
                                            UserProfileData: userData[0].id,
                                            profileName: userData[0].fullName,
                                          ),
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
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: userData[0].patientDetails!.length,
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
                                    '',
                                    // userData[index].patientDetails![index].profilePicture!,
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
                                      userData[0]
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
                                      userData[0]
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
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 30,
                                          width: 100,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              getIt<AppRouter>().push(
                                                YellowHome(
                                                  UserProfileData: userData[0]
                                                      .patientDetails![index]
                                                      .profileId,
                                                  profileName: userData[0]
                                                      .patientDetails![index]
                                                      .fullName,
                                                ),
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
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Close'),
        ),
      ],
    );
  }
}

class MySwitchListThankyou extends StatelessWidget {
  const MySwitchListThankyou({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserProfileCubit(UserProfileRepository()),
      child: const MySwitchListThankyouView(),
    );
  }
}

class MySwitchListThankyouView extends StatefulWidget {
  const MySwitchListThankyouView({super.key});

  @override
  State<MySwitchListThankyouView> createState() =>
      _MySwitchListThankyouViewState();
}

class _MySwitchListThankyouViewState extends State<MySwitchListThankyouView> {
  final user = StorageManager.getUserData();
  final getUpdatedUserData = List<getUpdatedData>.empty(growable: true);

  @override
  void initState() {
    context.read<UserProfileCubit>().getUpdatedProfile(id: user!.id!);

    // Show the user profile in an AlertDialog when the screen loads
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showUserProfileDialog();
    });

    super.initState();
  }

  // Function to show the user profile in an AlertDialog
  void _showUserProfileDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return UserProfileAlertDialog(userData: getUpdatedUserData);
      },
    );
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
            getIt<AppRouter>().push(const PaymentThankyou());
          },
        ),
        backgroundColor: const Color.fromRGBO(249, 209, 33, 1),
        title: const Text(
          'Switch Profile',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: BlocConsumer<UserProfileCubit, UserProfileState>(
        listener: (context, state) {
          if (state is GetUpdatedUserLoaded) {
            getUpdatedUserData
              ..clear()
              ..add(state.response.data!);
            log(state.response.data!.patientDetails);
          }
        },
        builder: (context, state) {
          if (state is Loading) {
            return const LoadingIndicator(show: true);
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
