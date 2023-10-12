## Ansible deploy

## 通用安装

- `target`: 主机组
- `role`: 对应剧本

```shell
ansible-playbook -i hosts main.yml -e "target=all" -e "role=common"
```
> 执行完common需要重启服务器: ansible -i hosts all -m reboot

## 安装elasticsearch集群

1.首先执行生成集群证书文件脚本：`generate_cert.sh` <br>
2.修改集群基本信息：`domain` `es_pass`

```shell
$ ansible-playbook -i hosts es.yml 
Do you want to install JDK [yes/no]? [no]: yes  # yes安装，no不安装（已经安装过）
```