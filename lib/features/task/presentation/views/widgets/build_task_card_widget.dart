import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:personal_scheduler_app/core/reusable_functions/format_time.dart';
import 'package:personal_scheduler_app/core/reusable_functions/get_category_proirity_color.dart';
import 'package:personal_scheduler_app/core/utils/app_colors.dart';
import 'package:personal_scheduler_app/core/utils/custom_text_styles.dart';
import 'package:personal_scheduler_app/features/task/domain/entities/task_entity.dart';

Widget buildTaskCard(TaskEntity task, Function(BuildContext)? onPressedEnd,
    Function(BuildContext)? onPressedStart) {
  return Slidable(
    direction: Axis.horizontal,
    startActionPane: ActionPane(
      motion: ScrollMotion(),
      children: [
        SlidableAction(
          onPressed: onPressedEnd,
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          icon: Icons.delete,
          label: 'Delete',
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
        ),
      ],
    ),
    endActionPane: ActionPane(
      motion: ScrollMotion(),
      children: [
        SlidableAction(
          onPressed: onPressedStart,
          backgroundColor: AppColors.primaryColor,
          foregroundColor: Colors.white,
          icon: Icons.edit,
          label: 'Edit',
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12),
            bottomLeft: Radius.circular(12),
          ),
        ),
      ],
    ),
    child: Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: getCategoryColor(task.category).withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(task.name,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(height: 4),
              Text(
                '${formatTime(task.startDate)} - ${formatTime(task.endDate)}',
                style: const TextStyle(fontSize: 12),
              ),
            ],
          ),
          Row(
            spacing: 5.w,
            children: [
              Container(
                padding: EdgeInsets.all(8.r),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  color: getCategoryColor(task.category),
                ),
                child: Text(
                  task.category,
                  style: CustomTextStyles.textStyle10
                      .copyWith(color: Colors.white),
                ),
              ),
              CircleAvatar(
                radius: 10.w,
                backgroundColor: getPriorityColor(task.priority),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
