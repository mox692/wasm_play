;; js側の関数(mem manage系の)をimportして、js側で作成した線型メモリに対してデータを書き込む
;; その書き込んだデータを、これまたjs側で作成したデコーダで読み込んで、console.logしてあげる

(module
    (import "js" "mem" (memory 1)) ;; mem import
     (data (i32.const 0) "Hi")

    ;; (data) ;; write to mem

    ;; (func) ;; call consolefunction
)