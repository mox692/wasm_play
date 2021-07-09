;; 同じmoduleないで定義した関数を使用する(引数ありver)
;; 引数を2つとり、その和*10を返す

(module
    (func $mul (param $a i32) (param $b i32) (result i32)
        local.get $a
        local.get $b
        i32.mul 
    )
    (func (export "calc") (param $c i32) (param $d i32) (result i32) 
        local.get $c
        local.get $d
        i32.add
        i32.const 10
        call $mul
    )
)