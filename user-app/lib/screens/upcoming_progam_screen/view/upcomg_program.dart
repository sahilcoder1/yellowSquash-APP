import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yellow_squash/screens/upcoming_progam_screen/cubit/upcoming_program_cubit.dart';
import 'package:yellow_squash/screens/upcoming_progam_screen/repository/upcoming_program_repository.dart';
import 'package:yellow_squash/utils/logs.dart';

@RoutePage()
class UpcomingProgramsScreen extends StatelessWidget {
  const UpcomingProgramsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UpcomingProgramCubit(UpcomingProgramRepository()),
      child: const UpcomingProgramView(),
    );
  }
}

class UpcomingProgramView extends StatefulWidget {
  const UpcomingProgramView({super.key});

  @override
  State<UpcomingProgramView> createState() => _UpcomingProgramViewState();
}

class _UpcomingProgramViewState extends State<UpcomingProgramView> {
  @override
  void initState() {
    context.read<UpcomingProgramCubit>().getUpComingProgram(expert: 'guest');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          BlocConsumer<UpcomingProgramCubit, UpcomingProgramState>(
            listener: (context, state) {},
            builder: (context, state) {
              // if (state is Loading) {

              // }
              if (state is upComingProgramLoaded) {
                return LayoutBuilder(
                  builder: (context, constraints) {
                    {
                      return ConstrainedBox(
                        constraints: BoxConstraints(
                          minWidth: constraints.maxWidth,
                          minHeight: constraints.maxHeight,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 16,
                                ),
                              ),
                              SizedBox(
                                height: 240.h,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  itemCount: state.response.data!.length,
                                  itemBuilder: (context, index) {
                                    final data = state.response.data![index];
                                    logs(data);
                                    return null;
                                    // return const UpComingProgramCard(
                                    //     // upcomingProgramData: data,
                                    //     );
                                  },
                                ),
                              ),
                              // const UpcomingWebinarScreen(),
                            ],
                          ),
                        ),
                      );
                    }
                  },
                );
              }
              return const SizedBox.shrink();
            },
          ),
        ],
      ),
    );
  }
}

//new line

class UpcomingWebinarScreen extends StatelessWidget {
  const UpcomingWebinarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UpcomingProgramCubit(UpcomingProgramRepository()),
      child: const UpcomingWebinarView(),
    );
  }
}

class UpcomingWebinarView extends StatefulWidget {
  const UpcomingWebinarView({super.key});

  @override
  State<UpcomingWebinarView> createState() => _UpcomingWebinarViewState();
}

class _UpcomingWebinarViewState extends State<UpcomingWebinarView> {
  @override
  void initState() {
    context.read<UpcomingProgramCubit>().getUpComingProgram(expert: 'guest');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UpcomingProgramCubit, UpcomingProgramState>(
      listener: (context, state) {},
      builder: (context, state) {
        // if (state is Loading) {

        // }
        if (state is upComingProgramLoaded) {
          return LayoutBuilder(
            builder: (context, constraints) {
              {
                return ConstrainedBox(
                  constraints: BoxConstraints(
                    minWidth: constraints.maxWidth,
                    minHeight: constraints.maxHeight,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 16,
                          ),
                        ),
                        SizedBox(
                          height: 240.h,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: state.response.data!.length,
                            itemBuilder: (context, index) {
                              final data = state.response.data![index];
                              logs(data);
                              return null;
                              // return const UpComingProgramCard(
                              //     // upcomingProgramData: data,
                              //     );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }
            },
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
