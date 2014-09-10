Warden::Manager.after_authentication do |record, warden, opts|
  if record.respond_to?(:keen_record_signin)
    record.keen_record_signin
  end
end
