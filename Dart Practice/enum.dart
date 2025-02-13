void main() {
  Weather weather = Weather(12.3, WeatherCondition.clowdy);
  weather.displayweather();
  weather.suggestactivity();
}

enum WeatherCondition { sunny, rainy, clowdy, snowy, windy }

class Weather {
  double temperature;
  WeatherCondition condition;

  Weather(this.temperature, this.condition);

  void displayweather() {
    print("Temperature: $temperature");
  }

  void suggestactivity() {
    switch (condition) {
      case WeatherCondition.sunny:
        print("Go for walk");
        break;
      case WeatherCondition.rainy:
        print("Stay indoors and read a book.");
        break;
      case WeatherCondition.clowdy:
        print("Take an umbrella, just in case.");
        break;
      case WeatherCondition.snowy:
        print("Build a snowman or drink hot chocolate.");
        break;
      case WeatherCondition.windy:
        print("Fly a kite or secure loose objects.");
        break;
    }
  }
}
