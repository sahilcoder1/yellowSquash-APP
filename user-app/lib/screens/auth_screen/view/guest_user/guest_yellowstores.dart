import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/app/app_router.gr.dart';
import 'package:yellow_squash/modules/di.dart';
import 'package:yellow_squash/utils/common_widgets/loading_indicator.dart';

@RoutePage()
class GuestYellowStore extends StatefulWidget {
  const GuestYellowStore({super.key});

  @override
  State<GuestYellowStore> createState() => _GuestYellowStoreState();
}

class _GuestYellowStoreState extends State<GuestYellowStore> {
  int loadingPercentage = 0;
  late final WebViewController controller;
  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (url) {
            setState(() {
              loadingPercentage = 0;
            });
          },
          onProgress: (progress) {
            setState(() {
              loadingPercentage = progress;
            });
          },
          onPageFinished: (url) {
            setState(() {
              loadingPercentage = 100;
            });
          },
        ),
      )
      ..loadRequest(
        Uri.parse('https://www.yellowsquash.store/'),
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
            getIt<AppRouter>().push(const GuestHouse());
          },
        ),
        title: const Text(
          'YellowStores',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color.fromRGBO(249, 209, 33, 1),
      ),
      body: Stack(
        children: [
          WebViewWidget(
            controller: controller,
          ),
          if (loadingPercentage < 100)
            const LoadingIndicator(
              show: true,
            ),
        ],
      ),
    );
  }
}