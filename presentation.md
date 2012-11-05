Entornos de prueba en minutos con Vagrant
===

Fernando Ipar, tech meetup - Montevideo, 2012

!

Acerca de ...
===

- Fernando Ipar
- Consultor @ Percona
- fernando.ipar@percona.com

!

Esta presentación
===

- http://github.com/fipar/presentacion_vagrant

!

Vagrant
===

Facilita la construcción y distribución de ambientes virtuales basados
en Oracle VirtualBox

!

http://vagrantup.com
===

!

¿Por qué?
===

!

Mi máquina <span class="warning">*no*</span> necesita
libnet-daemon-perl 0.43-1 ...

!

... o necesita una <span class="warning">*versión distinta*</span>


!

Quiero que todos los miembros de un proyecto trabajen con el <span class="warning">*mismo entorno*</span>


!

o distribuir un entorno de prueba que cualquier usuario pueda <span class="warning">*iniciar fácilmente*</span>

!

o asegurarme que el sistema en producción se instalará <span class="warning">*exactamente*</span> de
la misma forma que en desarrollo


!

The one slide Vagrant tutorial &copy;
===


!

    $ cd <directorio donde existe Vagrantfile>
    $ vagrant up
	$ vagrant ssh
   
!

Un poco mas de detalle
===

!

Boxes
===

- Son la imagen usada para crear un entorno Virtual con vagrant. 
- http://vagrantbox.es

    $ vagrant box list

!

Vagrantfile
===

- Código Ruby que define la(s) máquina(s) de un proyecto

!

Provisioning
===

- Chef (solo o server)
- Puppet (idem ^^)
- Shell :-)
- Cualquier cosa que herede Vagrant::Provisioners::Base

!

Packaging
===

    $ cd <directorio de mi proyecto (con Vagrantfile)>
	$ vagrant package

!

vagrant package creará un archivo <span class="warning">*package.box*</span>. 


Con este archivo y un archivo Vagrantfile, <span
class="warning">*cualquier*</span> persona con acceso a los mismos
puede ejecutar 'vagrant up' y tener el entorno listo en minutos. 

!

![](./img/Vagrantfile.png "")

!

![](./img/Vagrantfile-shell-provisioner.png "")

!

![](./img/Vagrantfile-multi-vm.png "")

!

Demo
===

!

¿Preguntas?
===

