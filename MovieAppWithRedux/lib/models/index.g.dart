// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Movie$ _$$Movie$FromJson(Map<String, dynamic> json) => _$Movie$(
      id: json['id'] as int,
      title: json['title'] as String,
      imageUrl: json['imageUrl'] as String,
      rating: (json['rating'] as num).toDouble(),
      description: json['description'] as String?,
      screenshots: (json['screenshots'] as List<dynamic>?)
          ?.map((dynamic e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$Movie$ToJson(_$Movie$ instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'imageUrl': instance.imageUrl,
      'rating': instance.rating,
      'description': instance.description,
      'screenshots': instance.screenshots,
    };
