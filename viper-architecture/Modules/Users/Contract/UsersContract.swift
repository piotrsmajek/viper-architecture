import UIKit

protocol UsersView: IndicatableView {
    var presenter: UsersPresentation! { get set }

    func showUsersData(_ users: [User])
}

protocol UsersPresentation: class {
    var view: UsersView? { get set }
    var interactor: UsersUseCase! { get set }
    var router: UsersWireframe! { get set }

    func viewDidLoad()
    func didSelectUser(_ user: User)
}

protocol UsersUseCase: class {
    var output: UsersInteractorOutput! { get set }

    func fetchUsers()
}

protocol UsersInteractorOutput: class {
    func usersFetched(_ users: [User])
    func usersFetchFailed()
}

protocol UsersWireframe: class {
    var viewController: UIViewController? { get set }

    func presentDetails(forUser user: User)

    static func assembleModule() -> UIViewController
}
