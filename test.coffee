uuid = require 'uuid'
chai = require 'clay-chai'
should = chai.should()

picker = require './index'

describe 'picker', ->
  describe 'uuidToNumber()', ->
    it 'converts a uuid into a number', ->
      id = uuid.v4()
      picker.uuidToNumber(id).should.be.a.Number

  describe 'uniformChoice()', ->
    it 'chooses uniformly', ->
      a = '6bb3f3a5-2292-4304-884c-1fdf6b792ab1'
      b = '99c05c39-8f8d-4921-96b1-ce1cc548fd7c'
      c = 'c262af74-30ac-4ac5-b4d3-45bc99cee30c'

      picker.uniformChoice(a, ['a', 'b', 'c']).should.be 'a'
      picker.uniformChoice(b, ['a', 'b', 'c']).should.be 'b'
      picker.uniformChoice(c, ['a', 'b', 'c']).should.be 'c'
