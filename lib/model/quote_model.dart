class QouteModel{

  late String quote;
  late String author;

  QouteModel.fromMap(Map<String,dynamic>json){
    quote = json['quote'];
    author = json['author'];
  }

}