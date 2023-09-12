class District {
  String? districtId;
  String? districtName;

  District({this.districtId, this.districtName});

  District.fromJson(Map<String, dynamic> json) {
    districtId = json['DISTRICT_ID'];
    districtName = json['DISTRICT_NAME'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['DISTRICT_ID'] = districtId;
    data['DISTRICT_NAME'] = districtName;
    return data;
  }
}
