module GachaBasic
  # ガチャのラインナップ対応
  class GachaLineup
    @name
    @odds
    def initialize(name, odds)
      @name = name
      @odds = odds
    end
    def odds
      @odds
    end
    def name
      @name
    end
  end
    # ガチャの基底クラス
  class GachaBase
    @draw_lists
    @gacha_lineup_lists
    @draw_sum_value
    @draw_index

    def initialize(draw_lists, gacha_lineup_lists)
      @draw_lists = draw_lists
      @gacha_lineup_lists = gacha_lineup_lists
    end

    def draw
        @draw_sum_value = 0
        @draw_index = 0
        num = 0
        for draw_data in @draw_lists
          @draw_sum_value += draw_data.odds
        end
        random = Random.new(Time.now.to_i)
        result = random.rand*@draw_sum_value
        @draw_sum_value = 0

        for draw_data in @draw_lists
          @draw_sum_value += draw_data.odds 
          if result <= @draw_sum_value
            break
          end
          num += 1
        end 
        
        @draw_index = num

      end

      def draw_sum_value
        @draw_sum_value
      end

      def draw_index
        @draw_index
      end

    end
end
