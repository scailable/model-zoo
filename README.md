# Network Optix Model Zoo

## Overview

The Network Optix Model Zoo is your go-to destination for pre-trained AI models tailored for seamless integration into the Network Optix platform. These models are carefully selected and formatted to work effortlessly with the Nx AI Manager, enabling you to bring powerful AI capabilities to your projects with ease.

This collection is a result of collaboration between the Network Optix community and other open-source contributors. It showcases cutting-edge models designed to meet the needs of developers, researchers, and businesses alike. Our mission is to make advanced AI accessible, practical, and easy to integrate.

To handle the larger file sizes of these models, the repository uses Git LFS (Large File Storage) to ensure smooth storage and access.

## Pre-requisites

To get started with the Network Optix Model Zoo, you need to have:
* a Linux machine compatible with the Nx AI Manager, namely Ubuntu 20.04 or later with a CPU supporting AVX2 instructions. 
* Furthermore, an account in the [Nx Cloud](https://admin.sclbl.nxvms.com/) is required to deploy the AI models.

## Getting started

On the relevant machine, follow the steps below to install the Nx software stack:
1. Install the Nx Meta server by following steps [here](https://nx.docs.scailable.net/nx-ai-manager/1.-install-network-optix#download-and-install-the-nx-meta-server-on-an-ubuntu-server). 
2. Install the Nx AI Plugin by following steps [here](https://nx.docs.scailable.net/nx-ai-manager/2.-install-nx-ai-plugin).
3. Install the Nx Meta client on any machine by following steps [here](https://nx.docs.scailable.net/nx-ai-manager/1.-install-network-optix#download-and-install-a-nx-meta-client). Once that is done, you can access the Nx Meta server from the client machine by connecting them as shown [here](https://nx.docs.scailable.net/nx-ai-manager/1.-install-network-optix#connect-to-your-nx-meta-server-with-your-nx-meta-client).
4. From the Nx client, you can configure the Nx AI Plugin by following steps [here](https://nx.docs.scailable.net/nx-ai-manager/2.-configure-the-nx-ai-manager-plugin).
5. Finally, upload one of the models from the Model Zoo to the Nx Cloud by following steps [here](https://nx.docs.scailable.net/nx-ai-cloud/upload-your-model), and deploy it on the Nx AI Manager by following steps [here](https://nx.docs.scailable.net/nx-ai-cloud/deployment-and-device-management).

## Available models

The Network Optix Model Zoo offers a curated collection of pre-trained AI models optimized for seamless integration with the Network Optix platform. These models are organized into subdirectories, each containing specific models. Below is a table that summarizes the available models along with their descriptions.

| Model Name | Description | Reference |
|------------|-------------|-----------|
| [Barcode detection](./barcode-detection/) | Detects location of barcodes in images | Based on Yolov8 |
| [Face detection](./face-detection/) | Detects faces in images | Based on Yolov5 |

## Testing the models

Each model directory contains an MP4 video file that can be used to test the model's performance. You can download the video file and use it to mimic a camera stream using the [Nx test camera](https://nxvms.com/integrations/34-testcamera/how-to-setup) feature.

## Issue reporting

If you encounter any issues while following the tutorials or want to request a model, please open an issue in this repository.