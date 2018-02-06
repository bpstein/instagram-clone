module ApplicationHelper
  def alert_for(flash_type)
    {
<<<<<<< HEAD
      :success => 'alert-success',
      :error => 'alert-danger',
      :alert => 'alert-warning',
      :notice => 'alert-info'
=======
        :success => 'alert-success',
        :error => 'alert-danger',
        :alert => 'alert-warning',
        :notice => 'alert-info'
>>>>>>> 2905e72d927fd41518bb7ba52e3d68bf1ffabf98
    }[flash_type.to_sym] || flash_type.to_s
  end
end
