#!/bin/sh
#redis连接配置
RedisIP='127.0.0.1'
RedisPort='6379'
RedisPWD='typesdk.com'
#热加载版本号，如修改相关参数可更改这个版本号,server会重新reload相关配置。手动重启server进程也可以
ver='1'
#sdkserver与gameserver通讯的密钥(必须和游戏服务器相匹配)
apikey='typesdk.com'
#游戏ID号和游戏名称
gameid='1001'
gamename='demo'
#初始化redis库
redis-cli -h $RedisIP -p $RedisPort -a $RedisPWD hset GAME:$gameid:ID id $gameid
redis-cli -h $RedisIP -p $RedisPort -a $RedisPWD hset GAME:$gameid:ID gameName $gamename
redis-cli -h $RedisIP -p $RedisPort -a $RedisPWD hset GAME:$gameid:ID apikey $apikey
redis-cli -h $RedisIP -p $RedisPort -a $RedisPWD hset GAME:$gamename:NAME id $gameid
redis-cli -h $RedisIP -p $RedisPort -a $RedisPWD hset GAME:$gamename:NAME name $gamename
redis-cli -h $RedisIP -p $RedisPort -a $RedisPWD hset GAME:$gameid:VERSION version $ver
#渠道号(必须和sdk相匹配,sdk字典的常量)和渠道相关参数
fielduc='ch301'
#阿里游戏渠道参数请修改gameId=app_id,apiKey=app_key，sdk_cp_id=cpId，其他参数不用修改
valueuc='{"id":"301","name":"AliUC","attrs":{"app_id":"123345676","app_key":"1234567","channel_id":"1","sdk_cp_id":"123456","sdk_name":"AliUC","itemLists":[]}}'
redis-cli -h $RedisIP -p $RedisPort -a $RedisPWD hset GAME:$gameid:CHANNEL $fielduc $valueuc
#360渠道参数请修改appId=app_id,appKey=app_key，appSecret=secret_key,private_key算法请参考渠道sdk文档，其他参数不用修改
field360='ch3'
value360='{"id":"3","name":"360","attrs":{"app_id":"123345676","app_key":"123345676","channel_id":"3","private_key":"123345676","sdk_name":"360","secret_key":"123345676","itemLists":[]}}'
redis-cli -h $RedisIP -p $RedisPort -a $RedisPWD hset GAME:$gameid:CHANNEL $field360 $value360
#百度渠道参数请修改AppID=app_id，ProductKey=app_key，ProductSecret=secret_key，其他参数不用修改
fieldbaidu='ch5'
valuebaidu='{"id":"5","name":"Baidu","attrs":{"app_id":"123345676","app_key":"123345676","channel_id":"5","sdk_name":"Baidu","secret_key":"123345676","itemLists":[]}}'
redis-cli -h $RedisIP -p $RedisPort -a $RedisPWD hset GAME:$gameid:CHANNEL $fieldbaidu $valuebaidu
#优酷渠道参数请修改AppID=app_id，AppKey=app_key，AppSecret=secret_key，PayKey=private_key，pay_call_back_url=支付回调地址（http://ip:port/$gameid/6/Pay）其他参数不用修改
fieldyouku='ch6'
valueyouku='{"id":"6","name":"YouKu","attrs":{"app_id":"123345676","app_key":"123345676","channel_id":"6","pay_call_back_url":"http://120.132.11.160:40000/1001/6/Pay","private_key":"123345676","sdk_name":"YouKu","secret_key":"123345676","itemLists":[]}}'
redis-cli -h $RedisIP -p $RedisPort -a $RedisPWD hset GAME:$gameid:CHANNEL $fieldyouku $valueyouku
#小米渠道参数请修改appId=app_id，appkey=app_key，appsecret=secret_key，其他参数不用修改
fieldxiaomi='ch7'
valuexiaomi='{"id":"7","name":"XiaoMi","attrs":{"app_id":"123345676","app_key":"123345676","channel_id":"7","sdk_name":"XiaoMi","secret_key":"123345676","itemLists":[]}}'
redis-cli -h $RedisIP -p $RedisPort -a $RedisPWD hset GAME:$gameid:CHANNEL $fieldxiaomi $valuexiaomi
#华为渠道参数请修改appId=app_id，appkey=app_key，pubPayKey=product_key，priPayKey=secret_key，pubLoginKey=PublicKey，CPID=CPID,其他参数不用修改
fieldhuawei='ch9'
valuehuawei='{"id":"9","name":"HuaWei","attrs":{"app_id":"123345676","app_key":"123345676","channel_id":"9","CPID":"123345676","product_key":"123345676","PublicKey":"MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAmKLBMs2vXosqSR2rojMzioTRVt8oc1ox2uKjyZt6bHUK0u+OpantyFYwF3w1d0U3mCF6rGUnEADzXiX/2/RgLQDEXRD22er31ep3yevtL/r0qcO8GMDzy3RJexdLB6z20voNM551yhKhB18qyFesiPhcPKBQM5dnAOdZLSaLYHzQkQKANy9fYFJlLDo11I3AxefCBuoG+g7ilti5qgpbkm6rK2lLGWOeJMrF+Hu+cxd9H2y3cXWXxkwWM1OZZTgTq3Frlsv1fgkrByJotDpRe8SwkiVuRycR0AHsFfIsuZCFwZML16EGnHqm2jLJXMKIBgkZTzL8Z+201RmOheV4AQIDAQAB","sdk_name":"HuaWei","secret_key":"123345676","itemLists":[]}}'
redis-cli -h $RedisIP -p $RedisPort -a $RedisPWD hset GAME:$gameid:CHANNEL $fieldhuawei $valuehuawei
#oppo渠道参数请修改appId=app_id，appkey=app_key，appsecret=secret_key，其他参数不用修改
fieldoppo='ch10'
valueoppo='{"id":"10","name":"Oppo","attrs":{"app_id":"123345676","app_key":"123345676","channel_id":"10","sdk_name":"Oppo","secret_key":"123345676","itemLists":[]}}'
redis-cli -h $RedisIP -p $RedisPort -a $RedisPWD hset GAME:$gameid:CHANNEL $fieldoppo $valueoppo
#vivo渠道参数请修改AppID=app_id，cpkey=app_key，cpid=sdk_cp_id，PayKey=private_key，pay_call_back_url=支付回调地址（http://ip:port/$gameid/14/Pay）其他参数不用修改
fieldvivo='ch14'
valuevivo='{"id":"14","name":"Vivo","attrs":{"app_id":"123345676","app_key":"123345676","channel_id":"14","pay_call_back_url":"http://120.132.11.160:40000/1001/6/Pay","sdk_cp_id":"123345676","sdk_name":"Vivo","itemLists":[]}}'
redis-cli -h $RedisIP -p $RedisPort -a $RedisPWD hset GAME:$gameid:CHANNEL $fieldvivo $valuevivo
#豌豆荚渠道参数请修改appId=app_id，publicKey=app_key，secretkey=secret_key，其他参数不用修改
fieldwandoujia='ch22'
valuewandoujia='{"id":"22","name":"WanDouJia","attrs":{"app_id":"123345676","app_key":"123345676","channel_id":"22","sdk_name":"WanDouJia","secret_key":"123345676","itemLists":[]}}'
redis-cli -h $RedisIP -p $RedisPort -a $RedisPWD hset GAME:$gameid:CHANNEL $fieldwandoujia $valuewandoujia
#当乐渠道参数请修改app=app_id，appKey=app_key，merchantId=product_id，payKey=secret_key其他参数不用修改
fielddangle='ch47'
valuedangle='{"id":"47","name":"DangLe","attrs":{"app_id":"123345676","app_key":"123345676","channel_id":"47","product_id":"123345676","sdk_name":"DangLe","secret_key":"123345676","itemLists":[]}}'
redis-cli -h $RedisIP -p $RedisPort -a $RedisPWD hset GAME:$gameid:CHANNEL $fielddangle $valuedangle
#调试阿里游戏渠道参数，CP调试使用不用修改
fieldDebugAliGame='ch777'
valueDebugAliGame='{"id":"777","name":"DebugAliGame","attrs":{"app_id":"119474","app_key":"f25e24a1cb03252b48938235149f0798","channel_id":"777","CPID":"20087","sdk_cp_id":"20087","sdk_name":"DebugAliGame","itemLists":[]}}'
redis-cli -h $RedisIP -p $RedisPort -a $RedisPWD hset GAME:$gameid:CHANNEL $fieldDebugAliGame $valueDebugAliGame
#TypeChanell国内安卓渠道
fieldGAGame='ch200'
valueGAGame='{"id":"200","name":"GAGame","attrs":{"app_id":"100321","app_key":"a8e4324b1b7d6c0e8a9978a0e62cb824","channel_id":"200","sdk_name":"GAGame","itemLists":[]}}'
redis-cli -h $RedisIP -p $RedisPort -a $RedisPWD hset GAME:$gameid:CHANNEL $fieldGAGame $valueGAGame
#TypeChanell海外安卓渠道
fieldGAGameHW='ch201'
valueGAGameHW='{"id":"201","name":"GAGame","attrs":{"app_id":"100321","app_key":"a8e4324b1b7d6c0e8a9978a0e62cb824","channel_id":"201","sdk_name":"GAGame","itemLists":[]}}'
redis-cli -h $RedisIP -p $RedisPort -a $RedisPWD hset GAME:$gameid:CHANNEL $fieldGAGameHW $valueGAGameHW
#TypeChanell国内IOS渠道
fieldGAGameAppStore='ch202'
valueGAGameAppStore='{"id":"202","name":"GAGameAppStore","attrs":{"app_id":"100321","app_key":"a8e4324b1b7d6c0e8a9978a0e62cb824","channel_id":"202","sdk_name":"GAGameAppStore","itemLists":[]}}'
redis-cli -h $RedisIP -p $RedisPort -a $RedisPWD hset GAME:$gameid:CHANNEL $fieldGAGameAppStore $valueGAGameAppStore
#TypeChanell海外IOS渠道
fieldGAGameAppStoreHW='ch203'
valueGAGameAppStoreHW='{"id":"203","name":"GAGameAppStore","attrs":{"app_id":"100321","app_key":"a8e4324b1b7d6c0e8a9978a0e62cb824","channel_id":"203","sdk_name":"GAGameAppStore","itemLists":[}}'
redis-cli -h $RedisIP -p $RedisPort -a $RedisPWD hset GAME:$gameid:CHANNEL $fieldGAGameAppStoreHW $valueGAGameAppStoreHW

