//
//  UserDefaultsService.swift
//  Messenger
//
//  Created by Deepika Ramesh on 6/23/23.
//



import Foundation
import UserDefaultsService

enum SessionState: String, UserDefaultsKeyProtocol {
	case notLoggedIn
	case hasLoggedInSession
	case isSessionSetup
	case isFirstLaunch
	case lastSyncedTime
	
	var key: String {
		return self.rawValue
	}
}
