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
Int型
"""

let c = 123 // Int型
let d = 1.0 // Double型

//最大値、最小値の取得
print(Int8.min)
print(Int8.max)

