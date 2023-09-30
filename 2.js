// 18 menit, javascript

function loop1_10() {
  for (let i = 1; i < 11; i++) {
    let str = '';
    if (i < 6) {
      for (let j = 0; j < i; j++) {
        str += '0';
      }
      str += i.toString();
    } else if (i >= 6 && i < 10) {
      str += i.toString();
      for (let j = 0; j < i; j++) {
        str += '0';
      }
    } else {
      str += i.toString();
      for (let j = 0; j < i - 1; j++) {
        str += '0';
      }
    }
    console.log('- ' + str);
  }
}

loop1_10();
