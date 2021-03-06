//
// AggregateData.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Aggregate Data */
public class AggregateData: JSONEncodable {

    public var count: Int?
    public var max: Float?
    public var mean: Float?
    public var min: Float?
    public var sum: Float?
    public var variance: Float?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["count"] = self.count
        nillableDictionary["max"] = self.max
        nillableDictionary["mean"] = self.mean
        nillableDictionary["min"] = self.min
        nillableDictionary["sum"] = self.sum
        nillableDictionary["variance"] = self.variance
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
