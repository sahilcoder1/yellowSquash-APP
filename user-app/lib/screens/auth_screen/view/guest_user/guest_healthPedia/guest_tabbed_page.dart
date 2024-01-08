import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/modules/di.dart';
import 'package:yellow_squash/screens/auth_screen/view/guest_user/guest_healthPedia/guest_health_pedia.dart';
import 'package:yellow_squash/screens/auth_screen/view/guest_user/guest_healthPedia/guest_health_pedia_video_screen.dart';

@RoutePage()
class GuestMyTabbedPage extends StatefulWidget {
  const GuestMyTabbedPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _GuestMyTabbedPageState createState() => _GuestMyTabbedPageState();
}

class _GuestMyTabbedPageState extends State<GuestMyTabbedPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
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
            // Navigator.of(context).pushNamed(Home.routeName);
            getIt<AppRouter>().pop();
          },
        ),
        backgroundColor: const Color.fromRGBO(249, 209, 33, 1),
        title: const Text(
          'HealthPedia',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.black,
          tabs: const [
            Tab(
              child: Text(
                'Blogs',
                style: TextStyle(
                  color: Colors.black,
                ), // Set the text color to black
              ),
            ),
            Tab(
              child: Text(
                'Videos',
                style: TextStyle(
                  color: Colors.black,
                ), // Set the text color to black
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          // Content of Tab 1
          GuestHealthPediaScreen(),
          // Content of Tab 2
          GuestHealthPediaVideoScreen(),
        ],
      ),
    );
  }
}
