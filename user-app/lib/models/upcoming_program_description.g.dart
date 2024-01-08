// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upcoming_program_description.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpcomingProgramDescriptionImpl _$$UpcomingProgramDescriptionImplFromJson(
        Map<String, dynamic> json) =>
    _$UpcomingProgramDescriptionImpl(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => UpcomingProgramData.fromJson(e as Map<String, dynamic>))
          .toList(),
      category: (json['category'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$UpcomingProgramDescriptionImplToJson(
        _$UpcomingProgramDescriptionImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'category': instance.category,
    };

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      overview: json['overview'] == null
          ? null
          : Overview.fromJson(json['overview'] as Map<String, dynamic>),
      aboutTheExpert: json['aboutTheExpert'] == null
          ? null
          : AboutTheExpert.fromJson(
              json['aboutTheExpert'] as Map<String, dynamic>),
      id: json['id'] as String?,
      title: json['title'] as String?,
      slug: json['slug'] as String?,
      rating: json['rating'] as int?,
      programintovideourl: json['programintovideourl'] as String?,
      videoId: json['videoId'] as int?,
      imageUrl: json['imageUrl'] as String?,
      imageId: json['imageId'] as int?,
      expert: json['expert'] as String?,
      expertDesignation: json['expertDesignation'] as String?,
      expertImage: json['expertImage'] as String?,
      author: json['author'] as String?,
      programdescription: json['programdescription'] as String?,
      numberofSessions: json['numberofSessions'] as int?,
      plans: json['plans'] == null
          ? null
          : Plans.fromJson(json['plans'] as Map<String, dynamic>),
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      programCategory: json['programCategory'] as String?,
      enrolledUser: json['enrolledUser'] as int?,
      status: json['status'] as String?,
      teamImage: json['teamImage'] as String?,
      howItWorks: json['howItWorks'] as String?,
      structure: json['structure'] as String?,
      faq: json['faq'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['v'] as int?,
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      'overview': instance.overview,
      'aboutTheExpert': instance.aboutTheExpert,
      'id': instance.id,
      'title': instance.title,
      'slug': instance.slug,
      'rating': instance.rating,
      'programintovideourl': instance.programintovideourl,
      'videoId': instance.videoId,
      'imageUrl': instance.imageUrl,
      'imageId': instance.imageId,
      'expert': instance.expert,
      'expertDesignation': instance.expertDesignation,
      'expertImage': instance.expertImage,
      'author': instance.author,
      'programdescription': instance.programdescription,
      'numberofSessions': instance.numberofSessions,
      'plans': instance.plans,
      'startDate': instance.startDate?.toIso8601String(),
      'programCategory': instance.programCategory,
      'enrolledUser': instance.enrolledUser,
      'status': instance.status,
      'teamImage': instance.teamImage,
      'howItWorks': instance.howItWorks,
      'structure': instance.structure,
      'faq': instance.faq,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'v': instance.v,
    };

_$AboutTheExpertImpl _$$AboutTheExpertImplFromJson(Map<String, dynamic> json) =>
    _$AboutTheExpertImpl(
      expertDescription: json['expertDescription'] as String?,
    );

Map<String, dynamic> _$$AboutTheExpertImplToJson(
        _$AboutTheExpertImpl instance) =>
    <String, dynamic>{
      'expertDescription': instance.expertDescription,
    };

_$OverviewImpl _$$OverviewImplFromJson(Map<String, dynamic> json) =>
    _$OverviewImpl(
      letTheDataSpeak: json['letTheDataSpeak'] == null
          ? null
          : LetTheDataSpeak.fromJson(
              json['letTheDataSpeak'] as Map<String, dynamic>),
      whatWeOffer: json['whatWeOffer'] as String?,
      theOutcome: json['theOutcome'] as String?,
      overviewDescription: json['overviewDescription'] as String?,
    );

Map<String, dynamic> _$$OverviewImplToJson(_$OverviewImpl instance) =>
    <String, dynamic>{
      'letTheDataSpeak': instance.letTheDataSpeak,
      'whatWeOffer': instance.whatWeOffer,
      'theOutcome': instance.theOutcome,
      'overviewDescription': instance.overviewDescription,
    };

_$LetTheDataSpeakImpl _$$LetTheDataSpeakImplFromJson(
        Map<String, dynamic> json) =>
    _$LetTheDataSpeakImpl(
      batches: json['batches'] as int?,
      participants: json['participants'] as int?,
      benefitted: json['benefitted'] as int?,
    );

Map<String, dynamic> _$$LetTheDataSpeakImplToJson(
        _$LetTheDataSpeakImpl instance) =>
    <String, dynamic>{
      'batches': instance.batches,
      'participants': instance.participants,
      'benefitted': instance.benefitted,
    };

_$PlansImpl _$$PlansImplFromJson(Map<String, dynamic> json) => _$PlansImpl(
      plansdetails: (json['plansdetails'] as List<dynamic>?)
          ?.map((e) => Plansdetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PlansImplToJson(_$PlansImpl instance) =>
    <String, dynamic>{
      'plansdetails': instance.plansdetails,
    };

_$PlansdetailImpl _$$PlansdetailImplFromJson(Map<String, dynamic> json) =>
    _$PlansdetailImpl(
      planDuration: json['planDuration'] as String?,
      discount: json['discount'] as String?,
      price: json['price'] as int?,
      discountedPrice: json['discountedPrice'] as int?,
    );

Map<String, dynamic> _$$PlansdetailImplToJson(_$PlansdetailImpl instance) =>
    <String, dynamic>{
      'planDuration': instance.planDuration,
      'discount': instance.discount,
      'price': instance.price,
      'discountedPrice': instance.discountedPrice,
    };
