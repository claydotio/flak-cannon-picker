# Flak Cannon Picker

Main project: [flak-cannon](https://github.com/claydotio/flak-cannon)

#### uniformChoice(seed:Any, choices:Array<Any>)

Returns a choice from the array, based on a seed  
Note: seed will be converted to a string via `String(seed)`

```coffee
picker = require 'flak-cannon-picker'
picker.uniformChoice('mySeed', ['item1', 'item2', 'item3'])
```


#### weightedChoice(seed:Any, choices:Object<String>:<Number>)

Returns a choice from the array, based on a seed and weights  
Note: seed will be converted to a string via `String(seed)`

```coffee
picker = require 'flak-cannon-picker'
picker.weightedChoice('mySeed', {item1: 1, item2: 1, item3: 8})
```
