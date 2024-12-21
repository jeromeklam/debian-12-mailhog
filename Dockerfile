######## INSTALL ########

# Set the base image
FROM freeasso/debian-12

# Env
ENV DEBIAN_FRONTEND=noninteractive

# Install
RUN cd ~
RUN go install github.com/mailhog/MailHog@latest
RUN ln -sf /opt/go/bin/MailHog /usr/bin/MailHog

RUN useradd mailhog

USER mailhog

WORKDIR /home/mailhog

# Expose the SMTP and HTTP ports:
EXPOSE 1025 8025

ENTRYPOINT ["MailHog"]