Warden::Manager.after_set_user do |record, warden, opts|
  if record.respond_to?(:record_login)
    record.record_login
  end
end
