class DataModel {
  String msg;

  DataModel({this.msg});

  DataModel.fromJson(Map<String, dynamic> json) {
    // json['msg'] = "Hello World."
    msg = json['msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['msg'] = this.msg;
    return data;
  }
}