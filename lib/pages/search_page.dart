import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/weather_cubit/weather_cubit.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});

  String? cityName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search a City'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            onSubmitted: (value) async {
              cityName = value;
              BlocProvider.of<WeatherCubit>(context)
                  .getWeathe(cityName: cityName!);

              Navigator.pop(context);
            },
            decoration: const InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 30, horizontal: 16),
                label: Text(
                  'search',
                  style: TextStyle(fontSize: 16),
                ),
                suffixIcon: Icon(Icons.search),
                hintText: 'Enter City Name',
                border: OutlineInputBorder()),
          ),
        ),
      ),
    );
  }
}
