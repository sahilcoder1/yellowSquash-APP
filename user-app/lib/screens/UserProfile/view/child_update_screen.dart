// import 'dart:io';
// import 'package:auto_route/annotations.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
// import 'package:multi_select_flutter/util/multi_select_item.dart';
// import 'package:nb_utils/nb_utils.dart';
// import 'package:yellow_squash/app/app_router.dart';
// import 'package:yellow_squash/models/get_updated_user.dart';
// import 'package:yellow_squash/models/user_response.dart';
// import 'package:yellow_squash/modules/di.dart';
// import 'package:yellow_squash/screens/UserProfile/cubit/user_profile_cubit.dart';
// import 'package:yellow_squash/screens/UserProfile/repository/user_profile_repository.dart';
// import 'package:yellow_squash/utils/common_widgets/custom_network_image.dart';
// import 'package:yellow_squash/utils/common_widgets/loading_indicator.dart';
// import 'package:yellow_squash/utils/services/storage_manager.dart';

// @RoutePage()
// class ChildUpdateScreen extends StatelessWidget {
//   const ChildUpdateScreen({
//     required this.name,
//     required this.email,
//     required this.age,
//     required this.profileId,
//     super.key,
//   });

//   final String? name;
//   final String? email;
//   final int? age;
//   final String? profileId;

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => UserProfileCubit(UserProfileRepository()),
//       child: UserProfileView(
//         name: name,
//         email: email,
//         age: age,
//         profileId: profileId,
//       ),
//     );
//   }
// }

// class UserProfileView extends StatefulWidget {
//   const UserProfileView({
//     required this.name,
//     required this.email,
//     required this.age,
//     required this.profileId,
//     super.key,
//   });
//   final String? name;
//   final String? email;
//   final int? age;
//   final String? profileId;

//   @override
//   State<UserProfileView> createState() => _UserProfileViewState();
// }

// class _UserProfileViewState extends State<UserProfileView> {
//   File? _pickedImage;

//   Future<void> _pickImage(ImageSource source) async {
//     final pickedImageFile = await ImagePicker().pickImage(
//       source: source,
//       imageQuality: 50,
//     );
//     if (pickedImageFile == null) return;

//     setState(() {
//       _pickedImage = File(pickedImageFile.path);
//     });
//   }

//   final GlobalKey<FormState> updateUserFormKey = GlobalKey<FormState>();
//   late UserData? user;
//   String? profileImage = '';
//   final nameTextField = TextEditingController();
//   final emailTextField = TextEditingController();
//   final ageTextField = TextEditingController();
//   final phoneTextField = TextEditingController();
//   final locationTextField = TextEditingController();
//   final stateTextField = TextEditingController();
//   final addressTextField = TextEditingController();
//   final cityTextField = TextEditingController();
//   final countryTextField = TextEditingController();
//   final pincodeTextField = TextEditingController();
//   String genderTextField = '';

//   List<String> selectedConditions = ['Yoga'];
//   List<String> selectedInterests = ['Yoga'];

//   final List<MultiSelectItem<String>> items = [
//     MultiSelectItem('Yoga', 'Yoga'),
//     MultiSelectItem('Digestions', 'Digestions'),
//     MultiSelectItem('Allergies', 'Allergies'),
//     MultiSelectItem('Thyroid', 'Thyroid'),
//   ];

//   final List<MultiSelectItem<String>> interestsitems = [
//     MultiSelectItem('Yoga', 'Yoga'),
//     MultiSelectItem('Digestions', 'Digestions'),
//     MultiSelectItem('Allergies', 'Allergies'),
//     MultiSelectItem('Thyroid', 'Thyroid'),
//   ];

//   final getUpdatedUserData = List<getUpdatedData>.empty(growable: true);
//   @override
//   void initState() {
//     user = StorageManager.getUserData();
//     context.read<UserProfileCubit>().getUpdatedProfile(id: user!.id!);
//     super.initState();
//   }

