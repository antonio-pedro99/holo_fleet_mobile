import 'package:flutter/material.dart';
import 'package:holo_fleet_mobile/models/resource.dart';
import 'package:holo_fleet_mobile/services/auth_response.dart';
import 'package:holo_fleet_mobile/services/resources_api.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.token}) : super(key: key);
  final String token;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTextStyle(
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: "SF Pro Display",
              color: Colors.black,
              fontSize: 18),
          child: FutureBuilder<List<Resource>>(
              future: ResourcesAPI.getResourceList(widget.token),
              builder: ((context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text("Error: ${snapshot.error}"));
                }
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text("${snapshot.data![index].name}"),
                        subtitle: Text("${snapshot.data![index].year}"),
                      );
                    });
              }))),
    );
  }
}
