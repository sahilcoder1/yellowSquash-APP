import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/app/app_router.gr.dart';
import 'package:yellow_squash/models/programs_response.dart';
import 'package:yellow_squash/modules/di.dart';
import 'package:yellow_squash/screens/program_screen/cubit/program_cubit_cubit.dart';
import 'package:yellow_squash/screens/program_screen/repository/program_repository.dart';
import 'package:yellow_squash/utils/logs.dart';

@RoutePage()
class PaymentThankyou extends StatelessWidget {
  const PaymentThankyou({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProgramCubit(ProgramRepository()),
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
  final programScreenData = List<ProgramData>.empty(growable: true);
  String url = '';
  String formUrl = '';
  String title = '';
  @override
  void initState() {
    context.read<ProgramCubit>().getPrograms();
    super.initState();
  }

  Future<void> _launchUrl() async {
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> _launchFormUrl() async {
    // ignore: deprecated_member_use
    if (await canLaunch(formUrl)) {
      // ignore: deprecated_member_use
      await launch(formUrl);
    } else {
      throw Exception('Could not launch $formUrl');
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
      body: BlocConsumer<ProgramCubit, ProgramCubitState>(
        listener: (context, state) {
          if (state is ProgramsLoaded) {
            url = state.response.data![0].whatsappLink!;
            formUrl = state.response.data![0].intakeFormLink!;
            title = state.response.data![0].title!;
          }
        },
        builder: (context, state) {
          if (state is ErrorState) {
            toast(state.e);
          }
          if (state is SwitchProfiledataLoaded) {
            logs(state.response.data);
          }
          return SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/thankyou.png',
                      width: 150,
                      height: 150,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
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
                        title,
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
                      'Join Program Support group',
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
                      'This helps you stay up-to-date with Program',
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
                    const SizedBox(
                      height: 10,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 80,
                      child: Image.asset('assets/images/form.png'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Center(
                      child: Text(
                        'Intake Form',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Center(
                        // ignore: lines_longer_than_80_chars
                        child: Text(
                          'To understand your medical history to offer you personalized treatment plan.',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Center(
                        child: Text(
                          'Email/WhatsApp your reports at +91 000000000',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: _launchFormUrl,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                        ),
                        child: const Text('Fill Google Form'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
