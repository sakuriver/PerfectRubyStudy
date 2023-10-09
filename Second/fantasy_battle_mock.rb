# frozen_string_literal: true

class JobBase
  @name
  @hp
  @power
  @defense
  @speed
  def initialize(name, hp, now_hp, power, defense, speed)
    @name = name
    @hp = hp
    @now_hp = now_hp
    @power = power
    @defense = defense
    @speed = speed
  end

  def profile
    puts "name #{@name}"
    puts "hp #{@hp}"
    puts "now_hp #{@now_hp}"
    puts "power #{@power}"
    puts "defense #{@defense}"
    puts "speed #{@speed}"
  end
end

class Soldier < JobBase
  SKILL_START_MESSAGE = 'バイキルトを発動しました'
  def skill
    @power *= 2
    puts SKILL_START_MESSAGE
  end
end

class Wizard < JobBase
  SKILL_START_MESSAGE = 'ヒールを発動しました'
  def skill
    @now_hp += 10
    puts SKILL_START_MESSAGE
  end
end

job = JobBase.new('john', 200, 200, 30, 45, 50)
job.profile

solider = Soldier.new('sakuriver', 250, 250, 40, 58, 50)
solider.profile
wizard = Wizard.new('chomado', 160, 150, 46, 32, 80)
wizard.profile

solider.skill
solider.profile

wizard.skill
wizard.profile

# issue to be continued.... party mode or battle mode
