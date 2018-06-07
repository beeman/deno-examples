import {
  divide,
  multiply,
  power,
  sum,
  subtract,
} from 'https://raw.githubusercontent.com/beeman/deno-examples/master/libs/calc.ts'

const a = 2
const b = 4

console.log('divide   a, b = ', divide(a, b))
console.log('divide   b, a = ', divide(b, a))
console.log('multiply a, b = ', multiply(a, b))
console.log('multiply b, a = ', multiply(b, a))
console.log('power    a, b = ', power(a, b))
console.log('power    b, a = ', power(b, a))
console.log('sum      a, b = ', sum(a, b))
console.log('sum      b, a = ', sum(b, a))
console.log('subtract a, b = ', subtract(a, b))
console.log('subtract b, a = ', subtract(b, a))
