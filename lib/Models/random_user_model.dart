class RandomUserModel
{
  List<dynamic> results;
  RandomUserModel({required this.results});
  factory RandomUserModel.ConvertFromJson(Map<String,dynamic>jsonData)
  {
    return RandomUserModel(results: jsonData['results']);
  }
}