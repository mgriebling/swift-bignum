import UIKit    // This is a tvOS playground
//: Playground - noun: a place where people can play
extension UInt: _UnsignedInteger {}
extension BigUInt: _UnsignedInteger {}
func fact<U:_UnsignedInteger>(n:U)->U {
    return n < 2 ? 1 : (2...n).reduce(1, combine:*)
}
let fact20 = 2432902008176640000 as UInt
let fact42 = BigUInt("3C1581D491B28F523C23ABDF35B689C908000000000", base:16)
fact20 == fact(20 as UInt)
fact42 == fact(42 as BigUInt)
extension Int: _Integer {}
extension BigInt: _Integer {}
func fact<I:_Integer>(n:I)->I {
    return n < 2 ? 1 : (2...n).reduce(1, combine:*)
}
let sfact20 = 2432902008176640000 as Int
let sfact42 = BigInt("3C1581D491B28F523C23ABDF35B689C908000000000", base:16)

fact(20 as Int)     == Int(fact(20 as UInt))
fact(42 as BigInt)  == BigInt(fact(42 as BigUInt))
