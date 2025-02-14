// import 'package:injectable/injectable.dart';
// import 'package:personal_scheduler_app/features/task/domain/use_cases/create_task_use_case.dart';
// import 'package:personal_scheduler_app/features/task/domain/use_cases/delete_task_use_case.dart';
// import 'package:personal_scheduler_app/features/task/domain/use_cases/read_tasks_use_case.dart';
// import 'package:personal_scheduler_app/features/task/domain/use_cases/update_task_use_case.dart';
// import 'package:personal_scheduler_app/features/task/presentation/bloc/task_bloc.dart';
// import 'package:personal_scheduler_app/injectable.dart';

// @module
// abstract class TaskBlocModule {
//   @preResolve
//   @lazySingleton
//   Future<TaskBloc> get taskBloc async {
//     final createTaskUseCase = await getIt.getAsync<CreateTaskUseCase>();
//     final updateTaskUseCase = await getIt.getAsync<UpdateTaskUseCase>();
//     final deleteTaskUseCase = await getIt.getAsync<DeleteTaskUseCase>();
//     final readTasksUseCase = await getIt.getAsync<ReadTasksUseCase>();

//     return TaskBloc(
//       createTaskUseCase: createTaskUseCase,
//       updateTaskUseCase: updateTaskUseCase,
//       deleteTaskUseCase: deleteTaskUseCase,
//       readTasksUseCase: readTasksUseCase,
//     );
//   }
// }
