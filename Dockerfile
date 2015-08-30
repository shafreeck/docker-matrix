FROM centos:latest
MAINTAINER shafreeck@163.com

# Enable docs installing  when use yum install
RUN sed -i "s/^tsflags=nodocs//" /etc/yum.conf

# Install rpmforge-release
RUN  rpm -ivh http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el7.rf.x86_64.rpm

# Install man pages
RUN yum install -y man man-pages

# Install development tools
RUN yum groupinstall -y "Development Tools" && yum install -y cmake

# Install fishshell
RUN curl -L http://download.opensuse.org/repositories/shells:fish:release:2/CentOS_7/shells:fish:release:2.repo \
    -o /etc/yum.repos.d/shells:fish:release:2.repo \
    && yum install -y fish \
    && chsh -s /usr/bin/fish root

# Install editors
RUN yum install -y vim emacs nano

# Configure vim based on shafreeck/shafreeck-vim
RUN cd ~ && git clone https://github.com/shafreeck/shafreeck-vim.git

# Install sys tools
RUN yum install -y sysstat perf strace    \
                   ltrace nmap ab netstat \
                   tcpdump ngrep  passwd  \
                   dstat htop ack         \
                   screen tmux aircrack   \
                   blktrace wget w3m

# Install languages
RUN yum install -y golang ruby

# Install openssh-server
RUN yum install -y openssh-server \
    && sed -i "s/^#PermitRootLogin yes/PermitRootLogin yes/" /etc/ssh/sshd_config \
    && ssh-keygen -q -t rsa -f /etc/ssh/ssh_host_rsa_key

# Set root password to 'toor'
RUN echo toor | passwd root --stdin

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
