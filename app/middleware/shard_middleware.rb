class ShardMiddleware
  SHARDED_PATH = /\A\/(users)/

  def initialize(app)
    @app = app
  end

  def call(env)
    if env['REQUEST_PATH'] =~ SHARDED_PATH
      ActiveRecord::Base.on_shard(1) do
        @app.call(env)
      end
    else
      ActiveRecord::Base.on_shard(nil) do
        @app.call(env)
      end
    end
  end
end
