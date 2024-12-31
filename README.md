# Network Optix Model Zoo

## Overview

The Network Optix Model Zoo is your go-to destination for pre-trained AI models tailored for seamless integration into the Network Optix platform. These models are carefully selected and formatted to work effortlessly with the Nx AI Manager, enabling you to bring powerful AI capabilities to your projects with ease.

## Pre-requisites

To get started with the Network Optix Model Zoo, you need to have:
* a Linux machine compatible with the Nx AI Manager, namely Ubuntu 20.04 or later with a CPU supporting AVX2 instructions. For more technical details, please check out the [Nx AI Manager documentation](https://nx.docs.scailable.net/nx-ai-manager/get-started-with-the-nx-ai-manager-plugin).
* Furthermore, an account in the [Nx Cloud](https://admin.sclbl.nxvms.com/) is required to deploy the AI models.

## Getting started

On the relevant machine, follow the steps below to install the Nx software stack:
1. Install the Nx Meta server by following steps [here](https://nx.docs.scailable.net/nx-ai-manager/1.-install-network-optix#download-and-install-the-nx-meta-server-on-an-ubuntu-server). 
2. Install the Nx AI Plugin by following steps [here](https://nx.docs.scailable.net/nx-ai-manager/2.-install-nx-ai-plugin).
3. Install the Nx Meta client on any machine by following steps [here](https://nx.docs.scailable.net/nx-ai-manager/1.-install-network-optix#download-and-install-a-nx-meta-client). Once that is done, you can access the Nx Meta server from the client machine by connecting them as shown [here](https://nx.docs.scailable.net/nx-ai-manager/1.-install-network-optix#connect-to-your-nx-meta-server-with-your-nx-meta-client).
4. From the Nx client, you can configure the Nx AI Plugin by following steps [here](https://nx.docs.scailable.net/nx-ai-manager/2.-configure-the-nx-ai-manager-plugin).
5. Finally, upload one of the models from the Model Zoo to the Nx Cloud by following steps [here](https://nx.docs.scailable.net/nx-ai-cloud/upload-your-model), and deploy it with the Nx AI Manager by following steps [here](https://nx.docs.scailable.net/nx-ai-cloud/deployment-and-device-management).

> When deployed with the Nx AI Manager, these models use acceleration from Intel, Nvidia, Hailo, or MemryX, depending on the hardware and model support.

## Available models

The Network Optix Model Zoo offers a curated collection of pre-trained AI models optimized for seamless integration with the Nx EVOS. The models are custom versions of the original ones that were modified in order to meet the [ONNX requirments](https://nx.docs.scailable.net/for-data-scientists/onnx-requirements) needed by the Nx AI Manager. These conditions are set to ensure the models benefit from built-in pre-processing, post-processing and visualization capabilities. 

Below is a table that summarizes the available models along with their descriptions and source.

| Model Name | Description | Reference |
|------------|-------------|-----------|
| [Barcode detection](./barcode-detection/) | Detects position of barcodes in images | Based on [Yolov8](https://github.com/ultralytics/ultralytics) |
| [Barcode decoding](./barcode-decoding/) | Reads digits of one barcode | Based on [Yolov8](https://github.com/ultralytics/ultralytics) |
| [Bee detection](./bee-detection/) | Detects position of bees in images | [Source](https://github.com/mattnudi/bee-detection) |
| [Eggs detection](./eggs-detection/) | Detects position of eggs in images | [Source](https://github.com/scailable/ultralytics-support) |
| [Emotion recognition](./emotion-recognition/) | Recognizes the emotion of a person's face | - |
| [Face detection](./face-detection/) | Detects faces in images | [Source](https://github.com/Linzaer/Ultra-Light-Fast-Generic-Face-Detector-1MB) |
| [Gauge reader](./gauge-reader/) | Detects a gauge boundaries and needle position | Based on [Yolov8](https://github.com/ultralytics/ultralytics) |
| [Image super-resolution](./image-super-resolution/) | Increases image resolution with minimal quality loss | [Source](https://github.com/pbehjatii/OverNet-to-ONNX) |
| [Low-light image enhancement](./low-light-image-enhancement/) | Improves quality of image captured under low-light conditions | [Source](https://github.com/mdturp/low-light-image-enhancement) |
| [OpenAI CLIP](./openai-clip/) | Detects whether an image corresponds to a person, car, dog or a cat. But can be easily customized. | [Source](https://github.com/scailable/nxai-model-to-onnx/tree/main/openaiCLIP-to-onnx) |
| [Personal Protective Equipment](./personal-protective-equipment/) | Detects people and PPE like hats and vests | Based on [Yolov4](https://github.com/Tianxiaomo/pytorch-YOLOv4) |
| [QR code detection](./qr-code-detection/) | Detects position of QR code in images | [Source](https://github.com/Eric-Canas/qrdet) |
| [Yolo models](./generic-object-detection/) | Collections of pre-trained YOLO models | - |

## Testing the models

Each model directory contains an MP4 video file that can be used to test the model's performance. You can download the video file and use it to mimic a camera stream using the [Nx test camera](https://nxvms.com/integrations/34-testcamera/how-to-setup) feature.

In short, you can use this command to run the test camera:

```bash
video_path=<video-path>
video_path=$(realpath "$video_path")
/opt/networkoptix-metavms/mediaserver/bin/testcamera -S -I 127.0.0.1 files="$video_path"
```

## Beyond the model zoo

For the sake of simplicity, the Network Optix Model Zoo contains a limited number of models. However, the Nx AI Manager supports a wide range of models that can be deployed on the platform.  

If you have a custom model that you would like to run on the Nx AI Manager and is based on a common architecture, you can convert it to a compatible ONNX using the tools provided by Nx in the [Model to ONNX repository.](https://github.com/scailable/nxai-model-to-onnx)

## Issue reporting

If you encounter any issues while following the tutorials or want to request a model, please open an issue in this repository.