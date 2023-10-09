
require 'logger'
require 'date'


module AppLogging
    class ApplicationLogger
        @logger
        def initialize
            now = Date.today
            @logger = Logger.new("app_#{now.year}_#{now.month}_#{now.day}.log")
        end
        def info(message)
            @logger.info message
        end
        def warn(message)
            @logger.warn message
        end
        def error(message)
            @logger.error message
        end
        def fatal(message)
            @logger.fatal message
        end
        # ロガーで保持しているプロセスの解除処理追加
        def close
            @logger.close
        end   
    end
end
