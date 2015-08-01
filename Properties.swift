//
//  JASON
//
// The MIT License (MIT)
//
// Copyright (c) 2015 Damien D.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
//

import JASON

// MARK: Signed Integers

extension JSON {
    // The value as a 8-bit signed integer or nil if not present/convertible
    public var int8: Int8? { return int != nil ? Int8(intValue) : nil }
    // The value as a 8-bit signed integer or 0 if not present/convertible
    public var int8Value: Int8 { return int8 ?? 0 }
    
    // The value as a 16-bit signed integer or nil if not present/convertible
    public var int16: Int16? { return int != nil ? Int16(intValue) : nil }
    // The value as a 16-bit signed integer or 0 if not present/convertible
    public var int16Value: Int16 { return int16 ?? 0 }
    
    // The value as a 32-bit signed integer or nil if not present/convertible
    public var int32: Int32? { return int != nil ? Int32(intValue) : nil }
    // The value as a 64-bit signed integer or 0 if not present/convertible
    public var int32Value: Int32 { return int32 ?? 0 }
    
    // The value as a 64-bit signed integer or nil if not present/convertible
    public var int64: Int64? { return int != nil ? Int64(intValue) : nil }
    // The value as a 64-bit signed integer or 0 if not present/convertible
    public var int64Value: Int64 { return int64 ?? 0 }
}

// MARK: Unsigned Integers

extension JSON {
    // The value as a 64-bit unsigned integer or nil if not present/convertible
    public var uInt: UInt? { return int != nil ? UInt(intValue) : nil }
    // The value as a 64-bit unsigned integer or 0 if not present/convertible
    public var uIntValue: UInt { return uInt ?? 0 }
    
    // The value as a 8-bit signed integer or nil if not present/convertible
    public var uInt8: UInt8? { return int != nil ? UInt8(intValue) : nil }
    // The value as a 8-bit signed integer or 0 if not present/convertible
    public var uInt8Value: UInt8 { return uInt8 ?? 0 }
    
    // The value as a 16-bit signed integer or nil if not present/convertible
    public var uInt16: UInt16? { return int != nil ? UInt16(intValue) : nil }
    // The value as a 16-bit signed integer or 0 if not present/convertible
    public var uInt16Value: UInt16 { return uInt16 ?? 0 }
    
    // The value as a 32-bit signed integer or nil if not present/convertible
    public var uInt32: UInt32? { return int != nil ? UInt32(intValue) : nil }
    // The value as a 32-bit signed integer or 0 if not present/convertible
    public var uInt32Value: UInt32 { return uInt32 ?? 0 }
    
    // The value as a 64-bit signed integer or nil if not present/convertible
    public var uInt64: UInt64? { return int != nil ? UInt64(intValue) : nil }
    // The value as a 64-bit signed integer or 0 if not present/convertible
    public var uInt64Value: UInt64 { return uInt64 ?? 0 }
}