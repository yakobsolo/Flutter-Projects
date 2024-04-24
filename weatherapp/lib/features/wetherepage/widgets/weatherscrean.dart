import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:lottie/lottie.dart';
import 'package:weatherapp/features/wetherepage/data/weatherdata.dart';
import 'package:weatherapp/features/wetherepage/model/weathermodel.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class WeatherApp extends StatefulWidget {
  const WeatherApp({super.key});

  @override
  State<WeatherApp> createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  final _weatherdata = WeatherData(apiKey: dotenv.env['API_URL']?? "");

  Weather? _weather;

  _fetchWeather() async {
    String cityName = await _weatherdata.getCurrentCity();

    try {
      final weather = await _weatherdata.getWeather(cityName);

      setState(() {
        _weather = weather;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    // TODO: implement initState

    _fetchWeather();
    super.initState();
  }

  String getWeatherAnimation(String? mainCondition) {
    if (mainCondition == null) return "assets/sunny.json";
    switch (mainCondition.toLowerCase()) {
      case 'clouds':
      case 'mist':
      case 'smoke':
      case 'haze':
      case 'dust':
      case 'fog':
        return "assets/cloudy.json";

      case 'rain':
      case 'drizzle':
      case 'shower rain':
        return "assets/rainy.json";

      case 'thunderstorm':
        return "assets/thunder.json";

      default:
        return "assets/sunny.json";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50, top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _weather?.cityName ?? "Loading city... oops check your network",
                style: TextStyle(overflow: TextOverflow.clip),
              ),
              Lottie.asset(getWeatherAnimation(_weather?.mainCondition ?? "")),
              SizedBox(
                height: 20,
              ),
              Text("${_weather?.tempreture.round()} C"),
              Text(_weather?.mainCondition ?? ""),
              Text(_weather?.mainConditionDescription ?? ""),
            ],
          ),
        ),
      ),
    );
  }
}
