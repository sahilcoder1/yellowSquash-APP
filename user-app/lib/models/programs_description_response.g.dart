// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'programs_description_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProgramsDescriptionResponseImpl _$$ProgramsDescriptionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProgramsDescriptionResponseImpl(
      message: json['message'] as String?,
      status: json['status'] as bool?,
      data: json['data'] == null
          ? null
          : ProgramDescriptionData.fromJson(
              json['data'] as Map<String, dynamic>),
      continuitySession: json['continuitySession'] as List<dynamic>?,
      continuityCounter: json['continuityCounter'] as int?,
    );

Map<String, dynamic> _$$ProgramsDescriptionResponseImplToJson(
        _$ProgramsDescriptionResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'data': instance.data,
      'continuitySession': instance.continuitySession,
      'continuityCounter': instance.continuityCounter,
    };

_$ProgramDescriptionDataImpl _$$ProgramDescriptionDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ProgramDescriptionDataImpl(
      aboutTheExpert: json['aboutTheExpert'] == null
          ? null
          : AboutTheExpert.fromJson(
              json['aboutTheExpert'] as Map<String, dynamic>),
      id: json['_id'] as String?,
      title: json['title'] as String?,
      slug: json['slug'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      programintovideourl: json['programintovideourl'] as String?,
      fordeseases: json['fordeseases'] as String?,
      videoId: json['videoId'] as int?,
      imageUrl: json['imageUrl'] as String?,
      imageId: json['imageId'] as int?,
      expert: json['expert'] as String?,
      expertDesignation: json['expertDesignation'] as String?,
      expertImage: json['expertImage'] as String?,
      author: json['author'] as String?,
      plans: json['plans'] == null
          ? null
          : Plans.fromJson(json['plans'] as Map<String, dynamic>),
      programCategory: json['programCategory'] as String?,
      enrolledUser: json['enrolledUser'] as int?,
      status: json['status'] as String?,
      overview: json['overview'] as String?,
      howItWorks: json['howItWorks'] as String?,
      structure: (json['structure'] as List<dynamic>?)
          ?.map((e) => Structure.fromJson(e as Map<String, dynamic>))
          .toList(),
      faq: (json['FAQ'] as List<dynamic>?)
          ?.map((e) => Faq.fromJson(e as Map<String, dynamic>))
          .toList(),
      isDeleted: json['isDeleted'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['v'] as int?,
      intakeFormLink: json['intakeFormLink'] as String?,
      whatsappLink: json['whatsappLink'] as String?,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      isSubscribed: json['isSubscribed'] as bool?,
      isSesssionPaused: json['isSesssionPaused'] as bool?,
    );

Map<String, dynamic> _$$ProgramDescriptionDataImplToJson(
        _$ProgramDescriptionDataImpl instance) =>
    <String, dynamic>{
      'aboutTheExpert': instance.aboutTheExpert,
      '_id': instance.id,
      'title': instance.title,
      'slug': instance.slug,
      'rating': instance.rating,
      'programintovideourl': instance.programintovideourl,
      'fordeseases': instance.fordeseases,
      'videoId': instance.videoId,
      'imageUrl': instance.imageUrl,
      'imageId': instance.imageId,
      'expert': instance.expert,
      'expertDesignation': instance.expertDesignation,
      'expertImage': instance.expertImage,
      'author': instance.author,
      'plans': instance.plans,
      'programCategory': instance.programCategory,
      'enrolledUser': instance.enrolledUser,
      'status': instance.status,
      'overview': instance.overview,
      'howItWorks': instance.howItWorks,
      'structure': instance.structure,
      'FAQ': instance.faq,
      'isDeleted': instance.isDeleted,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'v': instance.v,
      'intakeFormLink': instance.intakeFormLink,
      'whatsappLink': instance.whatsappLink,
      'startDate': instance.startDate?.toIso8601String(),
      'isSubscribed': instance.isSubscribed,
      'isSesssionPaused': instance.isSesssionPaused,
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

_$FaqImpl _$$FaqImplFromJson(Map<String, dynamic> json) => _$FaqImpl(
      ques: json['ques'] as String?,
      ans: (json['ans'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$FaqImplToJson(_$FaqImpl instance) => <String, dynamic>{
      'ques': instance.ques,
      'ans': instance.ans,
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
      type: json['type'] as String?,
      plans: (json['plans'] as List<dynamic>?)
          ?.map((e) => Plan.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PlansdetailImplToJson(_$PlansdetailImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'plans': instance.plans,
    };

_$PlanImpl _$$PlanImplFromJson(Map<String, dynamic> json) => _$PlanImpl(
      planDuration: json['planDuration'] as String?,
      discount: json['discount'] as String?,
      price: json['price'] as int?,
      discountedPrice: json['discountedPrice'] as int?,
    );

Map<String, dynamic> _$$PlanImplToJson(_$PlanImpl instance) =>
    <String, dynamic>{
      'planDuration': instance.planDuration,
      'discount': instance.discount,
      'price': instance.price,
      'discountedPrice': instance.discountedPrice,
    };

_$StructureImpl _$$StructureImplFromJson(Map<String, dynamic> json) =>
    _$StructureImpl(
      sessionTitle: json['sessionTitle'] as String?,
      sessionDuration: json['sessionDuration'] as String?,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      startTime: json['startTime'] as String?,
      sessionRecording: json['sessionRecording'] as String?,
      sessionResources: json['sessionResources'] as List<dynamic>?,
      description: json['description'] as String?,
      sessionlink: json['sessionlink'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$StructureImplToJson(_$StructureImpl instance) =>
    <String, dynamic>{
      'sessionTitle': instance.sessionTitle,
      'sessionDuration': instance.sessionDuration,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'startTime': instance.startTime,
      'sessionRecording': instance.sessionRecording,
      'sessionResources': instance.sessionResources,
      'description': instance.description,
      'sessionlink': instance.sessionlink,
      'id': instance.id,
    };
