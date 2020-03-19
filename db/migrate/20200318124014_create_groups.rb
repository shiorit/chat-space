class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|  # groupsという名前のテーブル
      t.string :name, null: false  # nameというstringカラム
      t.index :name, unique: true  # nameというindexカラム
      t.timestamps # ~マクロは create_at, update_at2つのカラムを追加する
      # これらの特殊なカラムが存在する場合、Active Recordによって自動的に管理される
    end
  end
end
