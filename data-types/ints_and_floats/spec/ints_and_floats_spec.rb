RSpec.describe 'ints and floats' do
  it 'test 1' do
    lucky = 7
    unlucky = 13
    # Using the two variables defined above,
    # add the lucky number and the unlucky number
    sum = lucky + unlucky
    expect(sum).to eq(20)
  end

  it 'test 2' do
    lucky = 7
    unlucky = 13
    # Using the two variables defined above,
    # subtract the unlucky from the lucky
    difference = lucky - unlucky 
    expect(difference).to eq(-6)
  end

  it 'test 3' do
    lucky = 7
    unlucky = 13
    # Using the two variables defined above,
    # divide unlucky by lucky
    # NOTE: this is integer division
    quotient = unlucky.div(lucky)
    expect(quotient).to eq(1)
  end

  # also unlucky/lucky works too ^^ 

  it 'test 4' do
    lucky = 7
    unlucky = 13
    # Using the two variables defined above,
    # divide unlucky by lucky
    quotient = unlucky.fdiv(lucky)
    expect(quotient).to eq(1.8571428571428572)
  end

  # other ways of doing this:
    # lucky = 7
    # unlucky = 13
    # quotient = unlucky.to_f/lucky
    # expect(quotient).to eq(1.8571428571428572)

  # or by making lucky and unlucky a float integer in the beginning
    # lucky = 7.0
    # unlucky = 13.0
    # quotient = unlucky.to_f/lucky
    # expect(quotient).to eq(1.8571428571428572)

  it 'test 5' do
    lucky = 7
    unlucky = 13
    # Using the two variables defined above,
    # find the remainder of the unlucky divided by the lucky
    remainder = unlucky.remainder(lucky)
    expect(remainder).to eq(6)
  end

  it 'test 6' do
    lucky = 7
    # Using the variable defined above,
    # find out if the lucky number is even
    even = lucky.even?
    expect(even).to eq(false)
  end

  it 'test 7' do
    pi = 3.14
    # Using the variable defined above,
    # round the number to the nearest whole number
    rounded = pi.floor
    expect(rounded).to eq(3)
  end

  it 'test 8' do
    pi = 3.14
    # Using the variable defined above,
    # round the number to one decimal place
    rounded = pi.floor(1)
    expect(rounded).to eq(3.1)
  end

  it 'test 9' do
    pi = 3.14
    # Using the variable defined above,
    # round the number to the next highest whole number
    rounded = pi.ceil(0)
    expect(rounded).to eq(4)
  end

  # could theoretically also use:
  # pi.to_i.succ => 4
  # this would work because we're changing it to an integer, and then calling
  # .succ method to return the successor (or next number) integer
end
