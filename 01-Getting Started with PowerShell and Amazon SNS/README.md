## Learning Objectives

## What is Amazon SNS?

* Publish-Subscribe architecture (PubSub)
* Fan-out architecture, useful when multiple components need to respond to an event
* Reliable message delivery: Message retries
* Filters messages, simplifies application architecture
  * No need to write extra code to determine if message should be passed through
* Similar service: Amazon CloudWatch Events, Amazon EventBridge

## How does SNS fit into an application architecture?

* Use Cases
    * DevOps pipelines with code linting, security static analysis, et al.
    * Online order placed, notify shipping (logistics) and fulfillment (warehouses) at the same time

## How do I use SNS?

* Create a Simple Notification Service (SNS) topic
* Add [subscribers](https://docs.aws.amazon.com/sns/latest/dg/welcome.html) to the topic
    * Supported subscribers: e-mail, webhook, mobile push notifications, SMS text messages, AWS Lambda, Amazon SQS, Kinesis Firehose
    * More subscribers may be added in the future
    * Some subscribers require a confirmation

## Why Use PowerShell?

* Excellent for both interactive and automation use cases / rapid prototyping
* Cross-platform automation language (MacOS, Linux, Windows)
  * Prior to 2016, it was purely a Windows automation tool
* Object-oriented approach to software development, similar to Python, JavaScript
* Integrates with other services:
    * Active Directory (manage users, computers, replication, e-mail accounts)
    * Amazon SDKs
    * Azure SDKs


