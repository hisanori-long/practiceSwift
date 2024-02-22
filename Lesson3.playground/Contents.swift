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

"""
String型
"""
let p = "abc" // string型

// 特殊文字
print("ライン\nフィード")
print("キャリッジ\rリターン")
print("\"ダブルクオート\"")
print("\'シングルクオート\'")
print("バックスラッシュ\\")
print("\0") // null文字

// 文字列リテラル内での値の展開
let q = 12 + 15
let output_1 = "結果：\(p)"
let output_2 = "結果：\(q)"

// 複数行の文字リテラル
let r = """
    こんにちは。
        こんばんは。
    こんにちは。
    """ // 終了の位置よりも浅い行には書けない

// 数値型との相互変換
let s = String(q)
print(Int(s)) // nilになる可能性があるため、Optional<Int>型を返す
print(Int("abc")) // nilになる可能性があるため、Optional<Int>型を返す

//比較
"abc" == "def"
"abc" == "abc"

// 結合
"abc" + "def"
var u1 = "test1"
let u2 = "test2"
u1.append(u2)

// Foundationによる高度な操作
import Foundation
// 2つの文字列間の順序の比較
let options = String.CompareOptions.caseInsensitive // caseInsentive -> 大小区別をしない
let order = "abc".compare("ABC", options: options)
order == ComparisonResult.orderedSame // orderedSame -> 順序が同じならtrueを返す

// 文字列の探索
"abc".range(of: "bc") // 0から数え始めて1番目から2番目に位置する












