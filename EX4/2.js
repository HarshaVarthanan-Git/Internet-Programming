function printAllCombinations(strings) {
    function generateCombinations(current, index) {
              if (index === strings.length) {
            console.log(current);
            return;
        }
        generateCombinations(current + strings[index], index + 1);
        generateCombinations(current, index + 1);
    }

    generateCombinations("", 0);
}

const strings = ["h", "a", "r", "s","h","a"];
printAllCombinations(strings);
