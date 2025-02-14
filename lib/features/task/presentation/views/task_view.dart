import 'dart:async';
import 'dart:developer';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_scheduler_app/config/routes/routes.dart';
import 'package:personal_scheduler_app/core/reusable_functions/format_time.dart';
import 'package:personal_scheduler_app/core/reusable_functions/get_category_proirity_color.dart';
import 'package:personal_scheduler_app/core/utils/app_colors.dart';
import 'package:personal_scheduler_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:personal_scheduler_app/features/task/presentation/views/widgets/build_task_card_widget.dart';
import 'package:personal_scheduler_app/features/task/presentation/views/widgets/custom_home_appbar_widget.dart';
import 'package:personal_scheduler_app/features/task/presentation/views/widgets/shimmer_loading.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:personal_scheduler_app/core/enums/request_status.dart';
import 'package:personal_scheduler_app/core/reusable_widgets/custom_toast_widget.dart';
import 'package:personal_scheduler_app/features/task/presentation/bloc/task_bloc.dart';

class TaskView extends StatefulWidget {
  const TaskView({super.key});

  @override
  TaskViewState createState() => TaskViewState();
}

class TaskViewState extends State<TaskView> {
  DateTime _selectedDate = DateTime.now();
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<List<ConnectivityResult>> connectivitySubscription;
  bool dropArrowActivated = false;

  @override
  void initState() {
    super.initState();
    initConnectivity();

    connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);

    final user = context.read<AuthBloc>().state.userModelLogin;
    if (user != null) {
      context
          .read<TaskBloc>()
          .add(FetchTasksForDayEvent(userId: user.uid, date: _selectedDate));
    }
  }

  Future<void> initConnectivity() async {
    late List<ConnectivityResult> result;
    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      log('Couldn\'t check connectivity status', error: e);
      return;
    }
    if (!mounted) {
      return Future.value(null);
    }
    return _updateConnectionStatus(result);
  }

  Future<void> _updateConnectionStatus(List<ConnectivityResult> result) async {
    if (result.contains(ConnectivityResult.none)) {
      myToast(text: "You are offline. But you still can use the app.");
    }
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() => _selectedDate = selectedDay);

    final user = context.read<AuthBloc>().state.userModelLogin;
    if (user != null) {
      context
          .read<TaskBloc>()
          .add(FetchTasksForDayEvent(userId: user.uid, date: _selectedDate));
    }
  }

  @override
  Widget build(BuildContext context) {
    final user = context.watch<AuthBloc>().state.userModelLogin;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomHomeAppBar(
            imageURl: user?.profileImageUrl ?? '',
            userName: user?.name ?? '',
            userEmail: user?.email ?? '',
          ),
          AnimatedSize(
            duration: const Duration(milliseconds: 1000),
            curve: Curves.easeInOut,
            child: TableCalendar(
              focusedDay: _selectedDate,
              firstDay: DateTime.utc(2020, 1, 1),
              lastDay: DateTime.utc(2030, 12, 31),
              selectedDayPredicate: (day) => isSameDay(_selectedDate, day),
              onDaySelected: _onDaySelected,
              calendarFormat: dropArrowActivated
                  ? CalendarFormat.month
                  : CalendarFormat.week,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2.0.h),
            child: Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    dropArrowActivated = !dropArrowActivated;
                  });
                },
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    dropArrowActivated
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: BlocBuilder<TaskBloc, TaskState>(
              builder: (context, state) {
                if (state.fetchTasksStatus == RequestStatus.failure) {
                  myToast(text: state.fetchTasksFailure?.message ?? '');
                }
                if (state.deleteTaskStatus == RequestStatus.success) {
                  context.read<TaskBloc>().add(FetchTasksForDayEvent(
                      userId: user?.uid ?? '', date: _selectedDate));
                }
                if (state.fetchTasksStatus == RequestStatus.loading) {
                  return ShimmerLoading();
                } else if (state.fetchTasksStatus == RequestStatus.success) {
                  final tasks = state.tasks ?? [];

                  if (tasks.isEmpty) {
                    return const Center(child: Text('No tasks found.'));
                  }
                  return ListView.builder(
                    padding: EdgeInsets.only(left: 10.r, bottom: 20.r),
                    itemCount: tasks.length,
                    itemBuilder: (context, index) {
                      final task = tasks[index];
                      return TimelineTile(
                        hasIndicator: true,
                        startChild: SizedBox(
                          height: 20.h,
                          child: Text(
                              "${formatTime(task.startDate)} - ${formatTime(task.endDate)}"),
                        ),
                        alignment: TimelineAlign.manual,
                        lineXY: 0.1,
                        isFirst: index == 0,
                        isLast: index == tasks.length - 1,
                        indicatorStyle: IndicatorStyle(
                          width: 20,
                          color: getCategoryColor(task.category),
                        ),
                        beforeLineStyle: const LineStyle(
                          color: Colors.grey,
                          thickness: 2,
                        ),
                        afterLineStyle: const LineStyle(
                          color: Colors.grey,
                          thickness: 2,
                        ),
                        endChild: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: buildTaskCard(
                            task,
                            (p0) {
                              BlocProvider.of<TaskBloc>(context)
                                  .add(DeleteTaskEvent(taskId: task.id));
                            },
                            (p0) {
                              GoRouter.of(context).pushNamed(
                                RoutesNames.editTaskView,
                                extra: {
                                  'userID': user?.uid,
                                  'model': task,
                                },
                              );
                            },
                          ),
                        ),
                      );
                    },
                  );
                } else {
                  return const Center(child: Text('No tasks found.'));
                }
              },
            ),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        height: 60.h,
        width: 60.w,
        child: FloatingActionButton(
          backgroundColor: AppColors.appBarGradientColor[0],
          foregroundColor: Colors.white,
          shape: CircleBorder(),
          onPressed: () {
            if (user != null) {
              GoRouter.of(context)
                  .pushNamed(RoutesNames.addTaskView, extra: user.uid);
            }
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
