# Use the official Jenkins LTS (Long Term Support) image as the base image
FROM jenkins/jenkins:lts

# Skip the initial setup wizard
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

# Expose the default Jenkins port
EXPOSE 8080

# Expose the agent port for JNLP (Java Network Launch Protocol)
EXPOSE 50000

# Switch to the root user to install additional tools if needed
USER root

# Install additional tools if needed (add your installation commands here)

# Switch back to the Jenkins user
USER jenkins

