
import Foundation

struct LaunchSite: Codable {

  var siteId       : String? = nil
  var siteName     : String? = nil
  var siteNameLong : String? = nil

  enum CodingKeys: String, CodingKey {

    case siteId       = "site_id"
    case siteName     = "site_name"
    case siteNameLong = "site_name_long"
  
  }



}
