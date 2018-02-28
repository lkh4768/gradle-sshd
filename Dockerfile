FROM	gradle:4.5.1-jdk8

RUN apt-get -y update \
	&& apt-get install -y --no-install-recommends openssh-server \
	&& rm -rf /var/lib/apt/lists/*

EXPOSE 22
CMD    ["/usr/sbin/sshd", "-D"]
