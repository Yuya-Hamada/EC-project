crumb :root do
  link "Home", top_path
end

crumb :user_new do
  link "会員登録", signup_path
  parent :root
end

crumb :user_login do
  link "ログイン", login_path
  parent :user_new
end

crumb :items_show do |item|
  item= Item.find(params[:id])
  link "#{item.name}"
  parent :root
end

crumb :home_company do
  link "会社情報", company_path
  parent :root
end

crumb :home_guide do
  link "ご利用ガイド", guide_path
  parent :root
end

crumb :home_law do
  link "特定商取引法及び酒税法に基づく表示", law_path
  parent :root
end

crumb :cart_items do
  link "カート一覧", cart_index_path
  parent :root
end

crumb :order_details do
  link "注文確認",  order_details_index_path
  parent :address
end

crumb :home_privacy do
  link "プライバシーポリシー", privacy_path
  parent :root
end

crumb :address do
  link "お支払い方法と配送方法", addresses_index_path
  parent :cart_items
end
# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).
