import UIKit

"""
Bool型
"""
// 変数の定義
let a = true
let b = false

// 否定
print(!a)
print(!b)

// 論理積（両方ともtrueならtrue）
print(false && false)
print(false && true)
print(true && false)
print(true && true)

// 論理和（どちらか一つがtrueならtrue）
print(false || false)
print(false || true)
print(true || false)
print(true || true)

"""
数値型
"""

let c = 123 // Int型
let d = 1.0 // Double型

//最大値、最小値の取得
print(Int8.min)
print(Int8.max)

// Float型はDouble型に比べて、精度が低い
let e: Double = 12345678.9
let f: Float = 12345678.9

// 型エイリアス
typealias CLLocationDegrees = Double // CLLocationDegereesはDouble型の別名

//infinity
let g: Double = 1.0/0.0
g.isInfinite

let h: Double = Double.infinity
h.isInfinite

//NaN
let i: Double = 0.0/0.0 // 不正な計算を行うと、nanになる
i.isNaN
let j: Double = Double.nan
j.isNaN

// 型の異なる整数値同士の計算
let k: Int = 123
//let l: Int64 = a // 型が異なるため、コンパイルエラー
let l: Int64 = Int64(k) // イニシャライザで数値型を変換する

let m: Float = 1.4
//let n: Double = m // 型が異なるため、コンパイルエラー
let n: Double = Double(m) // イニシャライザで数値型を変換する
print(Int(m)) // 精度が高い型から低い型へ初期化をすると、端数が処理される

// 比較
123 == 456
123 != 456
123 > 456
123 >= 456
123 < 456
123 <= 456
//123 == 123.0 //  型が異なると、比較できない（コンパイルエラー）

// 算術
1 + 1
5 - 2
2 * 4
9 / 3
7 % 3
//Float(9.0) / Int(3) // 型が異なると、算術できない（コンパイルエラー）

// 複合代入演算子
var o = 10
o += 6
o -= 9
o *= 2
o /= 2
o %= 3

// 数値型の高度な操作
import Foundation // コアライブラリ
sin(Float.pi / 2.0)
log(1.0)










