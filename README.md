# Domain_status
Devuelve el status del dominio consultado en la URL /domain_status/status.dominio (ej. /domain_status/status.example.com)
Al ingresar a la página se muestra el dominio consultado junto con su status. A las consultas JSON devuelve el status del dominio consultado en formato JSON también.

# Montando el engine
**1. Agregar engine como gem**

desde git:

`gem 'domain_status', :git => 'git://github.com/anitapachecoh/state_engine.git'`

o clonar repositorio y agregar el path:

`gem 'domain_status', path: 'path_to_domain_status'`

**2. Agregar a routes.rb**

`mount DomainStatus::Engine => "/domain_status"`
