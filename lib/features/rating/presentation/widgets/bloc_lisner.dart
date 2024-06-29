import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:trust_group_project/features/rating/logic/comment_cubit/comments_cubit.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  void _showLoadingDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Row(
            children: const [
              CircularProgressIndicator(),
              SizedBox(width: 20),
              Text("Loading..."),
            ],
          ),
        );
      },
    );
  }

  void _hideLoadingDialog(BuildContext context) {
    if (Navigator.of(context, rootNavigator: true).canPop()) {
      Navigator.of(context, rootNavigator: true).pop();
    }
  }

  void _showToast(String message, Color backgroundColor) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: backgroundColor,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CommentsCubit, CommentsState>(
      listenWhen: (previous, current) =>
          current is CommentsSuccess ||
          current is CommentsFailure ||
          current is CommentsLoading,
      listener: (context, state) {
        if (state is CommentsLoading) {
          _showLoadingDialog(context);
        } else {
          _hideLoadingDialog(context);
          if (state is CommentsSuccess) {
            _showToast("Success Your Comment Is Send ✅", Colors.green);
          } else if (state is CommentsFailure) {
            _showToast(state.errMessage, Colors.red);
          }
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
