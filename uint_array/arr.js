/**
 * memの基本操作
 */

const mem = new WebAssembly.Memory({ initial: 1 });
console.log(mem);

// memから,offset0, length16のviewを作成
const view = new DataView(mem.buffer, 0, 16);
console.log(view);

// viewにデータをセット
// view.setUint32(0, 2222);
view.setUint8(0, 257);
console.log(view);

// offsetも指定できる
view.setUint8(1, 2);
console.log(view);
