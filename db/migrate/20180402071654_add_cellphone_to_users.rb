class AddCellphoneToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :cellphone, :string

    # 之前将email字段设置为unique，并且不能为空
    # add_index :users, :email, unique: true
    # 现在可以用手机号注册，这是email可能为空，
    # 所以要将就有的index移除
    remove_index :users, [:email]
    add_index :users, [:email]
    add_index :users, [:cellphone]

    change_column :users, :email, :string, null: true
  end
end
