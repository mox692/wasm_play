;; sub関数を実装してみる

(module
    (func $sub (param $num1 i32) (param $num2 i32) (result i32)
        local.get $num1
        local.get $num2
        i32.sub
    )
    (export "sub" (func $sub))
)