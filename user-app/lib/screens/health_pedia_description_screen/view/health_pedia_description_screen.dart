// ignore_for_file: lines_longer_than_80_chars, non_constant_identifier_names

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/models/health_pedia_description_loaded.dart';
import 'package:yellow_squash/modules/di.dart';
import 'package:yellow_squash/screens/health_pedia_description_screen/cubit/health_pedia_description_cubit.dart';
import 'package:yellow_squash/screens/health_pedia_description_screen/repository/health_pedia_description_repository.dart';
import 'package:yellow_squash/utils/common_widgets/custom_network_image.dart';
import 'package:yellow_squash/utils/common_widgets/loading_indicator.dart';
import 'package:yellow_squash/utils/logs.dart';
import 'package:yellow_squash/utils/services/storage_manager.dart';

@RoutePage()
class HealthDescriptionScreen extends StatelessWidget {
  const HealthDescriptionScreen({
    required this.slug,
    required this.title,
    required this.imgUrl,
    required this.id,
    super.key,
  });
  final String slug;
  final String title;
  final String imgUrl;
  final String id;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          HealthPediaDescriptionCubit(HealthDescriptionRespository()),
      child: HealthDescriptionView(
        slug: slug,
        title: title,
        imgurl: imgUrl,
        id: id,
      ),
    );
  }
}

class HealthDescriptionView extends StatefulWidget {
  const HealthDescriptionView({
    required this.slug,
    required this.title,
    required this.imgurl,
    required this.id,
    super.key,
  });
  final String slug;
  final String title;
  final String imgurl;
  final String? id;
  @override
  State<HealthDescriptionView> createState() => _HealthDescriptionViewState();
}

class _HealthDescriptionViewState extends State<HealthDescriptionView> {
  final userData = StorageManager.getUserData();
  final healthData = List<HealthDescriptionPediaData>.empty(growable: true);
  // ignore: inference_failure_on_collection_literal
  final CommentData = [];
  final TextEditingController textFieldController = TextEditingController();
  @override
  void initState() {
    context
        .read<HealthPediaDescriptionCubit>()
        .getHealthDescription(slug: widget.slug);
    context.read<HealthPediaDescriptionCubit>().getComment(
          userId: widget.id!,
        );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Healthpedia',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: const Color.fromRGBO(249, 209, 33, 1),
        leading: IconButton(
          onPressed: () {
            getIt<AppRouter>().pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: BlocConsumer<HealthPediaDescriptionCubit,
          HealthPediaDescriptionState>(
        listener: (context, state) {
          if (state is HealthDescripitonLoaded) {
            healthData
              ..clear()
              ..addAll(state.response.data!);
          }
          if (state is GetCommentLoaded) {
            logs(state);

            CommentData.addAll(state.response.data!);
          }
          if (state is ErrorState) {
            toast(
              'Whoops, looks like we got lost in the digital wilderness. Please try again later',
            );
          }
        },
        builder: (context, state) {
          if (state is Loading) {
            return const LoadingIndicator(show: true);
          }
          logs(CommentData);

          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  CustomNetworkImageView(
                    imagePath: widget.imgurl,
                    height: 220.h,
                    width: double.infinity,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      widget.title,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  if (healthData.isNotEmpty)
                    Html(data: healthData[0].articleBody)
                  else
                    const SizedBox.shrink(),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromRGBO(249, 209, 33, 1),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: TextFormField(
                          controller: textFieldController,
                          decoration: InputDecoration(
                            suffixIcon: GestureDetector(
                              onTap: () async {
                                if (userData?.id != null) {
                                  await context
                                      .read<HealthPediaDescriptionCubit>()
                                      .makeComment(
                                        UserId: userData!.id!,
                                        articleId: widget.id!,
                                        comment: textFieldController.text,
                                      );
                                } else {
                                  toast('Oops! have to login');
                                }
                                // ignore: use_build_context_synchronously
                                CommentData.add(
                                  textFieldController.text,
                                );
                                textFieldController.clear();
                                setState(() {});
                                if (userData!.id!.isNotEmpty) {
                                  toast('Comment published!');
                                }
                                textFieldController.clear();
                              },
                              child: const Icon(
                                Icons.send,
                                color: Color.fromRGBO(236, 194, 4, 1),
                              ),
                            ),
                            border: InputBorder.none,
                            hintText: 'Type your comment here',
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  if (CommentData.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.all(2),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 200,
                            child: ListView.builder(
                              itemCount: CommentData.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  decoration: BoxDecoration(
                                    border: CommentData[index] == ''
                                        ? Border.all(
                                            color: const Color.fromARGB(
                                              0,
                                              244,
                                              243,
                                              243,
                                            ),
                                          )
                                        : Border.all(
                                            color: const Color.fromARGB(
                                              255,
                                              159,
                                              157,
                                              157,
                                            ),
                                          ),
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color.fromARGB(
                                          255,
                                          243,
                                          241,
                                          241,
                                        ).withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 4,
                                        offset: const Offset(
                                          0,
                                          2,
                                        ), // changes the position of the shadow
                                      ),
                                    ],
                                  ),
                                  margin: const EdgeInsets.all(8),
                                  child: CommentData[index] == ''
                                      ? null
                                      : ListTile(
                                          leading: const CircleAvatar(
                                            backgroundImage: NetworkImage(
                                              'https://img.freepik.com/premium-vector/international-literacy-day-school-textbooks-literarure-educational-concept_24640-66901.jpg',
                                            ),
                                          ),
                                          title: Text(
                                            CommentData[index],
                                            style: const TextStyle(
                                              color: Color.fromARGB(
                                                255,
                                                16,
                                                16,
                                                16,
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
                    )
                  else
                    Column(
                      children: [
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 10, right: 10, top: 10),
                          child: Text(
                            'Your thoughts matter! Be the first to comment and share your insights.',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          width: 304,
                          height: 304,
                          child:
                              SvgPicture.asset('assets/images/nocomment.svg'),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
