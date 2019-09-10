  /*
   * Declare a RegExp object variable named 're'
   * It must match ALL occurrences of numbers in a string.
   */
  function regexVarI() {
      var re = /([0-9])+/g;
      return re;
  }

  /*
   * Declare a RegExp object variable named 're'
   * It must match a string that starts with 'Mr.', 'Mrs.', 'Ms.', 'Dr.', or 'Er.', 
   * followed by one or more letters.
   */
  function regexVarII() {
      var re = /^(Mr|Mrs|Ms|Dr|Er)(\.)([a-zA-Z]+$)/;
      return re;
  }

  /*
   * Declare a RegExp object variable named 're'
   * It must match a string that starts and ends with the same vowel (i.e., {a, e, i, o, u})
   */
  function regexVarIII() {
      let re = new RegExp(/^(a|e|i|o|u).*\1$/);
      return re;
  }