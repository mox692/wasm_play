/**
 * uintarrの話
 */

// とりあえず引数を渡さないで初期化
const arr = new Uint8Array();
console.log(arr);

// 値を入れてみる
arr[0] = 1;
console.log(arr); // lenを指定しないといけないみたい。。。

// 長さ3で初期化して、値を入れてみる
const arr2 = new Uint8Array(3);
console.log(arr2);
arr2[0] = 3;
console.log(arr2[0]); // Uint8Array(3) [ 0, 0, 0 ]

// Uint8の最大値以上の値を入れてみる
const arr3 = new Uint8Array(3);
arr3[0] = 257;
console.log(arr3); // Uint8Array(3) [ 1, 0, 0 ]

// Uint16で↑と同じことをする(257が入るか)
const arr4 = new Uint16Array(3);
arr4[0] = 257;
console.log(arr4); // Uint16Array(3) [ 257, 0, 0 ]

// Uint8で範囲外アクセスしてみる
const arr5 = new Uint8Array(3);
arr5[6777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777] = 22;
console.log(arr5); // Uint8Array(3) [ 0, 0, 0 ] 　変化しない

/**
 * 本題: 既存のmem bufferからoffsetとlengthを指定してuint8arrとして取り出す
 **/

// memを確保
const mem = new WebAssembly.Memory({ initial: 1 });

// とりあえずmemになんか書く, ためにviewを作成
const view = new DataView(mem.buffer, 0, 16);
console.log(view);
view.setUint32(0, 104010784);
view.setUint32(4, 130405680);
console.log(view);

// viewからUint8arrを作成 (const s = new Uint8Array() ... でやってること)
const uint8 = new Uint8Array(view.buffer, 0, 8);
console.log(uint8); // jsのarray形式として得られた＿１１
