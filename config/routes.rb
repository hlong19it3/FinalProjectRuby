Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   get 'search/index'

  get 'trangchu' => 'giaodien#index'
  get 'dangky' => 'users#new'
  get"dangnhap" => "users#login"
  get"dangxuat" => "users#logout"
  post"dangnhap" => "users#login_user"
  
  get"sanpham/index" => "sanpham#index"
  get"sanpham/new" => "sanpham#new"
  post"sanpham/create" =>"sanpham#create"
  get"sanpham/edit/:id"=> "sanpham#edit"
  post"sanpham/edit/:id" => "sanpham#update"
  delete "sanpham/delete/:id" =>"sanpham#del"

  get "addcart/:id" => "giaodien#addcart"
  get "sanpham/cart" =>"giaodien#giohang"
  get "sanpham/cart/soluong/:id" => "giaodien#soluong"
  delete "cart/xoa/:id" =>"giaodien#xoa"
  get "trangchu/sanpham/:id" => "giaodien#sanpham"
  resources :users
  
  get 'search/index'
  resources :search, only: [:index] do
    collection do 
    get 'results'
  end
  end
  root 'users#login_user'

end
