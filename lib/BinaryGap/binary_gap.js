(function(N){
    const binary = Number(N).toString(2)
    const ones = binary.split('0').filter(item => item.indexOf('1') > -1).join('').split('_')[0].length;
    const result = binary.split('1').slice(0,ones).sort((a,b) => b.length - a.length)[0];

    return result ? result.length : 0
})(bin);