class FDAModel {
  Meta? meta;
  List<FDAProduct>? results;

  FDAModel({
    this.meta,
    this.results,
  });

  FDAModel.fromJson(Map<String, dynamic> json) {
    meta = (json['meta'] as Map<String, dynamic>?) != null
        ? Meta.fromJson(json['meta'] as Map<String, dynamic>)
        : null;
    results = (json['results'] as List?)
        ?.map((dynamic e) => FDAProduct.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['meta'] = meta?.toJson();
    json['results'] = results?.map((e) => e.toJson()).toList();
    return json;
  }
}

class Meta {
  String? disclaimer;
  String? terms;
  String? license;
  String? lastUpdated;
  FDAProduct? results;

  Meta({
    this.disclaimer,
    this.terms,
    this.license,
    this.lastUpdated,
    this.results,
  });

  Meta.fromJson(Map<String, dynamic> json) {
    disclaimer = json['disclaimer'] as String?;
    terms = json['terms'] as String?;
    license = json['license'] as String?;
    lastUpdated = json['last_updated'] as String?;
    results = (json['results'] as Map<String, dynamic>?) != null
        ? FDAProduct.fromJson(json['results'] as Map<String, dynamic>)
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['disclaimer'] = disclaimer;
    json['terms'] = terms;
    json['license'] = license;
    json['last_updated'] = lastUpdated;
    json['results'] = results?.toJson();
    return json;
  }
}

class Results {
  int? skip;
  int? limit;
  int? total;

  Results({
    this.skip,
    this.limit,
    this.total,
  });

  Results.fromJson(Map<String, dynamic> json) {
    skip = json['skip'] as int?;
    limit = json['limit'] as int?;
    total = json['total'] as int?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['skip'] = skip;
    json['limit'] = limit;
    json['total'] = total;
    return json;
  }
}

class FDAProduct {
  String? country;
  String? city;
  String? address1;
  String? reasonForRecall;
  String? address2;
  String? productQuantity;
  String? codeInfo;
  String? centerClassificationDate;
  String? distributionPattern;
  String? state;
  String? productDescription;
  String? reportDate;
  String? classification;
  String? recallingFirm;
  String? recallNumber;
  String? initialFirmNotification;
  String? productType;
  String? eventId;
  String? terminationDate;
  String? moreCodeInfo;
  String? recallInitiationDate;
  String? postalCode;
  String? voluntaryMandated;
  String? status;

  FDAProduct({
    this.country,
    this.city,
    this.address1,
    this.reasonForRecall,
    this.address2,
    this.productQuantity,
    this.codeInfo,
    this.centerClassificationDate,
    this.distributionPattern,
    this.state,
    this.productDescription,
    this.reportDate,
    this.classification,
    this.recallingFirm,
    this.recallNumber,
    this.initialFirmNotification,
    this.productType,
    this.eventId,
    this.terminationDate,
    this.moreCodeInfo,
    this.recallInitiationDate,
    this.postalCode,
    this.voluntaryMandated,
    this.status,
  });

  FDAProduct.fromJson(Map<String, dynamic> json) {
    country = json['country'] as String?;
    city = json['city'] as String?;
    address1 = json['address_1'] as String?;
    reasonForRecall = json['reason_for_recall'] as String?;
    address2 = json['address_2'] as String?;
    productQuantity = json['product_quantity'] as String?;
    codeInfo = json['code_info'] as String?;
    centerClassificationDate = json['center_classification_date'] as String?;
    distributionPattern = json['distribution_pattern'] as String?;
    state = json['state'] as String?;
    productDescription = json['product_description'] as String?;
    reportDate = json['report_date'] as String?;
    classification = json['classification'] as String?;
    recallingFirm = json['recalling_firm'] as String?;
    recallNumber = json['recall_number'] as String?;
    initialFirmNotification = json['initial_firm_notification'] as String?;
    productType = json['product_type'] as String?;
    eventId = json['event_id'] as String?;
    terminationDate = json['termination_date'] as String?;
    moreCodeInfo = json['more_code_info'] as String?;
    recallInitiationDate = json['recall_initiation_date'] as String?;
    postalCode = json['postal_code'] as String?;
    voluntaryMandated = json['voluntary_mandated'] as String?;
    status = json['status'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['country'] = country;
    json['city'] = city;
    json['address_1'] = address1;
    json['reason_for_recall'] = reasonForRecall;
    json['address_2'] = address2;
    json['product_quantity'] = productQuantity;
    json['code_info'] = codeInfo;
    json['center_classification_date'] = centerClassificationDate;
    json['distribution_pattern'] = distributionPattern;
    json['state'] = state;
    json['product_description'] = productDescription;
    json['report_date'] = reportDate;
    json['classification'] = classification;
    json['recalling_firm'] = recallingFirm;
    json['recall_number'] = recallNumber;
    json['initial_firm_notification'] = initialFirmNotification;
    json['product_type'] = productType;
    json['event_id'] = eventId;
    json['termination_date'] = terminationDate;
    json['more_code_info'] = moreCodeInfo;
    json['recall_initiation_date'] = recallInitiationDate;
    json['postal_code'] = postalCode;
    json['voluntary_mandated'] = voluntaryMandated;
    json['status'] = status;
    return json;
  }
}
