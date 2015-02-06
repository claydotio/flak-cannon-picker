chai = require 'clay-chai'
should = chai.should()

picker = require './index'

describe 'picker', ->
  describe 'uniformChoice()', ->
    it 'chooses uniformly', ->
      a = '124ax'
      b = '124accd'
      c = '123ab'

      picker.uniformChoice(a, ['a', 'b', 'c']).should.be 'a'
      picker.uniformChoice(b, ['a', 'b', 'c']).should.be 'b'
      picker.uniformChoice(c, ['a', 'b', 'c']).should.be 'c'

  describe 'weightedChoice()', ->
    it 'chooses based on weights', ->
      a = '124ax'
      b = '124accd'
      c = '123abc'

      picker.weightedChoice(a, {a: 1, b: 1, c: 1}).should.be 'a'
      picker.weightedChoice(b, {a: 1, b: 1, c: 4}).should.be 'c'
      picker.weightedChoice(c, {a: 1, b: 1, c: 4}).should.be 'a'
