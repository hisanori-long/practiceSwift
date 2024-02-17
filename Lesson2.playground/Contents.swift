import UIKit

// 変数の宣言
var a: Int

// 定数の宣言
let b: Int

// 値の代入
a = 1

// 宣言と同時に代入
let c: Int = 123

// 代入する型と変数の型が異なるとコンパイルエラー
//b = "abc"

// 式の返す値の方が一致していたら、そのまま代入できる
b = 1 + 12

// 型アノテーションを省略し、型を推論してもらう
let d = 123 // Int型を推論
let e = "abc"

// 定数に２回以上値を代入しようとするとコンパイルエラー
// d = 12 //dはすでに値が代入されているからエラー

// 変数・定数の使用
let f = d //123

// 初期化されていない変数・定数を使用すると、コンパイルエラー
let g:Int
//let h = g // gが代入されていない

// 型の確認方法
print(type(of: a))
print(type(of: e))
// help -> Show Quick Help for Selected Itemで変数の確認ができる
// option + command + 3 でQuick Helpを表示

let global = "abc"
func sampleFunction() {
    let local = "abc" // ローカルスコープ
    print(local) // OK
    print(global) // OK
}
sampleFunction()

//print(local) // Error
print(global) // OK

let same = "abc"
func sampleFunction2(){
    let same = "efg" // グローバルスコープよりもローカルスコープが優先
    print("same: ", same)
}
sampleFunction2()
print("same:", same) // ローカルスコープは影響しないので、グローバルスコープを参照

/*
 値の返却のみを行う式
 */
// リテラル式(値を直接プログラムに表記する式)
let h = 1
print(type(of: h))

let i:Int64 = 1 // 型アノテーションが明示的に示されている場合は、指定された型を返す
print(type(of: i))


// メンバー式 （プロパティやメソッドを使用する式）
// プロパティ -> 値に紐づく変数や定数のこと
// メソッド -> 値に紐づく関数
let j = "Hello, World!!"
j.count // countプロパティを使用
j.starts(with: "Hello") // startsメソッドを使用

// クロージャ式（処理を定義して他の処理に渡す）
//{ 引数 in 戻り値を返す式 }
let original = [1, 2, 3]
let doubled = original.map({ value in value * 2})
doubled

/*
 演算を行う式
 */

// 算術演算子（算術を行う演算子）
// + - * /などの演算
let k = 9 * 2
// 同じ型で演算をしないといけない
let int = 27 // Int型
let double = 0.3 // Double型
//int * double // 型が異なるためエラー

//符号演算子（数値の符号を指定する演算子）
let l = 7
-l

//不定演算子（論理値の反転を行う演算子）
let m = false
!m

let n = true
!n

/*
 処理を呼び出す式
 */
//関数を呼び出す式
max(2, 7)

//イニシャライザを呼び出す式
//インスタンスとは、型の実態で、3や"hello"などの具体的な値を表す
String(4)




