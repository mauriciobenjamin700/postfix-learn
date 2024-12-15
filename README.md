# Servidor de E-Mail Postfix

Este repositório se destina a juntar informação sobre o postfix em português além de fornecer configurações para ajudar quem está começando.

## OBS:

Acesse a pasta configs e coloque seus dados de e-mail e senha em sasl_passwd.

## Enviando o E mail

- Acesse o container usando make connect container=postfix
- execute os comandos a baixo
- `service postfix start`
- `echo "E-mail enviando com Sucesso :)" | mutt -s "Testando Enviar E-mails com Postfix" DESTINO@GMAIL.COM`

## Referências

### Postfix

- https://www.postfix.org/INSTALL.html
- https://www.postfix.org/BASIC_CONFIGURATION_README.html
- https://www.youtube.com/watch?v=XbxjYt4bWnw&t=9s
- [Servidor de Emails​ SMTP e IMAP ( Postfix + Dovecot)](https://www.youtube.com/watch?v=V1XV9KSxPPQ)   

### Docker

- [Dockerfile](https://docs.docker.com/reference/dockerfile/)