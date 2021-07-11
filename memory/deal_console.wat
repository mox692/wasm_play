;; memに直接書き込むのではなく、js側でmemに対するoffsetとlengthを指定した
;; 関数を用意して、そいつをwatからcallする

(module
    (import "console" "log" (func $log (param i32) (param i32)))    ;; funcのimport
    (import "js" "mem" (memory 1)) ;; memのimport

    (data (i32.const 0) "abcdefg")  ;; memにいろいろ書く

    (func (export "write_console")
        i32.const 0
        i32.const 5
        call $log
    )
)