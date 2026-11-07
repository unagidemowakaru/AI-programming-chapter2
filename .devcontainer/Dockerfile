# AlmaLinux 10 をベースに指定
FROM almalinux:10

# 基本コマンドのインストール（分割して実行することで負荷を抑える）
RUN dnf -y install git git-lfs sudo tar wget && \
    dnf -y install httpd && \
    dnf -y install php php-fpm php-gd php-json php-mbstring && \
    dnf clean all


# ユーザーの作成と sudo 権限の付与
ARG USERNAME=codespace
ARG WORKSPACE=/workspaces/AI-programming-chapter2
RUN useradd -m ${USERNAME} && \
    echo "${USERNAME} ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/${USERNAME} && \
    chmod 0400 /etc/sudoers.d/${USERNAME} && \
    echo 'export PS1="\$ "' >> /home/${USERNAME}/.bashrc

# Apache HTTP Serverがsamplesとpracticesを見るための設定
ARG DOCUMENTROOT=/var/www/html
ARG WORKHTML=${WORKSPACE}/html
ARG HTMLCONF=/etc/httpd/conf.d/htmllink.conf
RUN rmdir ${DOCUMENTROOT} && \
    ln -s ${WORKHTML} ${DOCUMENTROOT} && \
    cat <<EOF > ${HTMLCONF}
<Directory "${WORKHTML}">
    Options Indexes FollowSymLinks
    AllowOverride None
    Require all granted
</Directory>
EOF

# phpのための準備
RUN mkdir -p /run/php-fpm && \
    chown apache:apache /run/php-fpm
## 2章のサンプルを作る場所を準備
#ARG CHAPTER2SAMPLES=${WORKHTML}/chapter2/samples
#ARG CHAPTER2PRACTICES=${WORKHTML}/chapter2/practices
#RUN mkdir -p ${CHAPTER2SAMPLES} && \
#    mkdir -p ${CHAPTER2PRACTICES} && \
#    chown apache:apache ${CHAPTER2SAMPLES} ${CHAPTER2PRACTICES}

USER ${USERNAME}
WORKDIR ${WORKSPACE}
