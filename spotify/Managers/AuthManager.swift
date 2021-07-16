//
//  AuthManager.swift
//  spotify
//
//  Created by Ned Ememanka on 2021-07-15.
//

import Foundation



final class AuthManager {
    
    static let shared = AuthManager()
    
    
    
    struct Constants {
        
        
        static let clientID = "ef4bc0cc00f846f4adadc1692736abcc"
        static let clientSecret = "2686b67973644a129536f51a74771a33"
    }
    
    
    
    private init() {}
    
    
    
    public var signInURL: URL? {
    
      let scopes = "user-read-private"
        let redirectURI = "http://chinedu.ca/".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
      let base = "https://accounts.spotify.com/authorize"
        let string = "\(base)?response_type=code&client_id=\(Constants.clientID)&scope=\(scopes)&redirect_uri=\(redirectURI)"

        return URL(string: string)
    }
    
    
    
    var isSignedIn: Bool {
        
        return false
    }
    
    private var accessToken: String? {
        return nil
        
        
    }
    
    
    private var refreshToken: String? {
        
        return nil
    }
    
    private var tokenexpirationDate: Date? {
        
        
        
        return nil
    }


    private var shouldRefreshToken: Bool {
        
        
        
        
        return false
        
    }
    
    
}
