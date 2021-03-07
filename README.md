# README
users テーブル------------------------------------------

Column	Type	Options---------------------------------
image	                Type    null: false
email	                string	unique: true null:false
encrypted_password	  string	null: false
name	                string	null: false
name_kana	            string	null: false
birthday	            date	  null: false
term_id	              integer	null: false
level_id	            integer	null: false
frequency_id          integer	null: false
prefecture_id	        integer	null: false
city	                integer	null: false
achievement	          text
registration_id      	integer	null: false
#追加実装		
position	???	null: false
day_of_hope	???	null: false

Association
has_many :teams
has_many :rooms, through: :room_users
has_many :messages
------------------------------------------------------

rooms テーブル------------------------------------------
Column	    Type	      Options
name	      string	    null: false
user	      references	null: false, foreign_key: true

Association
has_many   :users through: room_users
has_many   :messages
------------------------------------------------------

room_teams テーブル-------------------------------------
Column	Type	      Options
user	  references	null: false, foreign_key: true
room	  references	null: false, foreign_key: true

Association
belongs_to :team
belongs_to :room
------------------------------------------------------

teams テーブル------------------------------------------
Column	          Type	Option
image	            ------	
teamname	        string	null: false
year	            integer	null: false
prefecture_id	    integer	null: false #共通
age_id     	      integer	null: false 
frequency_id      integer	null: false #共通
level_id   	      integer	null: false #共通
offered_id     	  integer	null: false
achievement	      text	
location	        text
user	            references	null: false, foreign_key: true

#追加実装		
activity_date	    ???	    null: false
position	        ???	    null: false
city_id	          integer	null: false

Association
belongs_to :user
------------------------------------------------------

messages テーブル--------------------------------------
Column	Type	      Options
content	string	
user	  references	null: false, foreign_key: true
room	  references	null: false, foreign_key: true

Association
belongs_to :user
belongs_to :room
------------------------------------------------------

*追加実装
user_comment テーブル----------------------------------
Column	  Type	      Option
comment	  string	    null: false
user	    references	foreign_key: true

Association
belongs_to :user
------------------------------------------------------

team_comment テーブル----------------------------------
Column	Type	      Option
comment	string	    null: false
team	  references	foreign_key: true

Association
belongs_to :team
------------------------------------------------------