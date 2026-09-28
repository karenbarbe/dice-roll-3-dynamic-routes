class DiceController < ApplicationController
  def home
    render({ :template => "dice_templates/homepage" })
  end

  def roll_dice
    @num_dice = params.fetch("number_of_dice").to_i
    @dice_sides = params.fetch("how_many_sides").to_i

    @rolls = []
    @num_dice.times do
      die = rand(1..@dice_sides)
      @rolls.push(die)
    end

    render({ :template => "dice_templates/flexible" })
  end
end
