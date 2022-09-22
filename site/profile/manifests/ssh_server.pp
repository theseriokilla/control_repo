class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDbJp3GI2ttftDcYBu8ixRwNM3Q8chwpQLQNy7Lmjmz4WMQ5eduAsICtRzyypaa9kNDsrF4w/VkW14Lz1ygzCQtiDx4Wjwj4z2u99SVxOxiMoiL6xYXueQAMb+VF5bZQjSSmn0BwgF5KCSqH0/Paij7SRCTjciqTBNdRjBAW072nMIJn1m8czmCL2pl3nUPNr+k9ZtSjDmaqluoMXtrLKOyLLj/6f5jbFA7J9MCjvVm3EKcA2ZFMMBJ/W0EmNWRUpcxlg31U5eUzBoJxpsz10x0hVpAh/8i+7lYZRPqbTuPNtlGd6yMGBO2Zv3cLOlkeYcOag3Pou33coq0unVa0ArV',
	}  
}
