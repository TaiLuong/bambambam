ActiveAdmin::Dashboards.build do
  section "Recent Products" do
    table_for Product.order("released_at desc").limit(5) do
      column :name do |products|
        link_to products.name, [:admin, products]
      end
      column :released_at
    end
    strong { link_to "View All Products", admin_products_path }
  end
end