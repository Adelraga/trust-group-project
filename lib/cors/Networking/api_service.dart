import 'package:dio/dio.dart';

import 'package:json_annotation/json_annotation.dart';

import 'package:retrofit/retrofit.dart';
import 'package:trust_group_project/cors/Networking/api_constants.dart';
import 'package:trust_group_project/features/our-services/data/models/services_model.dart';
import 'package:trust_group_project/features/russain/data/models/get_pdfs_model.dart';

import '../../features/karkastan/data/models/karkastan_common_question_model.dart';
import '../../features/karkastan/data/models/karkastan_require_paper_model.dart';
import '../../features/rating/data/models/comment_request_model.dart';
import '../../features/rating/data/models/comment_response_model.dart';
import '../../features/russain/data/models/get_youtube_videos_model.dart';
import '../../features/who_we_are/data/models/student_images_model.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl) //BaseUrl
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET(ApiConstants.getAllServices) // the endpoint
  Future<List<ServicesModel>> getAllServices();

  @GET(ApiConstants.showKarkastanRequirePaper) // the endpoint
  Future<List<KarkastanRequirePaperModel>> ShowKarkastanRequirePaper();

  @GET(ApiConstants.whoWeAreStudentImage) // the endpoint
  Future<List<StudentImagesModel>> getStudentImages();

  @GET(ApiConstants.karkastanCommonQuestion) // the endpoint
  Future<List<KarkastanCommonQuestionModel>> getCommonQuestion();

  @GET(ApiConstants.russainUniversity) // the endpoint
  Future<List<PdfsModel>> getRussainUniversityPdf();

  @GET(ApiConstants.technicalUniversity) // the endpoint
  Future<List<PdfsModel>> getTechnicalUniversityPdf();

  @GET(ApiConstants.russainUniversityIraq) // the endpoint
  Future<List<PdfsModel>> getRussainUniversityIraqPdf();
  
  @GET(ApiConstants.karkastanUniversitiesPrices) // the endpoint
  Future<List<PdfsModel>> getkarkastanUniversitiesPrices();

  @GET(ApiConstants.russainYoutubeVideos) // the endpoint
  Future<List<YoutubeVideosModel>> getRussainYoutubeLinks();

    @GET(ApiConstants.learningBegainerPdf) // the endpoint
  Future<List<PdfsModel>> getLearningBegainerPdf();

    @GET(ApiConstants.learningMediumPdf) // the endpoint
  Future<List<PdfsModel>> getLearningMediumPdf();

    @GET(ApiConstants.learningAdvancedPdf) // the endpoint
  Future<List<PdfsModel>> getLearningAdvancedPdf();

    @POST(ApiConstants.Comments) // the endpoint
  Future<CommentResponseModel> createComments( 
    @Body() CommentRequestModel comment
  );
  
  // @GET(ApiConstants.category) // the endpoint
  // Future<AnimeCategory> getAllCategory();

  // @GET(ApiConstants.characters) // the endpoint
  // Future<CharactersList> getAllCharacters();


  // @GET('characters/{id}') // the endpoint
  // Future<CharacterDetail > getCharacterById(@Path('id') int id);

  // @POST('/users') // the endpoint
  // Future<Users> createNewUser(
  //     @Body() Users newUser, @Header('Authorization') String token);

  // @DELETE('/users/{id}') // the endpoint
  // Future<dynamic> deleteUser(
  //     @Path('id') int id, @Header('Authorization') String token);
}

// to create the web_services.g.dart use this commend ==>"flutter pub run build_runner build"

// note i must write this line part 'web_services.g.dart'; and the name must be the same name of the file 
// web_services.dart