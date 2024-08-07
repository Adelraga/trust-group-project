class ApiConstants {
  static const String apiBaseUrl = "https://travel-backend-h1ol.vercel.app/";
  static const String getAllServices = "services/getAllServices";
  static const String showKarkastanRequirePaper = "documents/getAll";
  static const String whoWeAreStudentImage = "who-we-are/getAll";
  static const String karkastanCommonQuestion = "common-quesions/getAll";
  static const String karkastanUniversitiesPrices = "unversities-prices/get";
  static const String russainUniversity = "russain-university/get";
  static const String technicalUniversity = "technical-university/get";
  static const String russainUniversityIraq = "russian-unversity-iraq/get";
  static const String russainYoutubeVideos = "youtube-links/getAll";
  static const String learningBegainerPdf = "russain-language-level1/get";
  static const String learningMediumPdf = "most-important-100word/get";
  static const String learningAdvancedPdf = "russian-book/get";
  static const String Comments = "ratings/create";
  // static const String category = "genres/anime";
  // static const String characters = "characters";
}

class ApiErrors {
  static const String badRequestError = "badRequestError";
  static const String noContent = "noContent";
  static const String forbiddenError = "forbiddenError";
  static const String unauthorizedError = "unauthorizedError";
  static const String notFoundError = "notFoundError";
  static const String conflictError = "conflictError";
  static const String internalServerError = "internalServerError";
  static const String unknownError = "unknownError";
  static const String timeoutError = "timeoutError";
  static const String defaultError = "defaultError";
  static const String cacheError = "cacheError";
  static const String noInternetError = "noInternetError";
  static const String loadingMessage = "loading_message";
  static const String retryAgainMessage = "retry_again_message";
  static const String ok = "Ok";
}
