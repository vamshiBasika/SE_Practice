AWS EC2 – Deploying a Simple Web Application
Aim: To launch an AWS EC2 virtual machine and deploy a simple web application on it.
Step 1: Open AWS
1. Visit https://aws.amazon.com/.
2. Sign in to your AWS account.
3. Open the AWS Management Console.
4. Search for EC2 and open it.
Step 2: Launch an EC2 instance
1. Click Launch instance.
2. Enter the instance name: MyWebServer.
3. Select an Amazon Linux AMI.
4. Select an eligible free-tier instance type, if available, such as t2.micro or t3.micro.
5. Create or select a key pair.
6. Under Network settings, allow:
   - SSH (port 22) from your IP address.
   - HTTP (port 80) from anywhere.
7. Click Launch instance.
Step 3: Connect to the instance
1. Open EC2 → Instances.
2. Select MyWebServer.
3. Click Connect.
4. Choose EC2 Instance Connect, if available.
5. Click Connect to open the terminal.
Step 4: Install the web server
In the EC2 terminal, execute:
sudo dnf update -y
sudo dnf install httpd -y


Here, httpd is the Apache web server.
Step 5: Start the web server
sudo systemctl start httpd
sudo systemctl enable httpd
sudo systemctl status httpd


The web server should show as active (running).
Step 6: Create a web page
Run:
echo "<h1>Welcome to AWS EC2</h1>" | sudo tee /var/www/html/index.html


This creates the website's home page.
Step 7: Access the application
1. Go to EC2 → Instances.
2. Select your instance.
3. Copy its Public IPv4 address.
4. Open a browser and enter:
http://YOUR_PUBLIC_IP


You should see:

Welcome to AWS EC2
Step 8: Stop or terminate the instance
After completing the practical:
- To temporarily stop it: select instance → Instance state → Stop instance.
- To permanently delete it: select instance → Instance state → Terminate instance.
Be careful: AWS may charge for resources depending on your account, region, and usage. Check the pricing before launching, and terminate resources you no longer need.

Important viva questions
1. What is AWS?

AWS (Amazon Web Services) is a cloud computing platform that provides services such as storage, servers, databases, and networking.

2. What is EC2?

EC2 (Elastic Compute Cloud) provides virtual servers in the cloud.

3. What is an AMI?

AMI (Amazon Machine Image) is a template used to create an EC2 instance.

4. What is an EC2 instance?

An EC2 instance is a virtual machine running on AWS.

5. What is a Security Group?

A Security Group acts as a virtual firewall that controls incoming and outgoing traffic.

6. What is a Key Pair?

A key pair is used to securely connect to an EC2 instance.

7. What is Apache?

Apache is a web server used to serve web pages to users.

8. What is the difference between Stop and Terminate?
- Stop: Temporarily shuts down the instance.
- Terminate: Permanently deletes the instance.
Important commands for the practical
sudo dnf update -y
sudo dnf install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
sudo systemctl status httpd
echo "<h1>Welcome to AWS EC2</h1>" | sudo tee /var/www/html/index.html


Practical completed: AW
