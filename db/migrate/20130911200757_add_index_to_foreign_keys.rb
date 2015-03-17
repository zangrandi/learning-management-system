class AddIndexToForeignKeys < ActiveRecord::Migration
  def up
  	add_index :addresses, :user_id
  	add_index :authentications, :user_id
  	add_index :cart_items, :cart_id
  	add_index :cart_items, :course_id
  	add_index :cart_items, :coupon_id
  	add_index :cart_items, :purchase_id
  	add_index :carts, :school_id
  	add_index :coupons, :name
  	add_index :coupons, :course_id
  	add_index :courses, :slug
  	add_index :courses, :school_id
  	add_index :courses_users, :user_id
  	add_index :courses_users, :course_id
  	add_index :features, :key
  	add_index :invitations, :course_id
  	add_index :invitations, :school_id
  	add_index :layout_configurations, :school_id
  	add_index :lessons, :course_id
  	add_index :messages, :user_id
  	add_index :messages, :course_id
  	add_index :messages, :receiver_id
  	add_index :messages_answers, :message_id
  	add_index :messages_answers, :answer_id
  	add_index :notification_configurations, :school_id
  	add_index :notifications, :sender_id
  	add_index :notifications, :receiver_id
  	add_index :notifications, :notifiable_id
  	add_index :notifications, :notifiable_type
  	add_index :purchases, :identificator
  	add_index :purchases, :school_id
  	add_index :purchases, :user_id
  	add_index :schools, :subdomain
  	add_index :tags, :school_id
  	add_index :tags_users, :user_id
  	add_index :tags_users, :tag_id
  	add_index :users, :school_id
  end

  def down
  	remove_index :addresses, :user_id
  	remove_index :authentications, :user_id
  	remove_index :cart_items, :cart_id
  	remove_index :cart_items, :course_id
  	remove_index :cart_items, :coupon_id
  	remove_index :cart_items, :purchase_id
  	remove_index :carts, :school_id
  	remove_index :coupons, :name
  	remove_index :coupons, :course_id
  	remove_index :courses, :slug
  	remove_index :courses, :school_id
  	remove_index :courses_users, :user_id
  	remove_index :courses_users, :course_id
  	remove_index :features, :key
  	remove_index :invitations, :course_id
  	remove_index :invitations, :school_id
  	remove_index :layout_configurations, :school_id
  	remove_index :lessons, :course_id
  	remove_index :messages, :user_id
  	remove_index :messages, :course_id
  	remove_index :messages, :receiver_id
  	remove_index :messages_answers, :message_id
  	remove_index :messages_answers, :answer_id
  	remove_index :notification_configurations, :school_id
  	remove_index :notifications, :sender_id
  	remove_index :notifications, :receiver_id
  	remove_index :notifications, :notifiable_id
  	remove_index :notifications, :notifiable_type
  	remove_index :purchases, :identificator
  	remove_index :purchases, :school_id
  	remove_index :purchases, :user_id
  	remove_index :schools, :subdomain
  	remove_index :tags, :school_id
  	remove_index :tags_users, :user_id
  	remove_index :tags_users, :tag_id
  	remove_index :users, :school_id
  end
end