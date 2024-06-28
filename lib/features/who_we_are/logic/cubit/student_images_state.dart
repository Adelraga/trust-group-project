part of 'student_images_cubit.dart';

@immutable
sealed class StudentImagesState {}

final class StudentImagesInitial extends StudentImagesState {}

final class StudentImagesLoading extends StudentImagesState {}

final class StudentImagesSuccess extends StudentImagesState {
  final List<StudentImagesModel> studentImages;

  StudentImagesSuccess(this.studentImages);
}

final class StudentImagesFailure extends StudentImagesState {
  final String errMessage;

  StudentImagesFailure(this.errMessage);
}
