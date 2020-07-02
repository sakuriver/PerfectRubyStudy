print "MSの数："
ms_num = Integer(gets.chomp)

print "パイロットの数："
pilot_num = Integer(gets.chomp)

if ms_num != pilot_num
	print "数が合わない、これでは出撃ができない"
else
	print "msとパイロットの準備ができたな 合計は#{ms_num + pilot_num}"	
end