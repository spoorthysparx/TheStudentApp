import 'package:http/http.dart' as http;
import 'dart:convert';

import '../secrets.dart';
import 'dashboard.model.dart';

class DashboardController {
  Future<DashboardModel> fetchDashboard() async {
    final response = await http.get(Uri.parse("$baseUrl/dashboard"));
    if (response.statusCode == 200) {
      List<Map<String, dynamic>> res = jsonDecode(response.body);
      List<GenericModel> jobs = [];
      List<GenericModel> studentOpportunities = [];
      List<GenericModel> currentAffairs = [];
      for (var i in res) {
        if (i["type"] == "jobs") {
          jobs.add(GenericModel.fromJson(i));
        }
        if (i["type"] == "studentOpportunities") {
          studentOpportunities.add(GenericModel.fromJson(i));
        }
        if (i["type"] == "currentAffairs") {
          currentAffairs.add(GenericModel.fromJson(i));
        }
      }
      return DashboardModel(
        jobs: jobs,
        studentOpportunities: studentOpportunities,
        currentAffairs: currentAffairs,
      );
    } else {
      throw Exception("Could not load data");
    }
  }
}
