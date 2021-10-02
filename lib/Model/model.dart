

class Model {

  final int userId;
  final int id;
  final String title;
  final String body;

  Model({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,

  });

  factory Model.fromJson(Map<String, dynamic> jsonData) {
    return Model(
      userId: jsonData['userId'],
      id:  jsonData['id'],
      title:  jsonData['title'],
      body:  jsonData['body'],
    );
  }
}



 class Models
{
  final List<dynamic>? modelList;

  Models({  this.modelList});

   factory Models.fromJson(Map<String, dynamic> jsonData) {
     return Models(
       modelList: jsonData['modelList'],

     );
   }

}
