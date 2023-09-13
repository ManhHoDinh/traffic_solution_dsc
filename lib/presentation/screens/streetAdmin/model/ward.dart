class Ward {
  String? wardId;
  String? wardName;
  String? districtId;

  Ward({this.wardId, this.wardName, this.districtId});

  Ward.fromJson(Map<String, dynamic> json) {
    wardId = json['WARD_ID'];
    wardName = json['WARD_NAME'];
    districtId = json['DISTRICT_ID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['WARD_ID'] = wardId;
    data['WARD_NAME'] = wardName;
    data['DISTRICT_ID'] = districtId;
    return data;
  }
}
