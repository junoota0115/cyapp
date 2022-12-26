# frozen_string_literal: true

Kaminari.configure do |config|
    config.default_per_page = 20      
  # デフォルトのページあたりの表示件数
  # config.max_per_page = nil         ページあたりの表示件数の最大
  # config.window = 4                 表示中のページの左右何ページ分のリンクを表示するかを指定します
  # config.outer_window = 0           先頭ページ、及び最終ページから何ページ分のリンクを表示するかを指定します
    config.left = 2                   
    #先頭ページから何ページ分のリンクを表示するかを指定します
    config.right = 1                  
  # right最終ページから何ページ分のリンクを表示するかを指定します
  # config.page_method_name = :page   モデルに追加されるページ番号を指定するスコープの名前
  # config.param_name = :page         ページ番号を渡すために使用するリクエストパラメータの名前
  # config.max_pages = nil
  # config.params_on_first_page = false
end
