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
  def skill
    @power = @power * 2
    puts "バイキルトを発動しました"
  end
end

class Wizard < JobBase
  def skill
    @now_hp += 10
    puts "ヒールを発動しました"
  end
end

job = JobBase.new("john", 200, 200, 30, 45, 50)
job.profile

solider = Soldier.new("sakuriver", 250, 250, 40, 58, 50)
solider.profile
wizard = Wizard.new("chomado", 160, 150, 46, 32, 80)
wizard.profile

solider.skill
solider.profile

wizard.skill
wizard.profile
