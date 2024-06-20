import 'package:flutter/cupertino.dart';

import '../../../../cors/Widgets/section_header.dart';
import '../../../../cors/Widgets/show_youtube_video.dart';
import 'image_grid_view.dart';
import 'intro_in_top.dart';

class WhoWeAreViewBody extends StatelessWidget {
  const WhoWeAreViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: TitleWithDescriptionSection(
                title: "شركه TRUST GROUP للخدمات الطلابية للدراسة في الخارج",
                description:
                    "قدم جميع الخدمات الدراسية في جميع الدول التالية (روسيا_قرغيزستان-تركيا_المانيا_كندا_استراليا_ماليزيا_فرنسا_البلجيك_التشيك_الاردن_عمان_ليبيا)"),
          ),
          SliverToBoxAdapter(
            child: SectionHeader(
              Htitle: "حلقتنا علي قناة الصحة والجمال",
            ),
          ),
          SliverToBoxAdapter(
            child: ShowYoutubeVideo(videoUrl: 'https://www.youtube.com/watch?v=NgIq19R-n5w&t=668s',),
          ),
          SliverToBoxAdapter(
            child: TitleWithDescriptionSection(
                title: "لماذا شركه Trust Gruop ؟",
                description:
                    "الشركة الاولي المختصة بالقبولات الجامعية لجميع الطلاب للدراسة في الخارج. بدأ تأسيس الشركة منذ عام 2017 وبدأت رحلة البحث عن اخصائيين تعليميين ومستشارين اكاديميين لنكون الأوائل في مجال الاستشارات التعليمية للتقديم علي اقوي الجامعات في الخارج . ونحن لسنا الوحيدين في هذا المجال ولكن متميزين فيه."),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            sliver: ImageGridView(),
          ),
        ],
      ),
    );
  }
}
