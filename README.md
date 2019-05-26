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
