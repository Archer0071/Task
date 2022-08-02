
import Foundation

struct FirstStage: Codable {

  var cores : [Cores]? = []

  enum CodingKeys: String, CodingKey {

    case cores = "cores"
  
  }


}
