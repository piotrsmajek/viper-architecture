import UIKit

final class UserDetailsViewController: UIViewController {

    var presenter: DetailsPresentation!

    private let detailView: UserDetailsView = {
        let view = UserDetailsView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
        setupView()
    }
}

extension UserDetailsViewController: DetailsView {

    func showDetails(forUser user: User) {
        detailView.configureView(user: user)
    }
}

private extension UserDetailsViewController {
    func setupView() {
        title = "Detail"
        view.backgroundColor = .white
        view.addSubview(detailView)

        NSLayoutConstraint.activate([detailView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                                     detailView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
                                     detailView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                                     detailView.trailingAnchor.constraint(equalTo: view.trailingAnchor)])
    }
}
