import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:trust_group_project/features/who_we_are/data/repos/student_images_repo.dart';

import '../../data/models/student_images_model.dart';

part 'student_images_state.dart';

class StudentImagesCubit extends Cubit<StudentImagesState> {
  final StudentImagesRepo studentImagesRepo;
  StudentImagesCubit(this.studentImagesRepo) : super(StudentImagesInitial());
    Future<void> getStudentImages() async {
    emit(StudentImagesLoading());
    var result = await studentImagesRepo.getStudentImages();
    result.fold((failure) => {emit(StudentImagesFailure(failure.errMessage))},
        (response) => {emit(StudentImagesSuccess(response))});
  }
}
