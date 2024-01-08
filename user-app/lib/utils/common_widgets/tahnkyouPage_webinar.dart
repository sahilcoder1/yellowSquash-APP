import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/app/app_router.gr.dart';
import 'package:yellow_squash/modules/di.dart';
import 'package:yellow_squash/screens/webinars_screen/cubit/webinar_cubit.dart';
import 'package:yellow_squash/screens/webinars_screen/repository/webinar_repository.dart';
import 'package:yellow_squash/utils/common_widgets/loading_indicator.dart';

@RoutePage()
class WebinarThankyou extends StatelessWidget {
  const WebinarThankyou({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => webinarCubit(WebinarRepository()),
      child: const WebinarThankyouView(),
    );
  }
}

class WebinarThankyouView extends StatefulWidget {
  const WebinarThankyouView({super.key});

  @override
  State<WebinarThankyouView> createState() => _WebinarThankyouViewState();
}

class _WebinarThankyouViewState extends State<WebinarThankyouView> {
  String url = '';
  @override
  void initState() {
    context.read<webinarCubit>().getWebinars();
    super.initState();
  }

  Future<void> _launchUrl() async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color.fromRGBO(0, 0, 0, 1),
          ),
          onPressed: () {
            getIt<AppRouter>().replaceAll([const HomeRoute()]);
          },
        ),
      ),
      body: BlocConsumer<webinarCubit, WebinarState>(
        listener: (context, state) {
          // TODO: implement listener
          if (state is WebinarsLoaded) {
            url = state.response.data![0].latestWhatsappLink!;
          }
        },
        builder: (context, state) {
          if (state is ErrorState) {
            toast(state.e);
          }

          if (state is WebinarsLoaded) {
            return SingleChildScrollView(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/thankyou.png',
                        width: 150, // Adjust the width as needed
                        height: 150, // Adjust the height as needed
                      ),
                      const SizedBox(
                        height: 20,
                      ), // Add spacing between image and text
                      const Text(
                        'You’ve successfully enrolled for our',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          state.response.data![0].webinarTitle!,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Image.asset(
                        'assets/images/diversity.png',
                        width: 150,
                        height: 150,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Join Workshop Support group',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'share, care and grow',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'This helps you stay up-to-date with workshop',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: ElevatedButton(
                          onPressed: _launchUrl,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                          ),
                          child: const Text('Join Group'),
                        ),
                      ),
                        
                    ],
                 
                  ),
                ),
              ),
            );
          }
          return const LoadingIndicator(show: true);
        },
      ),
    );
  }
}
