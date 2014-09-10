Warden::Manager.before_logout do |record, warden, opts|
  if record.respond_to?(:keen_record_signout)
    record.keen_record_signout
  end
end
