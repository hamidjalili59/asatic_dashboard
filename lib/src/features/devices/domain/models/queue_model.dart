///
class QueueModel {
  ///
  QueueModel({
    this.name,
    this.lastTurn,
    this.maxRange,
    this.minRange,
  });

  ///
  factory QueueModel.fromJson(Map<String, dynamic> json) => QueueModel(
        name: json['name'] as String,
        lastTurn: json['lastTurn'] as int,
        minRange: json['minRange'] as int,
        maxRange: json['maxRange'] as int,
      );

  ///
  final String? name;

  ///
  /// name of queue
  ///
  final int? minRange;

  ///
  /// name of queue
  ///
  final int? maxRange;

  ///
  /// current Turn Count number on hardware
  ///
  final int? lastTurn;
}
