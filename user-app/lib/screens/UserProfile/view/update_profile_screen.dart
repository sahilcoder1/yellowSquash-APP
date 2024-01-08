// ignore_for_file: lines_longer_than_80_chars
import 'dart:io';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/app/app_router.gr.dart';
import 'package:yellow_squash/models/get_updated_user.dart';
import 'package:yellow_squash/models/user_byprofile_userid.dart';
import 'package:yellow_squash/models/user_response.dart';
import 'package:yellow_squash/modules/di.dart';
import 'package:yellow_squash/screens/UserProfile/cubit/user_profile_cubit.dart';
import 'package:yellow_squash/screens/UserProfile/repository/user_profile_repository.dart';
import 'package:yellow_squash/screens/UserProfile/view/multi_select_field_condition.dart';
import 'package:yellow_squash/utils/common_widgets/crashed.dart';
import 'package:yellow_squash/utils/common_widgets/custom_network_image.dart';
import 'package:yellow_squash/utils/common_widgets/loading_indicator.dart';
import 'package:yellow_squash/utils/logs.dart';
import 'package:yellow_squash/utils/services/storage_manager.dart';

@RoutePage()
class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserProfileCubit(UserProfileRepository()),
      child: const UserProfileView(),
    );
  }
}

class UserProfileView extends StatefulWidget {
  const UserProfileView({super.key});
  @override
  State<UserProfileView> createState() => _UserProfileViewState();
}

class _UserProfileViewState extends State<UserProfileView> {
  File? _pickedImage;

  Future<void> _pickImage(ImageSource source) async {
    final pickedImageFile = await ImagePicker().pickImage(
      source: source,
      imageQuality: 50,
    );
    if (pickedImageFile == null) return;

    setState(() {
      _pickedImage = File(pickedImageFile.path);
    });
  }

  final GlobalKey<FormState> updateUserFormKey = GlobalKey<FormState>();
  late UserData? user;
  String? profileImage = '';
  bool checknes = false;
  final nameTextField = TextEditingController();
  final emailTextField = TextEditingController();
  final ageTextField = TextEditingController();
  final phoneTextField = TextEditingController();
  final stateTextField = TextEditingController();
  final addressTextField = TextEditingController();
  final cityTextField = TextEditingController();
  final countryTextField = TextEditingController();
  final pincodeTextField = TextEditingController();
  String genderTextField = '';

  List<String> selectedConditions = [];
  List<String> selectedInterests = ['Yoga'];
  bool toShow = false;

  final List<MultiSelectItem<String>> items = [
    MultiSelectItem('Yoga', 'Yoga'),
    MultiSelectItem('Digestions', 'Digestions'),
    MultiSelectItem('Allergies', 'Allergies'),
    MultiSelectItem('Thyroid', 'Thyroid'),
  ];

  final List<MultiSelectItem<String>> interestsitems = [
    MultiSelectItem('Yoga', 'Yoga'),
    MultiSelectItem('Digestions', 'Digestions'),
    MultiSelectItem('Allergies', 'Allergies'),
    MultiSelectItem('Thyroid', 'Thyroid'),
  ];

  final getUpdatedUserData = List<getUpdatedData>.empty(growable: true);
  final getUserDataByProfile = List<UserProfileData>.empty(growable: true);
  @override
  void initState() {
    user = StorageManager.getUserData();
    if (user!.profileid != null) {
      context
          .read<UserProfileCubit>()
          .getuserByProfile(id: user!.id!, ProfileId: user!.profileid!);
    }
    if (user!.id != null && user!.profileid == null) {
      context.read<UserProfileCubit>().getUpdatedProfile(id: user!.id!);
    }
    super.initState();
  }

