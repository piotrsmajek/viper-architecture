import Foundation

struct UserList: Codable {
    let page: Int
    let data: [User]
}
