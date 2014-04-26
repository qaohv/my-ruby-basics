#coding: utf-8

module Politable
  def self.included base
    base.extend ClassMethods
    base.send :include, InstanceMethods
  end

  module ClassMethods
    def greeting
      "Hello, dear Mr. X!"
    end

    def goodbye
      "All the best, Mr. X!"
    end

    def lunch
      "Приятного аппетита"
    end
  end

  module InstanceMethods
    def greeting
      "Здравствуйте, уважаемый господин N."
    end

    def goodbye
      "Всего хорошего Вам, господин N."
    end
  end
end

class Baby
  include Politable
end
