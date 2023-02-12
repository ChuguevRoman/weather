
The application starts from the loading screen, makes a request to get the location of the device. When the user gives permission, a request is made to the OpenWeatherMap site, the current coordinates are substituted, and a response is received with weather data that is transmitted to the display screen for this data. It immediately starts up. While this is happening
the user sees a loading indicator.
At the top right there is an icon of the city, by clicking on which we go to the screen for entering the name of the city. Top left - icon of the current location, clicking on which, the interface changes to the data of the current location.

Libraries used:
geolocator: ^9.0.2
http: ^0.13.5
flutter_spinkit: ^5.1.0