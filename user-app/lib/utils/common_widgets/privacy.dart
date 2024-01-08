// ignore_for_file: lines_longer_than_80_chars

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/app/app_router.gr.dart';
import 'package:yellow_squash/modules/di.dart';

@RoutePage()
class privacy extends StatelessWidget {
  const privacy({super.key});

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
          'Privacy Policy',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Text(
                'Your privacy is critical to us. Likewise, we have built up this Policy with the end goal you should see how we gather, utilize, impart, and reveal and make utilization of individual information. The following blueprints our privacy policy. Before or at the time of collecting personal information, we will identify the purposes for which information is being collected. We will gather and utilization of individual data singularly with the target of satisfying those reasons indicated by us and for other good purposes, unless we get the assent of the individual concerned or as required by law. We will just hold individual data the length of essential for the satisfaction of those reasons. We will gather individual data by legal and reasonable means and, where fitting, with the information or assent of the individual concerned. Personal information ought to be important to the reasons for which it is to be utilized, and, to the degree essential for those reasons, ought to be exact, finished, and updated. We will protect individual data by security shields against misfortune or burglary, and also unapproved access, divulgence, duplicating use, or alteration. We will promptly provide customers with access to our policies and procedures for the administration of individual data. We are focused on leading our business as per these standards with a specific end goal to guarantee that the privacy of individual data is secure and maintained.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
