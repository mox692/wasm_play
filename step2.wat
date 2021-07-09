;; watにおけるfunctionのsyntax(引数, 返り値, export etc...)
;; stackマシン的な扱い

(module
  (func $add (param $lhs i32) (param $rhs i32) (result i32)
    local.get $lhs  ;; stackに第1引数をpush
    local.get $rhs  ;; stackに第2引数をpush
    i32.add)        ;; add instructionで演算結果をstackにpush
  (export "add" (func $add))
)

;; 00000000  00 61 73 6d 01 00 00 00  01 07 01 60 02 7f 7f 01  |.asm.......`....|
;; 00000010  7f 03 02 01 00 07 07 01  03 61 64 64 00 00 0a 09  |.........add....|
;; 00000020  01 07 00 20 00 20 01 6a  0b                       |... . .j.|
;; 00000029