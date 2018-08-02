unless Rails.env.test?
  Rails.application.config.middleware.use "AppName", "Notebook API - Curso"
end
