set :user, "dashboard_user"
set :appdir, "/var/www"
set :bundle_without, %w{development test}.join(' ')
set :rails_env, 'production'
set :deploy_via, :remote_cache
set :deploy_to, fetch(:appdir)
set :use_sudo, false

# Simple Role Syntax
# ==================
# Supports bulk-adding hosts to roles, the primary server in each group
# is considered to be the first unless any hosts have the primary
# property set.  Don't declare `role :all`, it's a meta role.

# role :app, %w{ec2-54-149-86-172.us-west-2.compute.amazonaws.com}
# role :web, %w{ec2-54-149-86-172.us-west-2.compute.amazonaws.com}
# role :db,  %w{ec2-54-149-86-172.us-west-2.compute.amazonaws.com}


# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server definition into the
# server list. The second argument is a, or duck-types, Hash and is
# used to set extended properties on the server.

server 'ec2-54-149-86-172.us-west-2.compute.amazonaws.com', user: 'ubuntu', roles: %w{web app db}


# Custom SSH Options
# ==================
# You may pass any option but keep in mind that net/ssh understands a
# limited set of options, consult[net/ssh documentation](http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start).
#
# Global options
# --------------
#  set :ssh_options, {
#    keys: %w(/home/rlisowski/.ssh/id_rsa),
#    forward_agent: false,
#    auth_methods: %w(password)
#  }
#
# And/or per server (overrides global)
# ------------------------------------
# server 'example.com',
#   user: 'user_name',
#   roles: %w{web app},
#   ssh_options: {
#     user: 'user_name', # overrides user setting above
#     keys: %w(/home/user_name/.ssh/id_rsa),
#     forward_agent: false,
#     auth_methods: %w(publickey password)
#     # password: 'please use keys'
#   }
