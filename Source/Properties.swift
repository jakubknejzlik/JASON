//
//  Properties.swift
//
//  Copyright (c) 2016 Damien (http://delba.io)
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

// MARK: - String

extension JSON {
    /// The value as a string or nil if not present/convertible
    public var string: String? { return object as? String }
    /// The value as a string or "" if not present/convertible
    public var stringValue: String { return string ?? "" }
}

// MARK: - Integer

extension JSON {
    /// The value as a 64-bit signed integer or nil if not present/convertible
    public var int: Int? { return object as? Int }
    /// The value as a 64-bit signed integer or 0 if not present/convertible
    public var intValue: Int { return int ?? 0 }
}

// MARK: - FloatingPointType

extension JSON {
    /// The value as a 64-bit floating-point number or nil if not present/convertible
    public var double: Double? { return object as? Double }
    /// The value as a 64-bit floating-point number or 0.0 if not present/convertible
    public var doubleValue: Double { return double ?? 0 }

    /// The value as a 32-bit floating-point number or nil if not present/convertible
    public var float: Float? { return object as? Float }
    /// The value as a 32-bit floating-point number or 0.0 if not present/convertible
    public var floatValue: Float { return float ?? 0 }
}

// MARK: - Bool

extension JSON {
    /// The value as a boolean or nil if not present/convertible
    public var bool: Bool? { return object as? Bool }
    /// The value as a boolean or false if not present/convertible
    public var boolValue: Bool { return bool ?? false }
}

// MARK: - Dictionary

extension JSON {
    /// The value as a dictionary or nil if not present/convertible
    public var dictionary: [String: AnyObject]? { return object as? [String: AnyObject] }
    /// The value as a dictionary or an empty dictionary if not present/convertible
    public var dictionaryValue: [String: AnyObject] { return dictionary ?? [:] }
}

extension JSON {
    /// The value as a dictionary or nil if not present/convertible
    public var jsonDictionary: [String: JSON]? { return dictionary?.reduceValues{ JSON($0) }}
    /// The value as a dictionary or an empty dictionary if not present/convertible
    public var jsonDictionaryValue: [String: JSON] { return jsonDictionary ?? [:] }
}

// MARK: - Array

extension JSON {
    /// The value as an array or nil if not present/convertible
    public var array: [AnyObject]? { return object as? [AnyObject] }
    /// The value as an array or an empty array if not present/convertible
    public var arrayValue: [AnyObject] { return array ?? [] }
}

extension JSON {
    /// The value as an array or nil if not present/convertible
    public var jsonArray: [JSON]? { return array?.map{ JSON($0) } }
    /// The value as an array or an empty array if not present/convertible
    public var jsonArrayValue: [JSON] { return jsonArray ?? [] }
}

// MARK: - NSDictionary

internal extension JSON {
    /// The value as a dictionary (NSDictionary) or nil if not present/convertible
    var nsDictionary: NSDictionary? { return object as? NSDictionary }
}

// MARK: - NSArray

internal extension JSON {
    /// The value as an array (NSArray) or nil if not present/convertible
    var nsArray: NSArray? { return object as? NSArray }
}
