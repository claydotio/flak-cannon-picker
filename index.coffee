Chance = require 'chance'

class Picker
  _hashCode: (string) ->
    if string.length is 0
      return 0

    hash = 0

    len = string.length
    i = 0
    while i < len
      chr = string.charCodeAt(i)
      hash = ((hash << 5) - hash) + chr
      hash |= 0 # Convert to 32bit integer
      i += 1

    return hash


    maxInt = Math.pow(2, 53) - 1
    hexLength = maxInt.toString(16).length

    hex = uuid.replace(/-/g, '').slice 0, hexLength - 1
    return parseInt hex, 16

  uniformChoice: (seed, choices) =>
    chance = new Chance(@_hashCode String seed)
    choices[chance.integer {min: 0, max: choices.length - 1}]



module.exports = new Picker()
