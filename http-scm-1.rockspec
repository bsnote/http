package = 'http'
version = 'scm-1'
source  = {
    url    = 'git://github.com/bsnote/tarantool-http.git',
    branch = 'master',
}
description = {
    summary  = "Tarantool module for HTTP client/server.",
    homepage = 'https://github.com/bsnote/tarantool-http/',
    license  = 'BSD',
}
dependencies = {
    'lua >= 5.1'
}
external_dependencies = {
    TARANTOOL = {
        header = "tarantool/module.h"
    }
}
build = {
    type = 'builtin',

    modules = {
        ['http.lib'] = {
            sources = 'http/lib.c',
            incdirs = {
                "$(TARANTOOL_INCDIR)"
            }
        },
        ['http.client'] = 'http/client.lua',
        ['http.server'] = 'http/server.lua',
        ['http.mime_types'] = 'http/mime_types.lua',
        ['http.codes'] = 'http/codes.lua',
    }
}

-- vim: syntax=lua
