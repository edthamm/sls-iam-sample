# sls-iam-sample

This simple lambda function demonstrates how you can use the serverless framework to deploy a lambda function with an
externally provided role.

This is useful if your company policy restricts the creation of IAM Roles to a subset of users.

## What's in it?

This sample project will show you how to create an IAM Role using a cloudformation template and then reference this
role while deploying your serverless service.

The service itself is a simple time triggered function that write a timestamp to an S3 bucket while logging the event and
context to standard out.

## Deployment

This guide will assume that you are working in an environment in which you have full control.\
if for you this is not the case either create yourself an account to play with or ask someone who is allowed to do so to
perform the steps you have no permission for.

1. Create the stack containing the IAM Role that your lambda will assume later on.
2. Deploy the lambda function using serverless

You will need to pass 2 variables.

- `bucket-prefix` is part of the bucket name. Choose something unique here ;)
- `iam-stack-name` must be the name you gave the IAM stack. It is used to find the ARN of the role the lambda will assume.

### Commands

- Deploying the whole service

```sh
sls deploy --bucket-prefix my-testing-prefix --iam-stack-name sls-iam-sample
```

- Deploying only the function (e.g. if you changes something in it)

```sh
sls deploy function -f hello --bucket-prefix my-testing-prefix --iam-stack-name sls-iam-sample
```

- Invoking the function for testing purposes (no data needed since it is ignored anyways)

```sh
sls invoke -f hello --bucket-prefix my-testing-prefix --iam-stack-name sls-iam-sample
```

- Removing the function (be a good citizen and clean up after yourself ;) )

```sh
sls remove --bucket-prefix my-testing-prefix --iam-stack-name sls-iam-sample
```
