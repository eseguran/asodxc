import Foundation
struct Constants {

    
    static let MY_INSTANCE_ADDRESS = "asodxc.us1a.cloud.realm.io" 
    
    static let AUTH_URL  = URL(string: "https://\(MY_INSTANCE_ADDRESS)")!
    static let REALM_URL = URL(string: "realms://\(MY_INSTANCE_ADDRESS)/swift")!
}
