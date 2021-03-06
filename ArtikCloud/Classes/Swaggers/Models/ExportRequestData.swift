//
// ExportRequestData.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Export Request Data. */
public class ExportRequestData: JSONEncodable {

    /** Add header to csv format */
    public var csvHeaders: Bool?
    /** Timestamp of latest message (in milliseconds since epoch). */
    public var endDate: Int?
    /** Returned Export ID that should be used to check status and get the export result. */
    public var exportId: String?
    /** Format of the export. */
    public var format: String?
    /** Ascending or descending sort order. */
    public var order: String?
    /** Source Device IDs being searched for messages (Comma-separated for multiple Device IDs). */
    public var sdids: String?
    /** Source Device Type IDs being searched for messages (Comma-separated for multiple Device Type IDs). */
    public var sdtids: String?
    /** Timestamp of earliest message (in milliseconds since epoch). */
    public var startDate: Int?
    /** Trial ID being searched for messages. */
    public var trialId: String?
    /** Owner&#39;s user IDs being searched for messages (Comma-separated for multiple User IDs). */
    public var uids: String?
    /** URL added to successful email message. */
    public var url: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["csvHeaders"] = self.csvHeaders
        nillableDictionary["endDate"] = self.endDate
        nillableDictionary["exportId"] = self.exportId
        nillableDictionary["format"] = self.format
        nillableDictionary["order"] = self.order
        nillableDictionary["sdids"] = self.sdids
        nillableDictionary["sdtids"] = self.sdtids
        nillableDictionary["startDate"] = self.startDate
        nillableDictionary["trialId"] = self.trialId
        nillableDictionary["uids"] = self.uids
        nillableDictionary["url"] = self.url
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
