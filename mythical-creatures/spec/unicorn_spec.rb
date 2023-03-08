require 'rspec'
require './lib/unicorn'

RSpec.describe Unicorn do
  it 'has a name' do
    #instantiate a new object from the Unicorn class
    # pass in variable for name attribute 
    unicorn = Unicorn.new("Robert")
    # assert that the variable passed in for new object instance 
    # matches name variable passed in
    expect(unicorn.name).to eq("Robert")
  end

  it 'is silver by default' do
    # instantiate a new object instance from the Unicorn class
    # pass in variable for name attribute
    unicorn = Unicorn.new('Margaret')
    # pass in variable for the color attribute
    expect(unicorn.color).to eq('silver')
    # define a method called .silver? 
    #assert that the value returned will be true by default
    expect(unicorn.silver?).to eq(true)
    expect(unicorn.silver?).to be true
  end

  it 'doesnt have to be silver' do
    # instantiate a new object instance from Unicorn class
    # pass in Barabara for the name value
    # pass in purple for the color value
    unicorn = Unicorn.new('Barbara', 'purple')
    # since purple does not equal silver, assert that the return value
    # when the .silver? method is called will be false
    expect(unicorn.color).to eq('purple')
    expect(unicorn.silver?).to eq(false)
    expect(unicorn.silver?).to be false
  end

  it 'says sparkly stuff' do
    unicorn = Unicorn.new('Johnny')
    expect(unicorn.say('Wonderful!')).to eq('**;* Wonderful! **;*')
    expect(unicorn.say('I dont like you very much.')).to eq('**;* I dont like you very much. **;*')
  end
end
