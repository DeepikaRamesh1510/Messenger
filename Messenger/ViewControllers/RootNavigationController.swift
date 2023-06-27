//
//  RootNavigationController.swift
//  Messenger
//
//  Created by Deepika Ramesh on 6/23/23.
//



import UIKit

class RootNavigationController: UINavigationController {
	
	var viewModel: RootNavigationViewModelProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()
		self.viewModel = RootNavigationViewModel()
		checkAndSetRootVC()
    }
	
	func checkAndSetRootVC() {
		let rootVC: UIViewController = {
			switch viewModel.isUserLoggedIn {
				case true:
					return AppViewControllers.baseTabBar.viewController
				case false:
					return AppViewControllers.login.viewController
			}
		}()
		self.setViewControllers([rootVC], animated: true)
	}

}
