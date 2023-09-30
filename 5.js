//30 menit, javascript

function pecah(strUang) {
  [, b, c] = strUang.split('.');

  int_b = parseInt(b) * 1000;
  int_c = parseInt(c);

  uang_sekarang = b + c;
  uang_100 = parseInt(uang_sekarang / 100);
  uang_sekarang = uang_sekarang - uang_100 * 100;
  uang_50 = parseInt(uang_sekarang / 50);
  uang_sekarang = uang_sekarang - uang_50 * 50;
  uang_20 = parseInt(uang_sekarang / 20);
  uang_sekarang = uang_sekarang - uang_20 * 20;
  uang_10 = parseInt(uang_sekarang / 10);
  uang_sekarang = uang_sekarang - uang_10 * 10;
  uang_5 = parseInt(uang_sekarang / 5);
  uang_sekarang = uang_sekarang - uang_5 * 5;
  uang_1 = parseInt(uang_sekarang / 1);
  uang_sekarang = uang_sekarang - uang_1 * 1;

  console.log('pecahan Rp.100.000,- ada', uang_100);
  console.log('pecahan Rp.50.000,- ada', uang_50);
  console.log('pecahan Rp.20.000,- ada', uang_20);
  console.log('pecahan Rp.10.000,- ada', uang_10);
  console.log('pecahan Rp.5.000,- ada', uang_5);
  console.log('pecahan Rp.1.000,- ada', uang_1);
}

pecah('Rp.1.586.000,-');
