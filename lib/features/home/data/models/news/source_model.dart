class SourceModel {
  final String? id;
  final String? name;

  const SourceModel({
    this.id,
    this.name,
  });
  factory SourceModel.fromJosn(Map<String, dynamic> json) {
    return SourceModel(
      id: json['id'],
      name: json['name'],
    );
  }
}