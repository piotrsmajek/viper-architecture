import Foundation

final class UsersService {

    static let path = "/users/"

    static func getUsers(onSucess: @escaping (UserList) -> (),
                  onError: @escaping (Error) -> ()) {
        APIClient.execute(path: path) { model in
            onSucess(model)
        } onError: { error in
            onError(error)
        }
    }
}
