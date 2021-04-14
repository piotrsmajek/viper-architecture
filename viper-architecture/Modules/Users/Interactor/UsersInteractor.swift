import Foundation

final class UsersInteractor: UsersUseCase {

    weak var output: UsersInteractorOutput!

    func fetchUsers() {
        UsersService.getUsers { [weak self] userList in
            self?.output.usersFetched(userList.data)
        } onError: { [weak self] error in
            self?.output.usersFetchFailed()
        }
    }
}

