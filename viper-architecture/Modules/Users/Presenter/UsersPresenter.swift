final class UsersPresenter: UsersPresentation {

    weak var view: UsersView?
    var interactor: UsersUseCase!
    var router: UsersWireframe!

    var users: [User] = [] {
        didSet {
            if users.count > 0 {
                view?.showUsersData(users)
            }
        }
    }

    func viewDidLoad() {
        interactor.fetchUsers()
        view?.showActivityIndicator()
    }

    func didSelectUser(_ user: User) {
        router.presentDetails(forUser: user)
    }
}

extension UsersPresenter: UsersInteractorOutput {

    func usersFetched(_ users: [User]) {
        self.users = users
        view?.hideActivityIndicator()
    }

    internal func usersFetchFailed() {
        view?.hideActivityIndicator()
    }
}

