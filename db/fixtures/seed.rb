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
  %w(スライム オーカ@ジェリー グレイ@ウーズ ブラック@プディング ビホルダー),
  %w(オーク オーガ トロール サイクロプス ストーム@ジャイアント),
  %w(アローホーク ヒポグリフ グリフィン ワイバーン ロック),
  %w(ゾンビ グール マミー ヴァンパイア ヴァンパイア@ロード),
  %w(インプ サキュバス レッサー@デーモン グレーター@デーモン アーク@デーモン),
  %w(ウッド@ゴーレム マッド@ゴーレム ストーン@ゴーレム アイアン@ゴーレム ベヒーモス),
  %w(コカトリス バジリスク マンティコア スフィンクス ケツァル@コアトル),
  %w(スプライト ジニー イフリート フェニックス ポセイドン),
  %w(シャドウ バンシー ゴースト スペクター リッチー),
  %w(ドラゴン@フライ サラマンダー グリーン@ドラゴン レッド@ドラゴン エンシェント@ドラゴン)
]


10.times do |id|
  Tribe.seed do |s|
    s.id = id
    s.name = TRIBE_NAMES[id]
    s.ability = TRIBE_ABILITIES[id]
  end
end

10.times do |i|
  5.times do |j|
    id = i * 5 + j
    Monster.seed do |s|
      s.id = id
      s.level = j + 1
      s.tribe_id = i
      s.name = MONSTER_NAMES[i][j]
    end
  end
end

