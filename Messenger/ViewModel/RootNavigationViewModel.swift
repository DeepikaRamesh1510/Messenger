//
//  RootNavigationViewModel.swift
//  Messenger
//
//  Created by Deepika Ramesh on 6/26/23.
//



import Foundation
import UserDefaultsService

protocol RootNavigationViewProtocol: AnyObject {
	
}

protocol RootNavigationViewModelProtocol {
	var view: RootNavigationViewProtocol? { get set }
	var isUserLoggedIn: Bool { get }
}

class RootNavigationViewModel: RootNavigationViewModelProtocol {
	var view: RootNavigationViewProtocol?
	
	@UserDefault<Bool>(key: SessionState.hasLoggedInSession, defaultValue: false)
	var isUserLoggedIn: Bool
		
}
