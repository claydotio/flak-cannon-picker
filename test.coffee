uuid = require 'uuid'
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
