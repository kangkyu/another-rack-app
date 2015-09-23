class MyApp
  def call(env)
    [ 200,
      {"Content-Type" => "text/html"},
      ["Hello. The time is #{Time.now}"]
    ]
  end
end
