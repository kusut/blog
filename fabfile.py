from fabric.api import run, local, env, settings, put, cd

try:
    from settings import hosts, livedir
except ImportError:
    pass

env.hosts = hosts

def clear():
    local('rm -r _site/*')

def pack():
    with settings(warn_only=True):
        local('rm _site/fabfile*')
        local('rm _site/settings*')
    local('GZIP=--best tar czf /tmp/blog.tgz _site/')

def extract():
    run('tar xzf blog.tgz --strip 1 _site')

def reload():
    clear()
    local('blogofile build')
    with settings(warn_only=True):
        local('rm _site/fabfile*')
        local('rm _site/settings*')
    local('blogofile serve')

def deploy():
    live_dir = livedir
    pack()
    put('/tmp/blog.tgz', live_dir)
    with cd(live_dir):
        extract()
