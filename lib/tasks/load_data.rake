# coding: utf-8

task :load_data => :environment do  # 添充数据 

  User.destroy_all

  user=User.create(:email => "zhangcaiyanbeyond@gmail.com", 
                   :username => "zhangcaiyan", 
                   :password => "zhangcaiyan", 
                   :password_confirmation => "zhangcaiyan")
  User.confirm_by_token(user.confirmation_token)
  puts %Q[
注册一名用户，用户信息如下：
用户名称: zhangcaiyan 
用户密码: zhangcaiyan
  ]

  user=User.create(:email => "zhangcaiyanother@gmail.com", 
                   :username => "1234", 
                   :password => "1234", 
                   :password_confirmation => "1234")
  User.confirm_by_token(user.confirmation_token)
  puts %Q[
注册一名用户，用户信息如下：
用户名称: 1234 
用户密码: 1234
  ]

end

