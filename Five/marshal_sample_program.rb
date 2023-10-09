require '../Utility/app_logger'
require '../Utility/game_message'
require './scenario_character'
require './scenario_standard'

title_scene = GameStandard::Title.new("", "秋のデータ祭りなのだー")

dump_data_load = Marshal.dump(title_scene)

log_sampler = AppLogging::ApplicationLogger.new
log_sampler.info(dump_data_load)
