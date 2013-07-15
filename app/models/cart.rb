class Cart < ActiveRecord::Base
  has_and_belongs_to_many :products
  def paypal_url(return_url,notify_url)
    values = {
        :business=> 'thaniyarasu@gmail.com',
        :cmd=> '_cart',
        :upload=> 1,
        :'return'=> return_url,
        :invoice=> id ,
        :notify_url => notify_url
    }
    products.each_with_index do |pro,i|
      values.merge!({
          :"amount_#{i+1}"=> pro.price,
          :"item_name_#{i+1}"=> pro.name,
          :"item_number_#{i+1}"=> pro.id,
          :"quantity_#{i+1}" => 1
      })
    end
    "https://www.sandbox.paypal.com/cgi-bin/webscr?"+values.map {|k,v| "#{k}=#{v}" }.join('&')


  end
end
