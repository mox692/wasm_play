;; js側で定義したadd関数をwasm中で実行する

(module
    (import "calc" "add" (func $add (param $a i32)(param $b i32)(result i32)))
    (func (export "runAddFn") (result i32)
        i32.const 33
        i32.const 22
        call $add
    )
)