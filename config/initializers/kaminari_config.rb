Kaminari.configure do |config|
     config.default_per_page = 25
     config.window = 4
     config.outer_window = 3
     config.left = 3
     config.right = 3
     config.param_name = :page
end
