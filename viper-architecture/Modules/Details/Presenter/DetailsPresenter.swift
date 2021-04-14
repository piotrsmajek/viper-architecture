import Foundation

final class DetailsPresenter : DetailsPresentation {

    weak var view: DetailsView?
    var wireframe: DetailsWireframe!
    var user: User!

    func viewDidLoad() {
        view?.showDetails(forUser: user)
    }
}
