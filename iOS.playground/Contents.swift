import UIKit    // This is an iOS playground
//: Playground - noun: a place where people can play

func fact<T:_Integer>(n:T)->T { // works for any type that conforms to _Integer
    return n < 2 ? 1 : (2...n).reduce(1, combine:*)
}

let fact20ui = 2432902008176640000 as UInt
let fact42bu = BigUInt("3C1581D491B28F523C23ABDF35B689C908000000000", base:16)
fact20ui == fact(20 as UInt)
fact42bu == fact(42 as BigUInt)
let fact20si = 2432902008176640000 as Int
let fact42bi = BigInt("3C1581D491B28F523C23ABDF35B689C908000000000", base:16)

fact(20 as Int)     == Int(fact(20 as UInt))
fact(42 as BigInt)  == BigInt(fact(42 as BigUInt))

// _Integer can ** -- see operators.swift
Int(2) ** 42
BigInt(2) ** 1024
