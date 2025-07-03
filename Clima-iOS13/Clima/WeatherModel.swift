

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        switch conditionId {
        case 200...232:
            return "cloud.bolt.rain.fill" // Thunderstorm
        case 300...321:
            return "cloud.drizzle.fill" // Drizzle
        case 500...504:
            return "cloud.rain.fill" // Rain
        case 511:
            return "snow" // Freezing rain
        case 520...531:
            return "cloud.heavyrain.fill" // Shower rain
        case 600...622:
            return "snowflake" // Snow
        case 701:
            return "cloud.fog.fill" // Mist
        case 711:
            return "smoke.fill" // Smoke
        case 721:
            return "sun.haze.fill" // Haze
        case 731, 761, 762:
            return "sun.dust.fill" // Dust, Sand, Volcanic Ash
        case 741:
            return "cloud.fog.fill" // Fog
        case 751:
            return "aqi.low" // Sand
        case 771:
            return "wind" // Squall
        case 781:
            return "tornado" // Tornado
        case 800:
            return "sun.max.fill" // Clear sky
        case 801:
            return "cloud.sun.fill" // Few clouds
        case 802:
            return "cloud.fill" // Scattered clouds
        case 803:
            return "smoke.fill" // Broken clouds
        case 804:
            return "smoke.fill" // Overcast clouds
        default:
            return "questionmark" // Unknown code
        }
    }
    
    
}
