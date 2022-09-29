<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**

- [terraform](#terraform)
  - [一、配置 terraform 的状态稳健存储在 PostgresSQL 中](#%E4%B8%80%E9%85%8D%E7%BD%AE-terraform-%E7%9A%84%E7%8A%B6%E6%80%81%E7%A8%B3%E5%81%A5%E5%AD%98%E5%82%A8%E5%9C%A8-postgressql-%E4%B8%AD)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# terraform

## 一、配置 terraform 的状态稳健存储在 PostgresSQL 中
```
1. 安装 PostgresSQL；
2. 用 createdb 命令创建 库，库名随意，但是要和 conn_str 中的 URL 里使用的名字保持一致；
3. 配置 terraform 块下的 backend
```
