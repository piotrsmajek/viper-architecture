import UIKit

final class RootRouter: RootWireframe {

    func presentUsersScreen(in window: UIWindow) {
        window.makeKeyAndVisible()
        window.rootViewController = UsersRouter.assembleModule()
    }
}
