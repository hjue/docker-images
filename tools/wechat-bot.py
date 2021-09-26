#!/usr/bin/python3
import requests
import json
import datetime
import time
import sys

'''
Jenkinsfile 中相关代码
node {
    style = 'info'
    if (currentBuild.currentResult == 'FAILURE') {
    style = 'warning'
    }
    msg = """【${JOB_NAME}(${BUILD_NUMBER})】<font color="${style}">构建${currentBuild.currentResult }</font>
    > 构建用时：<font color="comment">${currentBuild.durationString}</font>
    > [查看控制台](${BUILD_URL})
    """

    sh "wechat-bot.py '${msg}'"
}
'''


def get_current_time():
    return datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')


def send_msg(content):
    data = json.dumps({"msgtype": "markdown",
                       "markdown": {"content": content}})
    r = requests.post(wx_url, data, auth=('Content-Type', 'application/json'))
    print(r.text)


if __name__ == "__main__":

    if len(sys.argv) <= 2:
        key = 'c7bdfa9f-c989-4387-bd7f-660842de5d6a'
    else:
        key = sys.argv[2].strip()

    content = sys.argv[1]
    if len(content.strip()) == 0:
        print('内容不能为空！')
        sys.exit(1)

    wx_url = "https://qyapi.weixin.qq.com/cgi-bin/webhook/send?key=%s" % key
    content = """%s
> 构建时间：<font color="comment">%s</font>""" % (content,  get_current_time()[0])
    send_msg(content)
