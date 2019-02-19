# aws_cli_iam_list
For getting user's authority on aws

Before execution this script, please setup your aws credentials.

```
# aws configure
```

if we execute this script, output is below....

```
user: uipath_uipathjapan_kajimoto
attachedgroup: uipath_uipathjapan_admin
groupattachedpolicy: {
    "AttachedPolicies": [
        {
            "PolicyName": "AdministratorAccess",
            "PolicyArn": "arn:aws:iam::aws:policy/AdministratorAccess"
        }
    ]
}
custompolicy: [
    "arn:aws:iam::aws:policy/AmazonVPCCrossAccountNetworkInterfaceOperations",
    "arn:aws:iam::aws:policy/job-function/NetworkAdministrator"
]
```

### Description
user: aws user  
attachedgroup: the group name of the user  
groupattachedpolicy: the policy of the group  
custompolicy: the policy of the specific user  
