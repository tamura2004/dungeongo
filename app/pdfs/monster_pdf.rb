class MonsterPdf
  include Prawn::View

  UNIT = 72
  REGULAR = "vendor/fonts/migmix-1p-regular.ttf"
  BOLD = "vendor/fonts/migmix-1p-bold.ttf"

  def initialize(monsters)
    # @document = Prawn::Document.new(page_size: "A4", right_margin: 55, top_margin: 86)
    # super()
    # p document.margins
    # stroke_axis

    font BOLD
    # define_grid columns: 7, rows: 10, gutter: 1
    # grid.show_all

    monsters.each do |monster|
      id = monster.id
      x = (id % 4) * UNIT
      y = (10 - id / 4) * UNIT

      bounding_box [x, y], width: UNIT, height: UNIT do
        fill_color "444444"
        stroke_color "888888"
        fill_and_stroke_rounded_rectangle [0,UNIT], UNIT, UNIT, 4


        [[0,UNIT],[UNIT*3/4,UNIT],[0,UNIT/4],[UNIT*3/4,UNIT/4]].each_with_index do |pos,i|
          bounding_box [pos[0],pos[1]], width: UNIT/4, height: UNIT/4 do
            text monster.ability[i].to_s, size: 14, align: :center, valign: :center, color: "FFFFFF"
          end
        end
        bounding_box [0,UNIT*3/4], width: UNIT, height: UNIT/2 do
          text monster.display_name, size: 11, align: :center, valign: :center, color: "FFFFFF"
        end
        # bounding_box [UNIT/4, UNIT], width: UNIT/2, height: UNIT/4 do
        #   text monster.tribe.name, size: 9, align: :center, valign: :center, color: "FFFFFF"
        # end
      end



      #   text monster.str.to_s, size: 10, align: :left, valign: :top
      #   text monster.name.gsub(/@/, " "), size: 10, align: :center, valign: :center
      # end

    end

  end

end
