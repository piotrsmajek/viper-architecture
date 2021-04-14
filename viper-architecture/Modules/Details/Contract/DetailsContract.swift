import UIKit

protocol DetailsView: class {
    var presenter: DetailsPresentation! { get set }

    func showDetails(forUser user: User)
}

protocol DetailsPresentation: class {
    var view: DetailsView? { get set }

    func viewDidLoad()
}

protocol DetailsWireframe: class {
    static func assembleModule(_ user: User) -> UIViewController
}
