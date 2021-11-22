

namespace :db do

  namespace :daily_report do

    desc "Create CSV Files for Models"
    task :create_files => :environment do
      # Load all Modle files
      Dir.glob("#{Rails.root}/app/models/*.rb").each { |file| require file }

      dir = "#{Rails.root}/db/csv"
      # Create folder if not exists
      FileUtils.mkdir(dir) unless Dir.exists?(dir)

      file_name = "daily_report.csv"
      file_name = file_name.gsub(/\./,"_" + Time.now.strftime("%m-%d_%H-%M-%S") + '.') 
     
      require 'csv'

      CSV.open("#{dir}/#{file_name}", 'w+') do |csv|
        csv << ["Id", "Comment", "Owner Id", "Post Id"]
        Feedback.all.each do |f|
          csv << ["#{f.id}", "#{f.comment}", "#{f.owner_id}", "#{f.post_id}"]
        end
      end


       # unless File.exists?("#{dir}/#{file_name}")
       #      File.open("#{dir}/#{file_name}", 'w+') do |f|
       #        f.write(User.columns.collect(&:name).join(','))

       #      end
       # end 
      # Feedback.last(50).each do |f| 
      #   puts "Hello Kanad #{f.comment} "
      # end  
    end

  end

end

# To run Maually 
# rake db:daily_report:create_files