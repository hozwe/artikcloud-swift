//
// UnregisterDeviceResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/**  */
public class UnregisterDeviceResponse: JSONEncodable {

    /** Device certificate information. */
    public var certificateInfo: String?
    /** Certificate&#39;s signature. */
    public var certificateSignature: String?
    /** Device created on date. */
    public var createdOn: Int?
    /** Device type id. */
    public var dtid: String?
    /** External ID of the device. */
    public var eid: String?
    /** Device id. */
    public var id: String?
    /** Device manifest version. */
    public var manifestVersion: Int?
    /** Device manifest version policy. */
    public var manifestVersionPolicy: String?
    /** Device name. */
    public var name: String?
    /** Device need provider auth. */
    public var needProviderAuth: Bool?
    /** User id. */
    public var uid: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["certificateInfo"] = self.certificateInfo
        nillableDictionary["certificateSignature"] = self.certificateSignature
        nillableDictionary["createdOn"] = self.createdOn
        nillableDictionary["dtid"] = self.dtid
        nillableDictionary["eid"] = self.eid
        nillableDictionary["id"] = self.id
        nillableDictionary["manifestVersion"] = self.manifestVersion
        nillableDictionary["manifestVersionPolicy"] = self.manifestVersionPolicy
        nillableDictionary["name"] = self.name
        nillableDictionary["needProviderAuth"] = self.needProviderAuth
        nillableDictionary["uid"] = self.uid
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
