if Rails.env.development?
  Dir.glob(Rails.root.join('app', 'models', 'concerns', '*.rb').to_s).each do |file|
    require_dependency file
  end
end

