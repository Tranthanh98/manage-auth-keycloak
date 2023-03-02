FROM jboss/keycloak

COPY ./themes/basedocsoup/ /opt/jboss/keycloak/themes/basedocsoup/

COPY ./themes/docsoup/ /opt/jboss/keycloak/themes/docsoup/

EXPOSE 8080 8443
