//
//  AppViewControllers.swift
//  Messenger
//
//  Created by Deepika Ramesh on 6/26/23.
//



import Foundation
import UIKit

enum AppViewControllers {
	case baseTabBar
	case login
	
	var identifier: String {
		switch self {
			case .baseTabBar: return "BaseTabBarViewController"
			case .login: return "LoginViewController"
		}
	}
	
	var storyboardName: String {
		switch self {
			case .baseTabBar: return "Main"
			case .login: return "Authentication"
		}
	}
	
	var viewController: UIViewController {
		return UIStoryboard(
			name: self.storyboardName,
			bundle: nil
		).instantiateViewController(withIdentifier: self.identifier)
	}
}
