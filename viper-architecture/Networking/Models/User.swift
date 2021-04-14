import Foundation

struct User: Codable {
    let userId: Int
    let firstName: String
    let lastName: String
    let email: String

    enum CodingKeys: String, CodingKey {
        case userId = "id"
        case firstName = "first_name"
        case lastName = "last_name"
        case email
    }
}
