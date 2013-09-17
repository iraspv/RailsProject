authorization  do
 role :webmaster do
 has_permission_on :posts, :to => [:administrate]
 end

 role :anonymous do
 has_permission_on :posts, :to => [:view]
 end
end

privileges do
  privilege :view,          :includes => [:read, :show]
  privilege :browse,        :includes => [:view, :index]
  
  privilege :maintain,      :includes => [:view, :edit, :update]
  privilege :own,           :includes => [:maintain, :destroy, :delete]
  
  privilege :make,          :includes => [:maintain, :new, :create]
  
  privilege :administrate,  :includes => [:make, :own, :index]
end
