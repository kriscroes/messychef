task :kill_postgres_connections => :environment do
  dbname = "#{File.basename(Rails.root)}#{Rails.env}"
  sh = <<EOF
ps xa \
  | grep postgres: \
  | grep #{db_name} \
  | grep -v grep \
  | awk '{print $1}' \
  | xargs kill
EOF
  puts #{sh}
end