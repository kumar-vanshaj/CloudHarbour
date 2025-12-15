# Cloud Harbour – AWS High Availability & Failover Architecture

Cloud Harbour is a cloud infrastructure project focused on designing a **highly available and fault-tolerant AWS architecture** capable of handling instance and availability zone failures with minimal downtime.

The system uses **automated health checks, DNS failover, and Infrastructure as Code (IaC)** to ensure reliability and reproducibility.


 Problem Statement

Traditional single-instance or single-AZ deployments suffer from downtime during failures.
This project aims to design an AWS-based solution that:
- Ensures high availability
- Automatically detects failures
- Redirects traffic without manual intervention



Architecture Overview

- Multi-AZ VPC deployment
- EC2 instances behind an Application Load Balancer
- AWS Lambda for health monitoring
- Route 53 DNS failover routing
- CloudWatch for logging and alarms
- Infrastructure provisioned using Terraform



Tech Stack

- **Cloud**: AWS (EC2, ALB, Route 53, Lambda, CloudWatch, VPC)
- **IaC**: Terraform
- **Language**: Python (Lambda), Bash
- **Monitoring**: CloudWatch
- **Networking**: VPC, Subnets, Security Groups


 Failure Handling Flow

1. EC2 instance becomes unhealthy or unavailable
2. Lambda function detects failure via health checks
3. CloudWatch logs the failure
4. Route 53 updates DNS records
5. Traffic is redirected to a healthy instance or AZ


Infrastructure as Code

All AWS resources are created using Terraform, ensuring:
- Reproducibility
- Version-controlled infrastructure
- Easy teardown and redeployment



 Key Outcomes

- Achieved high availability using multi-AZ AWS architecture
- Automated failover using Lambda + Route 53
- Reduced recovery time during infrastructure failures
- Designed a production-ready cloud system using best practices



Future Enhancements

- Auto Scaling Groups
- Blue-Green deployments
- Canary releases
- Cost optimization using Spot Instances



Kumar Vanshaj  
