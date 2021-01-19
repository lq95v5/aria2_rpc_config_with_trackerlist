# aria2_rpc_config_with_trackerlist
aria2 rpc服务的配置文件以及自动更新trackerlist脚本

# 安装

git clone https://github.com/lq95v5/aria2_rpc_config_with_trackerlist.git

mkdir -p ~/.aria2/rpc

touch ~/.aria2/rpc/aria2.{cookies,log,serverstat,session}

cp ./aria2_rpc_config_with_trackerlist/* ~/.aria2


# 使用说明
aria2.conf 中的dir参数定义了默认下载路径

start_rpc.sh 是**启动**脚本建议设置开机启动

update-tracker.sh 是自动更新tracker脚本 默认一周一次更新,配合cron 需要定义homedir目录
