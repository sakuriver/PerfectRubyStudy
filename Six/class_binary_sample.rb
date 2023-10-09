
require '../Utility/app_logger'
require '../Five/scenario_standard'

log_sampler = AppLogging::ApplicationLogger.new

title_scene = GameStandard::Title.new("タイトラー君", "title_namer_")
log_sampler.info(title_scene.singleton_class.ancestors)
title_scene.extend GameStandard

log_sampler.info(title_scene)
log_sampler.info(title_scene.singleton_class)
log_sampler.info(nil.singleton_class)
log_sampler.info(title_scene.singleton_class.ancestors)

log_sampler.close