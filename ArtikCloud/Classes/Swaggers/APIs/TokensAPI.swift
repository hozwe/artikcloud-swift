//
// TokensAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire
import PromiseKit



public class TokensAPI: APIBase {
    /**

     Check Token

     - parameter tokenInfo: (body) Token object to be checked
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func checkToken(tokenInfo tokenInfo: TokenRequest, completion: ((data: CheckTokenResponse?, error: ErrorType?) -> Void)) {
        checkTokenWithRequestBuilder(tokenInfo: tokenInfo).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }

    /**

     Check Token

     - parameter tokenInfo: (body) Token object to be checked
     - returns: Promise<CheckTokenResponse>
     */
    public class func checkToken(tokenInfo tokenInfo: TokenRequest) -> Promise<CheckTokenResponse> {
        let deferred = Promise<CheckTokenResponse>.pendingPromise()
        checkToken(tokenInfo: tokenInfo) { data, error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(data!)
            }
        }
        return deferred.promise
    }

    /**

     Check Token

     - POST /checkToken
     - Check Token
     - OAuth:
       - type: oauth2
       - name: artikcloud_oauth
     - examples: [{contentType=application/json, example={
  "data" : {
    "message" : "aeiou"
  }
}}]

     - parameter tokenInfo: (body) Token object to be checked

     - returns: RequestBuilder<CheckTokenResponse>
     */
    public class func checkTokenWithRequestBuilder(tokenInfo tokenInfo: TokenRequest) -> RequestBuilder<CheckTokenResponse> {
        let path = "/checkToken"
        let URLString = ArtikCloudAPI.basePath + path

        let parameters = tokenInfo.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<CheckTokenResponse>.Type = ArtikCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**

     Refresh Token

     - parameter grantType: (form) Grant Type.
     - parameter refreshToken: (form) Refresh Token.
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func refreshToken(grantType grantType: String, refreshToken: String, completion: ((data: RefreshTokenResponse?, error: ErrorType?) -> Void)) {
        refreshTokenWithRequestBuilder(grantType: grantType, refreshToken: refreshToken).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }

    /**

     Refresh Token

     - parameter grantType: (form) Grant Type.
     - parameter refreshToken: (form) Refresh Token.
     - returns: Promise<RefreshTokenResponse>
     */
    public class func refreshToken(grantType grantType: String, refreshToken: String) -> Promise<RefreshTokenResponse> {
        let deferred = Promise<RefreshTokenResponse>.pendingPromise()
        /*refreshToken(grantType: grantType, refreshToken: refreshToken) { data, error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(data!)
            }
        }*/
        return deferred.promise
    }

    /**

     Refresh Token

     - POST /token
     - Refresh Token
     - OAuth:
       - type: oauth2
       - name: artikcloud_oauth
     - examples: [{contentType=application/json, example={
  "access_token" : "aeiou",
  "refresh_token" : "aeiou",
  "token_type" : "aeiou",
  "expires_in" : 123456789
}}]

     - parameter grantType: (form) Grant Type.
     - parameter refreshToken: (form) Refresh Token.

     - returns: RequestBuilder<RefreshTokenResponse>
     */
    public class func refreshTokenWithRequestBuilder(grantType grantType: String, refreshToken: String) -> RequestBuilder<RefreshTokenResponse> {
        let path = "/token"
        let URLString = ArtikCloudAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "grant_type": grantType,
            "refresh_token": refreshToken
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<RefreshTokenResponse>.Type = ArtikCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: false)
    }

}