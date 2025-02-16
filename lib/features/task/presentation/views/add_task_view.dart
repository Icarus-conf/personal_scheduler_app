import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:personal_scheduler_app/config/routes/routes.dart';
import 'package:personal_scheduler_app/core/enums/request_status.dart';
import 'package:personal_scheduler_app/core/reusable_functions/format_time.dart';
import 'package:personal_scheduler_app/core/reusable_functions/get_category_proirity_color.dart';
import 'package:personal_scheduler_app/core/reusable_widgets/custom_btn.dart';
import 'package:personal_scheduler_app/core/reusable_widgets/custom_textfield_widget.dart';
import 'package:personal_scheduler_app/core/reusable_widgets/custom_toast_widget.dart';
import 'package:personal_scheduler_app/core/utils/app_colors.dart';
import 'package:personal_scheduler_app/core/utils/custom_text_styles.dart';
import 'package:personal_scheduler_app/features/task/domain/entities/task_entity.dart';
import 'package:personal_scheduler_app/features/task/presentation/bloc/task_bloc.dart';
import 'package:personal_scheduler_app/features/task/presentation/views/widgets/cat_pri_list.dart';
import 'package:uuid/uuid.dart';

class AddTaskView extends StatefulWidget {
  final String userId;
  const AddTaskView({super.key, required this.userId});

  @override
  AddTaskViewState createState() => AddTaskViewState();
}

class AddTaskViewState extends State<AddTaskView> {
  String _priority = 'Low';
  String _category = 'Work';
  final TextEditingController _nameController = TextEditingController();
  DateTime? _startDate;
  DateTime? _endDate;
  final DateTime _selectedDate = DateTime.now();

  String generateTaskId() {
    var uuid = Uuid();
    return uuid.v4();
  }

  Future<void> _selectDateTime(BuildContext context, bool isStartDate) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null) {
      final TimeOfDay? pickedTime = await showTimePicker(
        // ignore: use_build_context_synchronously
        context: context,
        initialTime: TimeOfDay.now(),
      );
      if (pickedTime != null) {
        setState(() {
          final dateTime = DateTime(
            pickedDate.year,
            pickedDate.month,
            pickedDate.day,
            pickedTime.hour,
            pickedTime.minute,
          );
          if (isStartDate) {
            _startDate = dateTime;
          } else {
            _endDate = dateTime;
          }
        });
      }
    }
  }

  void _addTask() {
    if (_nameController.text.trim().isEmpty) {
      myToast(text: 'Task name cannot be empty', isError: true);
      return;
    }
    if (_startDate == null || _endDate == null) {
      myToast(text: 'Please select start and end dates', isError: true);
      return;
    }
    if (_endDate!.isBefore(_startDate!)) {
      myToast(text: 'End date must be after the start date', isError: true);
      return;
    }

    final newTask = TaskEntity(
      id: generateTaskId(),
      name: _nameController.text.trim(),
      startDate: _startDate!,
      endDate: _endDate!,
      priority: _priority,
      category: _category,
      userId: widget.userId,
    );

    BlocProvider.of<TaskBloc>(context).add(AddTaskEvent(task: newTask));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        toolbarHeight: 60.h,
        backgroundColor: AppColors.appBarGradientColor[0],
        title: Text(
          "Add Your Task",
          style: CustomTextStyles.textStyle16.copyWith(color: Colors.white),
        ),
        leading: GestureDetector(
          onTap: () => GoRouter.of(context).pop(),
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0.r),
        child: BlocConsumer<TaskBloc, TaskState>(
          listener: (context, state) {
            if (state.addTaskStatus == RequestStatus.failure) {
              myToast(
                text: state.addTaskFailure?.message ?? '',
                isError: true,
              );
            }
            if (state.addTaskStatus == RequestStatus.success) {
              GoRouter.of(context).pushNamed(RoutesNames.taskView);
              BlocProvider.of<TaskBloc>(context).add(FetchTasksForDayEvent(
                  userId: widget.userId, date: _selectedDate));
              myToast(
                text: 'Successfully added!',
                isError: false,
              );
            }
          },
          builder: (context, state) {
            if (state.addTaskStatus == RequestStatus.loading) {
              return Center(
                child: Lottie.asset(
                  "assets/lottie/loading.json",
                  height: 100.h,
                  width: 100.w,
                ),
              );
            }
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextField(
                  label: "Task",
                  controller: _nameController,
                  hintText: 'What do you want to do?',
                  bgColor: Colors.grey[200],
                ),
                SizedBox(height: 25.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: _buildDateField('Start', _startDate, true)),
                    Expanded(child: _buildDateField('End', _endDate, false)),
                  ],
                ),
                SizedBox(height: 25.h),
                _buildSectionTitle('Priority'),
                SizedBox(height: 8.h),
                _buildPriorityButtons(),
                SizedBox(height: 25.h),
                _buildSectionTitle('Categories'),
                SizedBox(height: 8.h),
                _buildCategoryButtons(),
                Spacer(),
                CustomBtn(
                  onPressed: _addTask,
                  text: 'Create Task',
                  txtColor: Colors.white,
                  bgColor: AppColors.appBarGradientColor[0],
                ),
                Spacer(),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
    );
  }

  Widget _buildDateField(String label, DateTime? date, bool isStartDate) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: CustomTextStyles.textStyle16.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 8.h),
        GestureDetector(
          onTap: () => _selectDateTime(context, isStartDate),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Text(
              date == null ? 'Select $label Date' : formatDateTime(date),
              style: CustomTextStyles.textStyle10
                  .copyWith(color: Colors.grey[600]),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPriorityButtons() {
    return Row(
      children: priorities.map((priority) {
        return Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: CustomBtn(
              bgColor: _priority == priority
                  ? getPriorityColor(priority)
                  : AppColors.backgroundColor,
              fontSize: 14.sp,
              height: 35.h,
              onPressed: () {
                setState(() {
                  _priority = priority;
                });
              },
              text: priority,
              txtColor: _priority == priority ? Colors.white : Colors.black,
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildCategoryButtons() {
    return Align(
      alignment: Alignment.center,
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 10.w,
        runSpacing: 10.h,
        children: categories.map((category) {
          return IntrinsicWidth(
            child: CustomBtn(
              fontSize: 14.sp,
              bgColor: _category == category
                  ? getCategoryColor(category)
                  : AppColors.backgroundColor,
              height: 40.h,
              onPressed: () {
                setState(() {
                  _category = category;
                });
              },
              text: category,
              txtColor: _category == category ? Colors.white : Colors.black,
            ),
          );
        }).toList(),
      ),
    );
  }
}
