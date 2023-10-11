class NewsModel{

  String? sourceName;
  String? author;
  String? title;
  String? description;
  String? imgUrl;
  String? newsUrl;
  String? content;

  NewsModel.fromMap(Map<String,dynamic>json){
    sourceName = json['source']['name'];
    author = json['author'];
    title = json['title'];
    description = json['description'];
    imgUrl = json['urlToImage'];
    newsUrl = json['url'];
    content = json['content'];
  }



}