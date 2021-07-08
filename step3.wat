;; calling another function inside module.
(module
  (func $getAnswer (result i32)
    i32.const 42)   ;; このように書くと、単純にi32定数をstackにpushする事になる
  (func (export "getAnswerPlus1") (result i32) ;; step2の関数宣言とexport宣言を1つの()にまとめる事もできる
    call $getAnswer
    i32.const 1
    i32.add
  )
)