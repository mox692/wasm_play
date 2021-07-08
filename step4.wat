

(module
  (import "console" "log" (func $log (param i32)))  ;; importObjectのconsole.logを探しに行っている
  (func (export "logIt")
    i32.const 13
    call $log)) ;; jsのconsole.log()を実行。stackから値が1つ(一般的には引数の数分？)取り出される