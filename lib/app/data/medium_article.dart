

import 'dart:convert';

MediumArticle mediumArticleFromJson(String str) => MediumArticle.fromJson(json.decode(str));

String mediumArticleToJson(MediumArticle data) => json.encode(data.toJson());

List<MediumArticle> mediumArticlesFromJson(String str) => List<MediumArticle>.from(json.decode(str).map((x) => MediumArticle.fromJson(x)));

String mediumArticlesToJson(List<MediumArticle> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MediumArticle {
    final String author;
    final int claps;
    final List<String> clappers;

    MediumArticle({
        required this.author,
        required this.claps,
        required this.clappers,
    });

    factory MediumArticle.fromJson(Map<String, dynamic> json) => MediumArticle(
        author: json["author"],
        claps: json["claps"],
        clappers: List<String>.from(json["clappers"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "author": author,
        "claps": claps,
        "clappers": List<dynamic>.from(clappers.map((x) => x)),
    };
}
