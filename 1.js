// 2 jam, javascript

function swap(arr) {
  const abcd = ['a.', 'b.', 'c.', 'd.']
  for (let i = 0; i < arr.length; i++) {
    if (i === 0) {
      console.log(abcd[i] + ' "' + arr.join('", "') + '"');
    } else if (i % 2 !== 0) {
      const arr_i = arr.splice(i, 1);
      const new_arr = arr_i.concat(arr);
      arr = new_arr;
      console.log(abcd[i] + ' "' + arr.join('", "') + '"');
    } else if (i % 2 === 0) {
      const arr_0 = arr[0];
      arr[0] = arr[i];
      arr[i] = arr_0;
      console.log(abcd[i] + ' "' + arr.join('", "') + '"');
    }
  }
}

swap(['Volvo', 'BMW', 'Toyota', 'Kijang']);
