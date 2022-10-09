require "csv"

puts "1(新規でメモを作成)" "2(既存のメモを編集する）"

input_val1 = gets.to_i

if input_val1 == 1
  puts "拡張子を除いたファイル名を入力してください"
file_name = gets.chomp

  puts "メモの内容を入力してください。"
  puts "完了したらCtrl + Dを押してください"
  
  memo =  STDIN.read
  
  CSV.open("#{file_name}.csv","w") do |csv|
    csv << ["#{memo}"]
  end
elsif input_val1 == 2
  puts "編集するファイル名を入力してください"

  file_name =gets.chomp

  puts "メモの内容を入力してください。"
  puts "完了したらCtrl + Dを押してください。"

 input_memo = readlines
 memo = input_memo.chomp

 CSV.open("#{file_name}.csv","a") do |csv|
  csv << ["#{memo}"]
 end
else
  puts "1か2を入力してください。"
end
  
