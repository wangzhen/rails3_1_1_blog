# encoding: utf-8
class EmailValidator < ActiveModel::EachValidator
#  def validate_each(record, attribute, value)
#    record.errors.add attribute, (options[:message] || "is not an email") unless
#      value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/
#  end
  def validate_each(object, attribute, value)
    unless value =~ /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
      object.errors[attribute] << (options[:message] || I18n.t('labels.email_error'))
    end
  end
end
