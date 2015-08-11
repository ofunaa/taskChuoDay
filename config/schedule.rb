set :environment, :development
set :output, {:error => 'log/error.log', :standard => 'log/cron.log'}

# Testなので、3分毎に動作するように設定します
every 1.minute do
  # cronのコマンドライン上で動くので、二重引用符で囲っておきます
  runner "Chuo.cancell"
end