//   @override
//   void dispose() {
//     phoneTextField.dispose();
//     nameTextField.dispose();
//     emailTextField.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final user = StorageManager.getUserData();
//     return BlocConsumer<UserProfileCubit, UserProfileState>(
//       listener: (context, state) {
//         if (state is GetUpdatedUserLoaded) {
//           getUpdatedUserData.add(state.response.data!);
//         }
//       },
//       builder: (context, state) {
//         phoneTextField.text = user!.phone!;
//         nameTextField.text = widget.name!;
//         emailTextField.text = widget.email!;
//         if (widget.age != null) {
//           ageTextField.text = widget.age!.toString();
//         }
//         // profileImage = getUpdatedUserData[0].profilePicture;
//         if (state is Loading) {
//           return const LoadingIndicator(show: true);
//         }
//         return AbsorbPointer(
//           absorbing: state is Loading,
//           child: Stack(
//             children: [
//               Scaffold(
//                 appBar: AppBar(
//                   leading: IconButton(
//                     icon: const Icon(
//                       Icons.arrow_back,
//                       color: Color.fromRGBO(0, 0, 0, 1),
//                     ),
//                     onPressed: () {
//                       getIt<AppRouter>().pop();
//                     },
//                   ),
//                   backgroundColor: const Color.fromRGBO(249, 209, 33, 1),
//                   title: Text(
//                     "${widget.name} 's Profile",
//                     style: const TextStyle(
//                       color: Colors.black,
//                     ),
//                   ),
//                   actions: [
//                     Padding(
//                       padding: const EdgeInsets.only(
//                         top: 17,
//                         right: 8,
//                       ),
//                       child: GestureDetector(
//                         onTap: () {
//                           if (updateUserFormKey.currentState!.validate() &&
//                               updateUserFormKey.currentState!.validate()) {
//                             if (_pickedImage != null) {
//                               context
//                                   .read<UserProfileCubit>()
//                                   .ChildupdateProfile(
//                                 fullName: nameTextField.text,
//                                 email: emailTextField.text,
//                                 phone: phoneTextField.text,
//                                 age: ageTextField.text,
//                                 image: _pickedImage!
//                                     .path, // Use the local file path
//                                 condition: selectedConditions,
//                                 interests: selectedInterests,
//                                 userId: user.id,
//                                 profileId: widget.profileId,
//                                 address: {
//                                   'flatNo': '2',
//                                   'City': 'pachim vihar',
//                                   'pincode': '110086',
//                                   'state': 'Delhi',
//                                   'country': 'India',
//                                 },
//                               );
//                             } else {
//                               context
//                                   .read<UserProfileCubit>()
//                                   .ChildupdateProfile(
//                                 fullName: nameTextField.text,
//                                 email: emailTextField.text,
//                                 phone: phoneTextField.text,
//                                 condition: selectedConditions,
//                                 interests: selectedInterests,
//                                 userId: user.id,
//                                 age: ageTextField.text,
//                                 profileId: widget.profileId,
//                                 address: {
//                                   'flatNo': '2',
//                                   'City': 'pachim vihar',
//                                   'pincode': '110086',
//                                   'state': 'Delhi',
//                                   'country': 'India',
//                                 },
//                               );
//                             }

