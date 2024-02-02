# Dockerfile

FROM python:3.10.0

# Copy the requirements file into the container at /
COPY requirements.txt /

# Install the dependencies
RUN pip install --no-cache-dir -r /requirements.txt

# Copy the local code to the container at /
COPY . /

# Expose the port that Streamlit will run on
EXPOSE 8501

# Command to run your application
CMD ["streamlit", "run", "app.py"]
