# Keepalived Template for Zabbix

_Cheers to DerHerscher/keepalived-zabbix-template_

1. Adicione os arquivos shell em /etc/zabbix/scripts/

2. Na configuração do keepalived adicione dentro do vrrp_instance, e depois reinicie o processo:

```sh
notify /etc/zabbix/scripts/keepalived_notify.sh
```

3. Adicione o arquivo .conf dentro de /etc/zabbix/zabbix_agent.d/. O processo do Agent deve ser reiniciado após isso.

4. Importe o arquivo do template (.yaml) dentro do Zabbix e inclua-o no host desejado.