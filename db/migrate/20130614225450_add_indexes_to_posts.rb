class AddIndexesToPosts < ActiveRecord::Migration
  def up
    execute "create index index_title on posts using gin(to_tsvector('spanish', title))"
    execute "create index index_body  on posts using gin(to_tsvector('spanish', body))"
  end

  def down

  end
end
