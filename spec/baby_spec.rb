#coding: utf-8

require 'rspec'
require './modules.rb'

describe Baby do
  it 'Test instance methods' do
    baby = Baby.new

    baby.greeting.should == "Здравствуйте, уважаемый господин N."
    baby.goodbye.should ==  "Всего хорошего Вам, господин N."
  end

  it 'Test class methods' do
    Baby.greeting.should == "Hello, dear Mr. X!"
    Baby.goodbye.should ==  "All the best, Mr. X!"
    Baby.lunch.should ==    "Приятного аппетита"
  end
end
