
import Foundation

struct LaunchFailureDetails: Codable {

  var time     : Int?    = nil
  var altitude : Int?    = nil
  var reason   : String? = nil

  enum CodingKeys: String, CodingKey {

    case time     = "time"
    case altitude = "altitude"
    case reason   = "reason"
  
  }



}
