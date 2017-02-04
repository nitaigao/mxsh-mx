const Raven = require('raven')

Raven.config(process.env.RAVEN_DSN).install()

require('mailin')
 .start({ port: process.env.PORT, webhook: process.env.WEB_HOOK })
 .on('error', (err) => Raven.captureException(err))