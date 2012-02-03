# == Schema Information
#
# Table name: users
#
#  id                        :integer(4)      not null, primary key
#  email                     :string(255)
#  nickname                  :string(255)
#  mobile                    :string(255)
#  qq                        :string(255)
#  msn                       :string(255)
#  sex                       :boolean(1)
#  password_digest           :string(255)
#  remember_token            :string(255)
#  remember_token_expires_at :datetime
#  activation_code           :string(255)
#  activated_at              :datetime
#  password_reset_token      :string(255)
#  password_reset_sent_at    :datetime
#  created_at                :datetime
#  updated_at                :datetime
#

require  'email_validator'
require 'digest/sha1'
class User < ActiveRecord::Base
  extend ActiveModel::Callbacks

  has_secure_password

  validates :email , :email => {:message => I18n.t('labels.email_error') }
  validates :email , :presence => true , :uniqueness => true
  validates :mobile  ,:nickname   ,:presence => true
  validates :sex ,  :inclusion => { :in => [true,false] }
  validates :password ,:presence => true, :on => :create
  validates :terms, :acceptance => true
  #  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/, :on => :create }

  #  before_create :make_activation_code

  before_create { generate_token(:activation_code) }

  def send_password_reset
    generate_token(:password_reset_token)
    self.password_reset_sent_at = Time.zone.now
    save!
    UserMailer.password_reset(self).deliver
  end

  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end




  #
  # 实例方法
  # Activates the user in the database.
  def activate!
    @activated = true
    self.activated_at = Time.now
    self.activation_code = nil
    save
  end


  protected

  def password_changed?
    !self.password.blank?
  end
  # old method
  #  def secure_digest(*args)
  #    Digest::SHA1.hexdigest(args.flatten.join('--'))
  #  end
  #
  #  def make_token
  #    secure_digest(Time.now, (1..10).map{ rand.to_s })
  #  end
  #
  #  def make_activation_code
  #    self.activation_code = make_token
  #  end
end
 
