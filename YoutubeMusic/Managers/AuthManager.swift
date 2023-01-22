//
//  AuthManager.swift
//  YoutubeMusic
//
//  Created by Varun Bagga on 19/01/23.
//

import Foundation

final class AuthManager{
    
    struct constants{
        static let clientID = "30801463c25641e0a025fb0bc635e28a"
        static let clientSecret = "e1dce8ef73bf4583bae0573e8bd58ec1"
    }
    
    
    static let shared = AuthManager()
    
//    public var signInURL:URL? {
//    
//    }
    
    private init(){
        
    }
    
    var isSignedIn:Bool{
        return false
    }
    
    private var accessToken:String?{
        return nil
    }
    
    private var refreshToken:String?{
        return nil
    }
    
    private var tokenexpirationDate:Date?{
        return nil
    }
    private var shouldRefrreshToken:Bool{
        return false
    }
    
}
