
import Foundation

struct Telemetry: Codable {

  var flightClub : String? = nil

  enum CodingKeys: String, CodingKey {

    case flightClub = "flight_club"
  
  }


}
