EXAMPLE_FEATURE = Cuba.new do

  on default do
    if User.all.count < 10
      10.times do |t|
        us = User.create(:nickname => "conanbatt#{10+t}", 
          :email => "conanbatt@kaya.gs#{10+t}", 
          :account => "founder", 
          :rating => 5.5)
        us.incr :karma, rand(200)
      end
    end

    rank = ""
    User.all.each.sort {|a,b| b.karma <=> a.karma}.each_with_index {|u,i| rank += "#{i}: #{u.nickname} with #{u.karma} karma </br>"}
    res.write rank
  end

end