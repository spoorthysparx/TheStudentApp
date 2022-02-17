class DashboardModel {
  final List<GenericModel> jobs;
  final List<GenericModel> studentOpportunities;
  final List<GenericModel> currentAffairs;

  const DashboardModel({
    required this.jobs,
    required this.studentOpportunities,
    required this.currentAffairs,
  });
}

class GenericModel {
  final String title;
  final String description;
  final String imageUrl;
  final String type;

  const GenericModel({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.type,
  });

  factory GenericModel.fromJson(Map<String, dynamic> json) {
    return GenericModel(
      title: json["title"],
      description: json["description"],
      imageUrl: json["imageUrl"],
      type: json["type"],
    );
  }
}
