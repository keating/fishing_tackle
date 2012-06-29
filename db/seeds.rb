# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

content = %(<p>合肥晚报讯</p> 今天早晨6时许，裕丰花市小韦渔具店的卷闸门被小偷撬开，店内存放的现金和硬币被偷得一干二净，店老板尤先生说估计有六百元左右。

    据尤老板说，今天早晨6点多，他正在家中睡觉，商店隔壁的人给他打电话说他的渔具店的卷闸门被撬开了，尤老板一听赶紧起床穿衣跑向店里，尤老板跑到店门口一看，卷闸门侧面已经被撬开，当他打开卷闸门，发现放置于卷闸门内侧的水桶也被小偷打翻，水桶里的水洒满店内的地面。

    尤老板进店之后赶紧查看存放现金的柜子，柜子里面的三百元左右现钞和三百元硬币已经不见了，而店中的渔具等初步检查都没有丢失，尤老板赶紧拨打了报警电话。据尤老板说，由于店面比较小，平时晚上没有人员在店里值班，“门口旁边都有摄像头，还是在花市里面，都有保安，我觉得安全应该没有问题，我对花市的治安一直都很放心，没想到还是被偷了。”尤老板说店内没有安装视频监控，现在也没法记录小偷进店的场景，对于这次被偷，尤老板觉得也是不幸中的万幸，他说店内值钱的渔具都没有丢失，准备下一步购买视频监控在店中安装。

    目前，辖区派出所已经联系裕丰花市的保安部门，准备调取监控，该案正在进一步调查中。

    <p>（本报记者 郑静/文 马启兵/图）<p>)

guangwei_detail = %(    Guangwei Group Co., Ltd (GW) is a modern garden company ,which headquarters in the most east part of the Jiaodong Peninsula .GW was founded in 1987. It has a high-caliber technician team, advanced technology & equipment and modern management mechanism. Its capital asserts reaches more than hundreds million,its area is about 300,000.00 square meters and the area of the buildings is about 120,000.00 square meters. GW is  one of the biggest  fishing tackle manufacturers in China  which  has  not  only manufacturing facilities but also R&D institutions. GW governs 7 factories and 3 branch companies in which there are three China and Foreign Joint Venture companies. The staff of the whole company are more than 3000 persons. There are more than 10 different departments of the whole company such as Technology Innovation & Developing Department ,Equipment Study &Developing Department, Layout Department, Finance Department, Quality Manage Department, Import & Export Department, Rule of Law Department, Adhibition Technology R&D institution and so on . The main productions , carbon fiber fishing rods and glass fiber fishing rods, have more than 100 series,8000 different specifications. And the annual production is more than 6,000,000.00 pcs of fishing rods; There are 8 series and 20 different specifications of the fishing reels of which the annual production is more than 3,000,000,00 pieces. GW invested large capital to import the advance equipment to develop the wide breadth carbon prepreg which filled up the domestic vacuity of the same area and ended the history of importing the raw carbon material to produce carbon fishing rods and carbon physical culture entertain productions .

     In the new situation ,GW updates the idea ,develops both the domestic market and the foreign market quickly. Inner China ,the company has selling nets and the agents in every province and municipality except Tibet .GW's products have been exported to over 60 counties and regions in all over the world.

    You are welcoming to come to GW for visiting or cooperating whenever.)

user = User.create!(:name => "Andy", :email => "outofclouds@gmail.com", :password => "123456", :password_confirmation => "123456")
user.admin = true
user.save!
User.create!(:name => "JI", :email => "abc@def.com", :password => "123456", :password_confirmation => "123456")
User.create!(:name => "WN", :email => "abc@ghi.com", :password => "123456", :password_confirmation => "123456")

article = Article.create(:title=>"清晨渔具店被盗", :content => content)
article.user = user
article.save!

supplier = Supplier.create(:name_cn => '威海光威集团有限责任公司',
                :name => "Guangwei Group Co., Ltd (GW) ",
                :tel => "86-631-5251384",
                :fax => "86-631-5251990",
                :email => "wgftg@public.whptt.sd.cn",
                :address => "NO 265 Shichang Road Weihai 264209, Shandong China",
                :detail => guangwei_detail)
supplier.user = user
supplier.save!

huanqiu_detail = %(
Established in 1985, Shandong Weihai HUANQIU Fishing Tackle Industrial Co., Ltd. became the forerunner of fishing rods industry in China through introducing glass fiber rods into this country with the advanced foreign technology from its very beginning. Since then, the company has been devoting itself to the R&D, production and operation of fishing rods in glass fiber or carbon fiber, and is a professional manufacturer for the R&D and production of rods in glass fiber and carbon fiber. It is in 1992 when it set up the first research institute of fishing rods in the domestic fishing rods industry, and there it focused on technology research and product innovation. Meanwhile, the two projects attributed to this institute, rods in carbon fiber and sanitary ware in glass fiber which, have been selected under the “National Torch Plan”, and got appraised.

As the leading products, its fishing rods in carbon fiber and glass fiber produced according to the advanced international standards are characterized as original, clean, pleasing, light, durable and sensitive etc, and have been successively rated as excellent in terms of provincial and ministerial standards and “famous brand in Shandong Province” since 1994. These fishing rods processed with advanced foreign technology or technology improved by itself have been exported to Europe, USA, Japan and other countries and regions, which makes it the primary supplier of fishing rods for the international market in China. Also, the enterprise that has a staff of about 2000 people, with exports of more than 82 million US dollars in 2011. The annual production capacity of fishing rod is 8 million pieces.

Adhering to technology leadership, ensuring employees’ welfare, sincerely serving customers and contributing to society are company’s four strategies. And its development direction consists in adjusting products structure, increasing its production of high level fishing tackle and market share, and expanding into other fields of composite products. By relying on its tremendous assets and business capacity accumulated for years, and giving play to the company spirit and culture developed for a long time, it has been constantly accelerating technology innovation, aggressively extending domestic and foreign markets, actively implementing the strategy of industrial competitiveness and adjustment to achieve the leap and progress in the comprehensive competence in a higher level based on the new standing point.

In addition, the company has also made strategic investments in the fields of real estate and finance in recent years; it developed two projects with the combination of dwelling houses and shopping malls in the downtown, that is, HUANQIU Plaza and YIJIA Life Plaza and became the shareholder of Weihai City Commercial Bank, Weihai Rural Commercial Bank and QILU Securities Co., Ltd.)


supplier = Supplier.create(:name_cn => '山东环球渔具股份有限公司',
                :name => "Shandong Weihai Huanqiu Fishing Tackle Industrial Co., Ltd.",
                :tel => "+86-631-3656088",
                :fax => "+86-631-3656226",
                :email => "huanqiu@huanqiufishing.com.cn",
                :address => "292# Shichang Road, Weihai, Shandong, China.",
                :detail => huanqiu_detail)
supplier.user = user
supplier.save!

#q1 = Question.create(:content => "I want to know some fishing tackle suppliers in Weihai China.")
#h1 = Help.create(:content => "http://fishingtackle.heroku.com/suppliers", :question_id => q1.id)
#
#q2 = Question.create(:content => "Is Guang Wei the biggest fishing tackle supplier in China?")
#h2 = Help.create(:content => "Yes, maybe the biggest in the world.", :question_id => q2.id)
#
#q3 = Question.create(:content => "Can you help me buy some fishing tackle from China?")
#h3 = Help.create(:content => "My pleasure, but pay the money first :)", :question_id => q3.id)
#
#[q1, q2, q3, h1, h2, h3].each do |q|
#  q.user = user
#  q.save!
#end
