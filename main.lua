PROJECT = "gps-tracker-luat"
VERSION = "1.0.0"

require "netLed"
pmd.ldoset(2,pmd.LDO_VLCD)
netLed.setup(true,pio.P0_1,pio.P0_4)

--加载错误日志管理功能模块【强烈建议打开此功能】
--如下2行代码，只是简单的演示如何使用errDump功能，详情参考errDump的api
--require "errDump"
--errDump.request("udp://ota.airm2m.com:9072")

--加载阿里云功能测试模块
require "testALiYun"

--启动系统框架
sys.init(0, 0)
sys.run()
