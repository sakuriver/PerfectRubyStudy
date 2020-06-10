# frozen_string_literal: true

class GundamSeries
  @main_ms
  @main_ms_pilot
  @rival_ms
  @rival_ms_pilot
	def initialize(main_ms, main_ms_pilot, rival_ms, rival_ms_pilot)
    @main_ms = main_ms
    @main_ms_pilot = main_ms_pilot
    @rival_ms = rival_ms
    @rival_ms_pilot = rival_ms_pilot
  end
end

# 初期なので拡張なし
class GundamOrigin < GundamSeries
end

# 
class GandamNT < GundamSeries
	# ユニコーン時代の稼働実験
	def ms_perfomance_test
    puts "performance test start"
	end
end

# 推しのシリーズを調べて設定
main_ms = ""
main_ms_pilot = ""
rival_ms = ""
rival_ms_pilot = ""
begin
  broadcast_series = GandamNT.new(main_ms, main_ms_pilot, rival_ms, rival_ms_pilot)
  broadcast_series.ms_perfomance_test
rescue => e
	puts "#{e.class} #{e.message}"
end