
import Foundation

struct Timeline: Codable {

  var webcastLiftoff : Int? = nil

  enum CodingKeys: String, CodingKey {

    case webcastLiftoff = "webcast_liftoff"
  
  }


}
