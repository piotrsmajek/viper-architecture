import UIKit

final class UsersRouter: UsersWireframe {

    weak var viewController: UIViewController?

    static func assembleModule() -> UIViewController {
        let view = UsersViewController()
        let presenter = UsersPresenter()
        let interactor = UsersInteractor()
        let router = UsersRouter()

        let navigation = UINavigationController(rootViewController: view)

        view.presenter = presenter

        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router

        interactor.output = presenter

        router.viewController = view

        return navigation
    }

    func presentDetails(forUser user: User) {
        let detailsModuleViewController = DetailsRouter.assembleModule(user)
        viewController?.navigationController?.pushViewController(detailsModuleViewController, animated: true)
    }
}

