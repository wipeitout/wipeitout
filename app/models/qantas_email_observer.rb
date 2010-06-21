class QantasEmailObserver < ActiveRecord::Observer

  def after_create(supporter)
    QantasMailer.deliver_qantas_support_email(supporter)
  end
  
end