#!/bin/bash

loop=`aws iam list-users --query 'Users[].UserName' | grep uipath  | wc -l`
num=$(( ${loop}-1 ))
list_users=`aws iam list-users --query 'Users[].UserName'`

for var in `seq 0 ${num}`
  do
    #echo ${var}
      user=`aws iam list-users --query 'Users['${var}'].UserName' | sed "s/\"//g"`
    echo "user: ${user}"

      user_group_name=`aws iam list-groups-for-user \
      --user-name "${user}" \
      --query 'Groups[0].GroupName' | sed "s/\"//g"`
    echo "attachedgroup: ${user_group_name}"

      group_attached_policy=`aws iam list-attached-group-policies --group-name "${user_group_name}"`
    echo "groupattachedpolicy: ${group_attached_policy}"

      attached_policies=`aws iam list-attached-user-policies \
      --user-name "${user}" \
      --query 'AttachedPolicies[].PolicyArn'`
    echo -e "custompolicy: ${attached_policies}\n\n\n"
  done




