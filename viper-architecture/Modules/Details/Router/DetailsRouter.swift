import UIKit

final class DetailsRouter: DetailsWireframe {

    static func assembleModule(_ user: User) -> UIViewController {
        let view = UserDetailsViewController()
        let presenter = DetailsPresenter()

        view.presenter = presenter

        presenter.view = view
        presenter.user = user

        return view
    }
}
