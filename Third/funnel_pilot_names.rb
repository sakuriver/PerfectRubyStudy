# frozen_string_literal: true

def display_funnel_ms_names(first_name, first_funnel_num, second_name, second_funnel_num)
  puts "funnel ms name #{first_name} funnel num  #{first_funnel_num}"
  puts "funnel ms name #{second_name} funnnel num #{second_funnel_num}"
end

funnel_infos = %w[Qubeley 10 Sazabi 6]
display_funnel_ms_names(*funnel_infos)
