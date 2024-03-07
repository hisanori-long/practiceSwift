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

"""
Optional<Wrapped>型
"""
//enum Optional<Wrapped> { // 列挙型
//    case none // 値が不在の場合
//    case some(Wrapped) // 値が存在する場合
//}

let none = Optional<Int>.none
print(".none: \(String(describing: none))")
let some = Optional<Int>.some(1)
print(".some: \(String(describing: some))")

// 型推論
print(Optional.some(1)) // Optional<Int>型だと推論
//print(Optional.none) // .noneは型の推論ができないので、明示的に示す必要がある

// シンプルな型の値の生成
var t: Int?
t = nil // nilリテラルを代入し、.noneの生成
t = Optional(1) // イニシャライザによる、.someの生成
t = 1 // 値を代入し、.someの生成

// nilリテラルの代入による.noneの生成
let optionalIntNil: Int? = nil
let optionalStringNil: String? = nil
print(type(of: optionalIntNil), String(describing: optionalIntNil))
print(type(of: optionalStringNil), String(describing: optionalStringNil))

// イニシャライザいよる.someの生成
let optionalIntSome = Optional(1)
let optionalStringSome = Optional("a")
print(type(of: optionalIntSome), String(describing: optionalIntSome))
print(type(of: optionalStringSome), String(describing: optionalStringSome))

// 値の代入による.someの生成（Int?型を使用）
let optionalInt: Int? = 1
print(type(of: optionalInt), String(describing: optionalInt))

//型のアンラップ（Optional<Wrapped>型の値からWrapped型の値を取り出すこと）
// Int?同士の四則演算は、値を持っていない可能性があるため、コンパイルエラーになる
let a_Optional: Int? = 1
let b_Optional: Int? = 1
//a + b // コンパイルエラー

// オプショナルバインディング（if文による値の取り出し）
let OptionalA = Optional("a")
if let a = OptionalA {
    print(type(of: a))
}

//??演算子（値が存在しない場合のデフォルトの値を指定する）
let optionalInt2: Int? = 1
let int2 = optionalInt2 ?? 3 // 値が存在したので、そのまま返す
let optionalInt3: Int? = nil
let int3 = optionalInt3 ?? 3 // 値が存在しないので、デフォルトの値を返す

// 強制アンラップ（あたいが存在しなければ、実行時エラーになる）
let u: Int? = 1
let v: Int? = 1
u! + v!

//オプショナルチェイン（アンラップを使用せずに値のプロパティやメソッドにアクセス）
let optionalDouble = Optional(1.0)
let optionalIsInfinite = optionalDouble?.isInfinite //あたいが存在しなければnilを返す
print(String(describing: optionalIsInfinite))

let optionalRange = Optional(0..<10)
let containsSeven = optionalRange?.contains(7)
print(String(describing: containsSeven))

// map(_:)メソッドとflatMap(_:)メソッド（アンラップを伴わずに値の変更を行う）
let w = Optional(17)
let x = w.map({ value in value * 2})
print(type(of: x))

let aa = Optional("17")
let ab = aa.map({ value in Int(value)}) // mapでは、Optional<Wrapped>が２重になってしまう
print(type(of: ab)) // Optional<Optional<Int>>.Ty>>
let ac = aa.flatMap({ value in Int(value)}) // flatMapによりOptional<Wrapped>が２重になることを防ぐ
print(type(of: ac)) // Optional<Int>.Typ>

// 暗黙的にアンラップされたOptional<Wrapped>型（Wrapped!型）
var ad: String? = "a"
var ae: String! = "b" // 暗黙的にアンラップする
print(type(of: ad))
print(type(of: ae))
var af: String! = ad // アンラップしていないので、アンラップが必要
var ag: String? = ae // 暗黙的にアンラップしているので、アンラップは不要

var ah: Int! = nil
//ah + 1 // Intに値がないため、実行時にエラーが起きる

"""
Any型
"""
let string: Any = "abc"
let int: Any = 123

// Any型への代入による方の損失
let ay: Any = 1
let aj: Any = 2
//ay + aj //コンパイルエラー（元のInt型の情報が失われているから四則演算が使えない）


