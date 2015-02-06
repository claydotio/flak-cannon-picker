Chance = require 'chance'
_ = require 'lodash'

hashCode = (string) ->
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


class Picker

  uniformChoice: (seed, choices) ->
    chance = new Chance(hashCode String seed)
    choices[chance.integer {min: 0, max: choices.length - 1}]


  weightedChoice: (seed, choices) ->
    chance = new Chance(hashCode String seed)
    chance.weighted _.keys(choices), _.values(choices)

module.exports = new Picker()
