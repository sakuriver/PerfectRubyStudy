
require '../../Utility/app_logger'

log_sampler = AppLogging::ApplicationLogger.new
log_sampler.info('log test')
log_sampler.warn("暇な時に調査してみてくださいね")
log_sampler.error("エラーが発生しました、確認をお願いします ")
log_sampler.fatal("停止処理に入りました。")
log_sampler.close