//                             toast('Successfully Updated');
//                           }
//                         },
//                         child: const Text(
//                           'Save',
//                           style: TextStyle(
//                             fontWeight: FontWeight.w400,
//                             fontSize: 14,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 body: Form(
//                   key: updateUserFormKey,
//                   child: Padding(
//                     padding: const EdgeInsets.only(top: 20),
//                     child: SingleChildScrollView(
//                       child: Column(
//                         children: [
//                           Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Stack(
//                                 children: [
//                                   if (_pickedImage != null)
//                                     CircleAvatar(
//                                       radius: 80,
//                                       backgroundImage: _pickedImage != null
//                                           ? FileImage(_pickedImage!)
//                                           : null,
//                                       child: _pickedImage == null
//                                           ? const Icon(
//                                               Icons.add_a_photo,
//                                               size: 40,
//                                             )
//                                           : null,
//                                     )
//                                   else
//                                     ClipRRect(
//                                       borderRadius: BorderRadius.circular(80),
//                                       child: const CircleAvatar(
//                                         radius: 80,
//                                         child: CustomNetworkImageView(
//                                           width: double.infinity,
//                                           imagePath: '',
//                                         ),
//                                       ),
//                                     ),
//                                   Positioned(
//                                     top: 0,
//                                     right: 0,
//                                     child: IconButton(
//                                       icon: const Icon(
//                                         Icons.camera_alt,
//                                         color: Colors.green,
//                                         size: 30,
//                                       ),
//                                       onPressed: () {
//                                         // ignore: inference_failure_on_function_invocation
//                                         showModalBottomSheet(
//                                           context: context,
//                                           builder: (BuildContext context) {
//                                             return SafeArea(
//                                               child: Wrap(
//                                                 children: [
//                                                   ListTile(
//                                                     leading: const Icon(
//                                                       Icons.photo_library,
//                                                     ),
//                                                     title: const Text(
//                                                       'Photo Library',
//                                                     ),
//                                                     onTap: () {
//                                                       _pickImage(
//                                                         ImageSource.gallery,
//                                                       );
//                                                       Navigator.of(context)
//                                                           .pop();
//                                                     },
//                                                   ),
//                                                   ListTile(
//                                                     leading: const Icon(
//                                                       Icons.camera_alt,
//                                                     ),
//                                                     title: const Text('Camera'),
//                                                     onTap: () {
//                                                       _pickImage(
//                                                         ImageSource.camera,
//                                                       );
//                                                       Navigator.of(context)
//                                                           .pop();
//                                                     },
//                                                   ),
//                                                 ],
//                                               ),
//                                             );
//                                           },
//                                         );
//                                       },
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.symmetric(
//                               horizontal: 8,
//                               vertical: 16,
//                             ),
//                             child: Column(
//                               children: [
//                                 TextFormField(
//                                   controller: nameTextField,
//                                   decoration: const InputDecoration(
//                                     labelText: 'Full Name',
//                                     border: OutlineInputBorder(),
//                                   ),
//                                   onTap: () {
//                                     final currentText = TextEditingController(
//                                       text: user.fullName,
//                                     );
//                                     // ignore: cascade_invocations
//                                     currentText.clear();
//                                   },
//                                 ),
//                                 const SizedBox(height: 20),
//                                 Row(
//                                   children: [
//                                     SizedBox(
//                                       width: 140,
//                                       child: TextFormField(
//                                         controller: ageTextField,
//                                         keyboardType: TextInputType.number,
//                                         decoration: const InputDecoration(
//                                           labelText: 'Age',
//                                           border: OutlineInputBorder(),
//                                         ),
//                                       ),
//                                     ),
//                                     const SizedBox(width: 20),
//                                     SizedBox(
//                                       width: 140,
//                                       child: DropdownButtonFormField<String>(
//                                         decoration: const InputDecoration(
//                                           labelText: 'Gender',
//                                           hintText: 'Male',
//                                           border: OutlineInputBorder(),
//                                         ),
//                                         value: 'Male',
//                                         items: const [
//                                           DropdownMenuItem<String>(
//                                             value: 'Male',
//                                             child: Text('Male'),
//                                           ),
//                                           DropdownMenuItem<String>(
//                                             value: 'Female',
//                                             child: Text('Female'),
//                                           ),
//                                           DropdownMenuItem<String>(
//                                             value: 'Other',
//                                             child: Text('Other'),
//                                           ),
//                                         ],
//                                         onChanged: (value) {
//                                           // Handle the selected value
//                                           setState(() {
//                                             genderTextField = value!;
//                                           });
//                                         },
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 const SizedBox(height: 20),
//                                 TextFormField(
//                                   controller: emailTextField,
//                                   // Set the default value
//                                   decoration: const InputDecoration(
//                                     labelText: 'Email Id',
//                                     border: OutlineInputBorder(),
//                                   ),

//                                   onTap: () {},
//                                 ),
//                                 const SizedBox(height: 20),
//                                 TextFormField(
//                                   enabled: false,
//                                   readOnly: true,
//                                   controller: phoneTextField,
//                                   decoration: const InputDecoration(
//                                     labelText: 'Mobile Number',
//                                     border: OutlineInputBorder(),
//                                   ),
//                                   onTap: () {},
//                                 ),
//                                 const SizedBox(height: 20),
//                                 const SizedBox(height: 20),
//                                 const SizedBox(height: 20),
//                                 MultiSelectDialogField(
//                                   items: items,
//                                   title: const Text('Conditions'),
//                                   selectedColor: Colors.green,
//                                   decoration: BoxDecoration(
//                                     color: Colors.white,
//                                     borderRadius: const BorderRadius.all(
//                                       Radius.circular(40),
//                                     ),
//                                     border: Border.all(),
//                                   ),
//                                   buttonIcon: const Icon(
//                                     Icons.add,
//                                     color: Colors.black,
//                                   ),
//                                   buttonText: const Text(
//                                     'Conditions',
//                                     style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 16,
//                                     ),
//                                   ),
//                                   onConfirm: (results) {
//                                     selectedConditions = results;
//                                   },
//                                 ),
//                                 const SizedBox(height: 20),
//                                 MultiSelectDialogField(
//                                   items: interestsitems,
//                                   title: const Text('Interests'),
//                                   selectedColor: Colors.green,
//                                   decoration: BoxDecoration(
//                                     color: Colors.white,
//                                     borderRadius: const BorderRadius.all(
//                                       Radius.circular(40),
//                                     ),
//                                     border: Border.all(),
//                                   ),
//                                   buttonIcon: const Icon(
//                                     Icons.add,
//                                     color: Colors.black,
//                                   ),
//                                   buttonText: const Text(
//                                     'Interests',
//                                     style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 16,
//                                     ),
//                                   ),
//                                   onConfirm: (results) {
//                                     setState(() {
//                                       selectedInterests = results;
//                                     });
//                                   },
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