  @override
  void dispose() {
    phoneTextField.dispose();
    nameTextField.dispose();
    emailTextField.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final user = StorageManager.getUserData();
    return BlocConsumer<UserProfileCubit, UserProfileState>(
      listener: (context, state) {
        if (state is ErrorState) {
          checknes = true;
        }
        if (state is GetuserByProfileLoaded) {
          logs(state.response.data);
          getUserDataByProfile.addAll(state.response.data!);
          final userData = UserData(
            profileid: user!.profileid,
            fullName: getUserDataByProfile[0].fullName ?? '',
            email: getUserDataByProfile[0].emailId ?? '',
            address: getUserDataByProfile[0].address ?? '',
            id: user.id,
            phone: getUserDataByProfile[0].phoneNumber,
            isParent: false,
            profilePicture: getUserDataByProfile[0].image,
          );
          StorageManager.saveUserData(
            userData,
          );

          profileImage = getUserDataByProfile[0].image;

          if (getUserDataByProfile[0].condition!.isNotEmpty) {
            selectedConditions.addAll(getUserDataByProfile[0].condition!);
          }
          if (getUserDataByProfile[0].fullName != null) {
            nameTextField.text = getUserDataByProfile[0].fullName!;
          } else {
            nameTextField.text = '';
          }
          if (getUserDataByProfile[0].age != null) {
            ageTextField.text = getUserDataByProfile[0].age!.toString();
          } else {
            ageTextField.text = '';
          }
          if (getUserDataByProfile[0].emailId != null) {
            emailTextField.text = getUserDataByProfile[0].emailId!;
          } else {
            emailTextField.text = '';
          }
          if (getUserDataByProfile[0].phoneNumber != null) {
            phoneTextField.text = getUserDataByProfile[0].phoneNumber!;
          } else {
            phoneTextField.text = '';
          }
          if (getUserDataByProfile[0].gender != null) {
            genderTextField = getUserDataByProfile[0].gender!;
          }
          if (getUserDataByProfile[0].address != null) {
            if (getUserDataByProfile[0].address!.pincode != null) {
              pincodeTextField.text = getUserDataByProfile[0].address!.pincode!;
            } else {
              pincodeTextField.text = '';
            }
            if (getUserDataByProfile[0].address!.city != null) {
              cityTextField.text = getUserDataByProfile[0].address!.city!;
            } else {
              cityTextField.text = '';
            }
            if (getUserDataByProfile[0].address!.flatNo != null) {
              addressTextField.text = getUserDataByProfile[0].address!.flatNo!;
            } else {
              addressTextField.text = '';
            }

            if (getUserDataByProfile[0].address!.state != null) {
              stateTextField.text = getUserDataByProfile[0].address!.state!;
            } else {
              stateTextField.text = '';
            }
            if (getUserDataByProfile[0].address!.country != null) {
              countryTextField.text = getUserDataByProfile[0].address!.country!;
            } else {
              countryTextField.text = ' ';
            }
          }
        }
        if (state is GetUpdatedUserLoaded) {
          getUpdatedUserData.add(state.response.data!);
          toShow = true;
          final userData = UserData(
            fullName: state.response.data!.fullName ?? '',
            email: state.response.data!.email ?? '',
            address: state.response.data!.address,
            id: state.response.data!.id,
            phone: state.response.data!.phone,
            profilePicture: state.response.data!.profilePicture,
          );
          StorageManager.saveUserData(userData);
          if (getUpdatedUserData[0].gender != null) {
            genderTextField = getUpdatedUserData[0].gender!;
          }
          if (getUpdatedUserData[0].fullName != null) {
            nameTextField.text = getUpdatedUserData[0].fullName!;
          } else {
            nameTextField.text = '';
          }
          if (getUpdatedUserData[0].phone != null) {
            phoneTextField.text = getUpdatedUserData[0].phone!;
          }
          if (getUpdatedUserData[0].email != null) {
            emailTextField.text = getUpdatedUserData[0].email!;
          }
          if (getUpdatedUserData[0].age != null) {
            ageTextField.text = getUpdatedUserData[0].age!.toString();
          } else {
            ageTextField.text = '';
          }
          profileImage = getUpdatedUserData[0].profilePicture;
        }
        if (state is updateUserLoaded) {
          // logs(format: 'e', state.response.data);
          final userData = UserData(
            fullName: state.response.data!.fullName ?? '',
            email: state.response.data!.email ?? '',
            address: state.response.data!.address,
            id: state.response.data!.id,
            phone: state.response.data!.phone,
          );
          StorageManager.saveUserData(userData);
        }
      },
      builder: (context, state) {
        if (state is Loading) {
          return const LoadingIndicator(show: true);
        }
        return checknes
            ? const crashedPage()
            : AbsorbPointer(
                absorbing: state is Loading,
                child: Stack(
                  children: [
                    Scaffold(
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
                          'My Account',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        actions: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 17,
                              right: 8,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                if (updateUserFormKey.currentState!
                                        .validate() &&
                                    updateUserFormKey.currentState!
                                        .validate()) {
                                  if (user!.profileid == null) {
                                    if (_pickedImage != null) {
                                      context
                                          .read<UserProfileCubit>()
                                          .updateProfile(
                                            fullName: nameTextField.text,
                                            email: emailTextField.text,
                                            phone: phoneTextField.text,
                                            gender: genderTextField,
                                            age: int.parse(ageTextField.text),
                                            profilePicture: _pickedImage!.path,
                                            userId: user.id,
                                          );
                                    } else {
                                      context
                                          .read<UserProfileCubit>()
                                          .updateProfile(
                                            fullName: nameTextField.text,
                                            email: emailTextField.text,
                                            phone: phoneTextField.text,
                                            gender: genderTextField,
                                            age: int.parse(ageTextField.text),
                                            userId: user.id,
                                          );
                                    }
                                    toast('Successfully Updated');
                                  } else if (user.profileid != null) {
                                    if (updateUserFormKey.currentState!
                                            .validate() &&
                                        updateUserFormKey.currentState!
                                            .validate()) {
                                      if (_pickedImage != null) {
                                        context
                                            .read<UserProfileCubit>()
                                            .ChildupdateProfile(
                                          fullName: nameTextField.text,
                                          email: emailTextField.text,
                                          phone: phoneTextField.text,
                                          age: int.parse(ageTextField.text),
                                          gender: genderTextField,
                                          image: _pickedImage!.path,
                                          condition: selectedConditions,
                                          interests: selectedInterests,
                                          userId: user.id,
                                          profileId: user.profileid,
                                          address: {
                                            'flatNo': addressTextField.text,
                                            'city': cityTextField.text,
                                            'pincode': pincodeTextField.text,
                                            'state': stateTextField.text,
                                            'country': countryTextField.text,
                                          },
                                        );
                                      } else {
                                        context
                                            .read<UserProfileCubit>()
                                            .ChildupdateProfile(
                                          fullName: nameTextField.text,
                                          email: emailTextField.text,
                                          phone: phoneTextField.text,
                                          condition: selectedConditions,
                                          interests: selectedInterests,
                                          userId: user.id,
                                          age: int.parse(ageTextField.text),
                                          gender: genderTextField,
                                          profileId: user.profileid,
                                          address: {
                                            'flatNo': addressTextField.text,
                                            'city': cityTextField.text,
                                            'pincode': pincodeTextField.text,
                                            'state': stateTextField.text,
                                            'country': countryTextField.text,
                                          },
                                        );
                                      }
                                      toast('Successfully Updated');
                                    }
                                  }
                                }
                              },
                              child: const Text(
                                'Save',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      body: Form(
                        key: updateUserFormKey,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Stack(
                                      children: [
                                        if (_pickedImage != null)
                                          CircleAvatar(
                                            radius: 80,
                                            backgroundImage:
                                                _pickedImage != null
                                                    ? FileImage(_pickedImage!)
                                                    : null,
                                            child: _pickedImage == null
                                                ? const Icon(
                                                    Icons.add_a_photo,
                                                    size: 40,
                                                  )
                                                : null,
                                          )
                                        else
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(80),
                                            child: CircleAvatar(
                                              radius: 80,
                                              child: CustomNetworkImageView(
                                                width: double.infinity,
                                                imagePath: profileImage!,
                                              ),
                                            ),
                                          ),
                                        Positioned(
                                          top: 0,
                                          right: 0,
                                          child: IconButton(
                                            icon: const Icon(
                                              Icons.camera_alt,
                                              color: Colors.green,
                                              size: 30,
                                            ),
                                            onPressed: () {
                                              // ignore: inference_failure_on_function_invocation
                                              showModalBottomSheet(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return SafeArea(
                                                    child: Wrap(
                                                      children: [
                                                        ListTile(
                                                          leading: const Icon(
                                                            Icons.photo_library,
                                                          ),
                                                          title: const Text(
                                                            'Photo gallery',
                                                          ),
                                                          onTap: () {
                                                            _pickImage(
                                                              ImageSource
                                                                  .gallery,
                                                            );
                                                            Navigator.of(
                                                              context,
                                                            ).pop();
                                                          },
                                                        ),
                                                        ListTile(
                                                          leading: const Icon(
                                                            Icons.camera_alt,
                                                          ),
                                                          title: const Text(
                                                            'Camera',
                                                          ),
                                                          onTap: () {
                                                            _pickImage(
                                                              ImageSource
                                                                  .camera,
                                                            );
                                                            Navigator.of(
                                                              context,
                                                            ).pop();
                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 16,
                                  ),
                                  child: Column(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'Full Name',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ), // Add some space between the text and the text field
                                          TextFormField(
                                            controller: nameTextField,
                                            decoration: const InputDecoration(
                                              hintText: 'Enter your full name',
                                              border: OutlineInputBorder(),
                                            ),
                                            onTap: () {
                                              final currentText =
                                                  TextEditingController(
                                                text: user!.fullName,
                                              );
                                              // ignore: cascade_invocations
                                              currentText.clear();
                                            },
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 20),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 140,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Text(
                                                  'Age',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 8,
                                                ), // Add some space between the text and the text field
                                                TextFormField(
                                                  controller: ageTextField,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      const InputDecoration(
                                                    border:
                                                        OutlineInputBorder(),
                                                    hintText:
                                                        'Enter age', // Optional hint text
                                                  ),
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value.isEmpty) {
                                                      return 'Age is required.';
                                                    }
                                                    return null;
                                                  },
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(width: 20),
                                          SizedBox(
                                            width: 140,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Text(
                                                  'Gender',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 8,
                                                ), // Add some space between the text and the dropdown
                                                KeyedSubtree(
                                                  key: UniqueKey(),
                                                  child:
                                                      DropdownButtonFormField<
                                                          String>(
                                                    decoration:
                                                        const InputDecoration(
                                                      border:
                                                          OutlineInputBorder(),
                                                    ),
                                                    value: genderTextField
                                                            .isNotEmpty
                                                        ? genderTextField
                                                        : 'Male',
                                                    items: const [
                                                      DropdownMenuItem<String>(
                                                        value: 'Male',
                                                        child: Text('Male'),
                                                      ),
                                                      DropdownMenuItem<String>(
                                                        value: 'Female',
                                                        child: Text('Female'),
                                                      ),
                                                      DropdownMenuItem<String>(
                                                        value: 'Other',
                                                        child: Text('Other'),
                                                      ),
                                                    ],
                                                    onChanged: (value) {
                                                      setState(() {
                                                        genderTextField =
                                                            value!;
                                                      });
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 20),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'Email Id',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ), // Add some space between the text and the text field
                                          TextFormField(
                                            enabled: false,
                                            readOnly: true,
                                            controller: emailTextField,
                                            decoration: InputDecoration(
                                              border:
                                                  const OutlineInputBorder(),
                                              filled: true,
                                              fillColor: Colors.grey[200],
                                              hintText: 'user@example.com',
                                            ),
                                            onTap: () {
                                              // You can add any additional behavior when tapping on the read-only field
                                            },
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 20),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'Phone Number',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ), // Add some space between the text and the text field
                                          TextFormField(
                                            enabled: false,
                                            readOnly: true,
                                            controller: phoneTextField,
                                            decoration: InputDecoration(
                                              border:
                                                  const OutlineInputBorder(),
                                              filled: true,
                                              fillColor: Colors.grey[
                                                  200], // Optionally, add a background color
                                              hintText:
                                                  '+1234567890', // Optional hint text for the read-only state
                                            ),
                                            onTap: () {
                                              // You can add any additional behavior when tapping on the read-only field
                                            },
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 20),
                                      if (user!.profileid != null)
                                        Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'Flat/Street No',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ), // Add some space between the text and the text field
                                              TextFormField(
                                                controller: addressTextField,
                                                decoration:
                                                    const InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  hintText:
                                                      'Enter flat/street number', // Optional hint text
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      const SizedBox(height: 20),
                                      if (user.profileid != null)
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              'City/Town/District',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ), // Add some space between the text and the text field
                                            TextFormField(
                                              controller: cityTextField,
                                              decoration: const InputDecoration(
                                                border: OutlineInputBorder(),
                                                hintText:
                                                    'Enter city/town/district', // Optional hint text
                                              ),
                                            ),
                                          ],
                                        ),
                                      const SizedBox(height: 20),
                                      if (user.profileid != null)
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              'Pincode',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ), // Add some space between the text and the text field
                                            TextFormField(
                                              controller: pincodeTextField,
                                              keyboardType:
                                                  TextInputType.number,
                                              decoration: const InputDecoration(
                                                border: OutlineInputBorder(),
                                                hintText:
                                                    'Enter pincode', // Optional hint text
                                              ),
                                            ),
                                          ],
                                        ),
                                      const SizedBox(height: 20),
                                      if (user.profileid != null)
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              'State',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ), // Add some space between the text and the text field
                                            TextFormField(
                                              controller: stateTextField,
                                              decoration: const InputDecoration(
                                                border: OutlineInputBorder(),
                                                hintText:
                                                    'Enter state', // Optional hint text
                                              ),
                                            ),
                                          ],
                                        ),
                                      const SizedBox(height: 20),
                                      if (user.profileid != null)
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              'Country',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ), // Add some space between the text and the text field
                                            TextFormField(
                                              controller: countryTextField,
                                              decoration: const InputDecoration(
                                                border: OutlineInputBorder(),
                                                hintText:
                                                    'Enter country', // Optional hint text
                                              ),
                                            ),
                                          ],
                                        ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      const SizedBox(height: 10),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
      },
    );
  }
}
