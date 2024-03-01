///
class Device {
  ///
  Device({this.name, this.message, this.queueList});

  ///
  factory Device.fromJson(Map<String, dynamic> json) => Device(
        name: json['name'] as String,
        message: json['message'] as String,
        queueList: json['queueList'] as List<dynamic>,
      );

  ///
  final String? name;

  ///
  final String? message;

  ///
  final List<dynamic>? queueList;
}
