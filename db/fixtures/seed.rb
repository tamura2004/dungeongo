# WORDS = Array.new.methods.join.gsub(/[^a-z]/,"").split(//)
# WORDS = Array.new.methods.join.gsub(/[^a-z]/,"").split(//)

TRIBE_NAMES = %w(粘体 巨人 飛行 亡者 悪魔 人造 魔獣 精霊 霊体 竜)


TRIBE_ABILITIES = [
  [0,0,1,1],
  [2,0,0,0],
  [0,2,0,0],
  [1,0,1,0],
  [0,1,0,1],
  [0,0,0,2],
  [1,1,0,0],
  [0,1,1,0],
  [0,0,2,0],
  [1,0,0,1]
]

MONSTER_NAMES = [
  %w(スライム オーカ@ジェリー グレイ@ウーズ ブラック@プディング),
  %w(オーク オーガ トロール サイクロプス),
  %w(アローホーク ヒポグリフ グリフィン ワイバーン),
  %w(ゾンビ グール マミー ヴァンパイア),
  %w(インプ サキュバス レッサー@デーモン グレーター@デーモン),
  %w(ウッド@ゴーレム マッド@ゴーレム ストーン@ゴーレム アイアン@ゴーレム),
  %w(コカトリス バジリスク マンティコア スフィンクス),
  %w(スプライト ジニー イフリート フェニックス),
  %w(シャドウ バンシー ゴースト スペクター),
  %w(ドラゴン@フライ サラマンダー グリーン@ドラゴン レッド@ドラゴン)
]


10.times do |id|
  Tribe.seed do |s|
    s.id = id
    s.name = TRIBE_NAMES[id]
    s.ability = TRIBE_ABILITIES[id]
  end
end

10.times do |i|
  4.times do |j|
    id = i * 4 + j
    Monster.seed do |s|
      s.id = id
      s.level = j + 1
      s.tribe_id = i
      s.name = MONSTER_NAMES[i][j]
    end
  end
end

