#!/usr/bin/env node
'use strict';

const exec = require('child_process').exec;
let port = process.argv[2] || 0;
if (port === 0) {
    console.log('输入参数错误，正确使用方法：kill 8888');
    return;
}
const shPath = __dirname;
const command = `sh ${shPath}/killport.sh ${port}`;
exec(command, (err, std, stderr) => {
    if (!err) {
        console.log(std);
    }
    else {
        console.log('kill 端口失败，请重试\n', err);
    }
});