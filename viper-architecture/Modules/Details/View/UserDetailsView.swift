import UIKit

final class UserDetailsView: UIView {

    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }

    func configureView(user: User) {
        descriptionLabel.text = user.firstName + " " + user.lastName + "\n" + user.email
    }
}

private extension UserDetailsView {
    func setupView() {
        backgroundColor = .white
        addSubview(descriptionLabel)
        NSLayoutConstraint.activate([descriptionLabel.topAnchor.constraint(equalTo: topAnchor, constant: 16),
                                     descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
                                     descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 32)])
    }
}

