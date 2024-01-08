import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/app/app_router.gr.dart';
import 'package:yellow_squash/modules/di.dart';
import 'package:yellow_squash/utils/common_widgets/app_drawer.dart';
import 'package:yellow_squash/utils/common_widgets/testimonials.dart';
import 'package:yellow_squash/utils/services/storage_manager.dart';

class SubHome extends StatefulWidget {
  const SubHome({super.key});

  @override
  State<SubHome> createState() => _SubHomeState();
}

class _SubHomeState extends State<SubHome> {
  // appBar: AppBar(
  List<Testimonial> testimonials = [
    Testimonial(
      name: 'Sahil',
      description:
          'Yellow Squash is Amazing and help me to fight against overweight',
      imageUrl:
          'https://miro.medium.com/v2/resize:fit:2400/1*MnYJKfbWACmEHTJhCPm9bQ.jpeg',
    ),
    Testimonial(
      name: 'Amaan',
      description:
          'Sed ut elit id elit lacinia vestibulum at eu lorem. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjaNXSWOcMJ5eZObaHXiC3LTRV68IVKnfHiA&usqp=CAU',
    ),
    Testimonial(
      name: 'Subodh',
      description:
          'Yellow Squash is Amazing and help me to fight against overweight',
      imageUrl:
          'https://miro.medium.com/v2/resize:fit:2400/1*MnYJKfbWACmEHTJhCPm9bQ.jpeg',
    ),
  ];
  int backButtonCounter = 0;

  @override
  Widget build(BuildContext context) {
    // ignore: lines_longer_than_80_chars
    final user = StorageManager.getUserData();
    return WillPopScope(
      onWillPop: () async {
        backButtonCounter++;
        if (backButtonCounter >= 2) {
          await SystemNavigator.pop();
        } else {
          toast('Press back Again to exit');
        }
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        drawer: const AppDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
          title: Text(
            'Hey, ${user!.fullName!}!',
            style: const TextStyle(
              color: Color.fromRGBO(0, 0, 0, 1),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                getIt<AppRouter>().push(const NotifyRoute());
              },
              icon: const Icon(Icons.notification_add),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      'Upcoming Programs',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        getIt<AppRouter>().push(const ProgramsRoute());
                      },
                      child: Text(
                        'View All',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(15, 166, 84, 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 240.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      key: UniqueKey(),
                      width: 20,
                    ),
                    SizedBox(
                      key: UniqueKey(),
                      height: 100,
                      //   child: const UpComingProgramCard(),
                    ),
                    SizedBox(
                      key: UniqueKey(),
                      height: 200,
                      //  child: const UpComingProgramCard(),
                    ),
                    SizedBox(
                      key: UniqueKey(),
                      height: 200,
                      // child: const UpComingProgramCard(),
                    ),
                    SizedBox(
                      key: UniqueKey(),
                      height: 200,
                      // child: const UpComingProgramCard(),
                    ),
                  ],
                ),
              ),

              //webinar
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      'Upcoming Webinars',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        getIt<AppRouter>().push(const WebinarsRoute());
                      },
                      child: Text(
                        'View All',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(15, 166, 84, 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 240.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      key: UniqueKey(),
                      width: 20,
                    ),
                    SizedBox(
                      height: 100,
                      key: UniqueKey(),
                      //      child: const UpComingProgramCard(),
                    ),
                    SizedBox(
                      height: 200,
                      key: UniqueKey(),
                      //    child: const UpComingProgramCard(),
                    ),
                    SizedBox(
                      height: 200,
                      key: UniqueKey(),
                      //   child: const UpComingProgramCard(),
                    ),
                    SizedBox(
                      height: 200,
                      key: UniqueKey(),
                      //  child: const UpComingProgramCard(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      'Explore HealthPedia',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        getIt<AppRouter>().push(const HealthPediaRoute());
                      },
                      child: Text(
                        'View All',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(15, 166, 84, 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 240.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      key: UniqueKey(),
                      width: 20,
                    ),
                    SizedBox(
                      height: 100,
                      key: UniqueKey(),
                      //       child: const UpComingProgramCard(),
                    ),
                    SizedBox(
                      height: 200,
                      key: UniqueKey(),
                      //     child: const UpComingProgramCard(),
                    ),
                    SizedBox(
                      height: 200,
                      key: UniqueKey(),
                      //   child: const UpComingProgramCard(),
                    ),
                    SizedBox(
                      height: 200,
                      key: UniqueKey(),
                      //  child: const UpComingProgramCard(),
                    ),
                  ],
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     crossAxisAlignment: CrossAxisAlignment.baseline,
              //     textBaseline: TextBaseline.alphabetic,
              //     children: [
              //       Text(
              //         'Know our Experts',
              //         style: TextStyle(
              //           fontSize: 16.sp,
              //           fontWeight: FontWeight.w600,
              //           color: const Color.fromRGBO(0, 0, 0, 1),
              //         ),
              //       ),
              //       InkWell(
              //         child: Text(
              //           'View All',
              //           style: TextStyle(
              //             fontSize: 14.sp,
              //             fontWeight: FontWeight.w600,
              //             color: const Color.fromRGBO(15, 166, 84, 1),
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // SizedBox(
              //   height: 240.h,
              //   child: ListView(
              //     scrollDirection: Axis.horizontal,
              //     children: const [],
              //   ),
              // ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Hear from our customers',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TestimonialWidget(testimonials: testimonials),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Let the data Speak',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 15,
              ),
              const SampleData(
                firsttitle: '13+  ',
                firstsubtitle: 'Countries Serviced',
                secondtitle: '82%',
                secondsubtitle: 'sucess rate',
              ),
              const SizedBox(
                height: 20,
                width: 70,
              ),
              const SampleData(
                firsttitle: '2500+',
                firstsubtitle: 'Patients served successfully',
                secondtitle: '52%',
                secondsubtitle: 'Chronic conditions solved ',
              ),
              Container(
                color: const Color.fromRGBO(68, 68, 68, 1),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/yellowicon.png',
                      height: 50,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Our goal is to create health awareness through our enriching content and help people reach their health goals through our world-class experts, tools, programs and products. Currently, we have started with online wellness programs.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SampleData extends StatelessWidget {
  const SampleData({
    required this.firsttitle,
    required this.firstsubtitle,
    required this.secondtitle,
    required this.secondsubtitle,
    super.key,
  });
  final String firsttitle;
  final String firstsubtitle;
  final String secondtitle;
  final String secondsubtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                firsttitle,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(204, 61, 54, 1),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                firstsubtitle,
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 45,
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                secondtitle,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(204, 61, 54, 1),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                secondsubtitle,
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
