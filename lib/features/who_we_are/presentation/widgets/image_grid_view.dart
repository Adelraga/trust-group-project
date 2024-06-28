import 'package:flutter/cupertino.dart';
import 'package:trust_group_project/features/who_we_are/logic/cubit/student_images_cubit.dart';

import '../../../../cors/Helpers/constants.dart';
import 'image_grid_View_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ImageGridView extends StatelessWidget {
  const ImageGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StudentImagesCubit, StudentImagesState>(
      builder: (context, state) {
        if(state is StudentImagesSuccess)
        {
        return SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return ImageGridViewItem(
                imagesUrl: state.studentImages[index].url ?? "",
              );
            },
            childCount: 10,
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            childAspectRatio: 1,
          ),
        );
        }
           else if (state is StudentImagesFailure) {
          return SliverToBoxAdapter(
            child: Text("${state.errMessage}"),
          );
        }
         return SliverToBoxAdapter(child: Container());
      },
    );
  }
}
