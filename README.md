<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**

- [terraform](#terraform)
  - [一、配置 terraform 的状态稳健存储在 PostgresSQL 中](#一配置-terraform-的状态稳健存储在-postgressql-中)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# terraform

## 一、配置 terraform 的状态稳健存储在 PostgresSQL 中
```
1. 安装 PostgresSQL；
2. 用 createdb 命令创建 库，库名随意，但是要和 conn_str 中的 URL 里使用的名字保持一致；
3. 配置 terraform 块下的 backend
```
