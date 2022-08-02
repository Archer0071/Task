
import Foundation

struct Fairings: Codable {

  var reused          : Bool?   = nil
  var recoveryAttempt : Bool?   = nil
  var recovered       : Bool?   = nil
  var ship            : String? = nil

  enum CodingKeys: String, CodingKey {

    case reused          = "reused"
    case recoveryAttempt = "recovery_attempt"
    case recovered       = "recovered"
    case ship            = "ship"
  
  }


}
