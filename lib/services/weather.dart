import '../services/network.dart';
import '../services/location.dart';

const kApiKey = '09ab6c6cfc51da1b3560cee88f8a94b1';
const kOpenWeatherMapUrl = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {
  Future<dynamic> getLocationWeather() async {
    Location location = Location();
    await location.getCurrentLocation();
    NetworkHelper networkHelper = NetworkHelper(
        '$kOpenWeatherMapUrl?lat=${location.latitude}&lon=${location
            .longitude}&appid=$kApiKey&units=metric');
    return await networkHelper.getData();
  }
}