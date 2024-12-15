# Network Optix Model Zoo

## Overview

The Network Optix Model Zoo is your go-to destination for pre-trained AI models tailored for seamless integration into the Network Optix platform. These models are carefully selected and formatted to work effortlessly with the Network Optix AI Manager, enabling you to bring powerful machine learning capabilities to your projects with ease.

This collection is a result of collaboration between the Network Optix community and other open-source contributors. It showcases cutting-edge models designed to meet the needs of developers, researchers, and businesses alike. Our mission is to make advanced AI accessible, practical, and easy to implement.

To handle the larger file sizes of these models, the repository uses Git LFS (Large File Storage) to ensure smooth storage and access.

## Pre-requisites

Models supported by the Nx AI infrastructure are just ONNX format models with a few constraints.   
Those constraints are set in order to ensure that the model benefits from the full range of features
provided by the Nx AI Manager and Cloud, such seamless deployment, Nx Visualization,
hardware acceleration, built-in pre- and post-processing, etc.

The constraints are as follows:

- The model must be in ONNX format with version up to 17.
- The model must be a vision model (i.e., it must have an image as input), and the input must be a 4-dimensional tensor
  in NCHW or NHWC formats.
- The model can also have two optional inputs: `nms_sensitivity-` and `mask-`, if they are used to control the
  non-maximum suppression sensitivity and the mask output, respectively.
- The model must have one of the following outputs:
  - A bounding boxes output (for object detection models) in the form of a 2-dimensional tensor with
    shape `[num_boxes, 6]`.
  - A scores output (for image classification models) in the form of a 1-dimensional tensor with
    shape `[num_classes]`.

> Segmentation models are not supported yet.


For technical details, please refer to this
documentation [page](https://nx.docs.scailable.net/for-data-scientists/onnx-requirements).

## Getting started

These tutorials will guide you through the process of converting a model to an ONNX format that meets the requirements
mentioned above.

The tutorials are organized by the type of model you want to convert,
hence each tutorial is self-contained in a folder that is named after the model type.

> It's recommended to start with the [timm-to-onnx](timm-to-onnx) and [yolov5-to-onnx](yolov5-to-onnx) tutorials, as
> they are the most straightforward and detailed.

## Available models

The Network Optix Model Zoo offers a curated collection of pre-trained AI models optimized for seamless integration with the Network Optix platform. These models are organized into subdirectories, each containing specific models along with tools for conversion to the ONNX format. Below is an expanded overview of each subdirectory, including links and descriptions:

The **Network Optix Model Zoo** offers a curated collection of pre-trained AI models optimized for seamless integration with the Network Optix platform. These models are organized into subdirectories, each containing specific models along with tools for conversion to the ONNX format. Below is an expanded overview of each subdirectory, including links and detailed descriptions.

## onnx-zoo-yolov4

This directory contains scripts and configurations for converting YOLOv4 models to the ONNX format. YOLOv4 is a state-of-the-art real-time object detection model that improves upon its predecessors by enhancing both speed and accuracy

**See also**: [ONNX Zoo](https://github.com/onnx/models)

**Repository directory**: [onnx-zoo-yolov4](https://github.com/scailable/nx-onnx-zoo/tree/main/onnx-zoo-yolov4)

## openaiCLIP-to-onnx

This directory includes tools for converting OpenAI's CLIP models to ONNX, facilitating multimodal tasks involving image and text. CLIP (Contrastive Language-Image Pre-Training) is a neural network trained on a variety of (image, text) pairs. It can be instructed in natural language to predict the most relevant text snippet given an image, enabling zero-shot learning capabilities across various tasks without direct optimization for each specific task. 

**See also**: [OpenAI GitHub](https://github.com/openai/CLIP?utm_source=chatgpt.com)

**Repository directory**: [openaiCLIP-to-onnx](https://github.com/scailable/nx-onnx-zoo/tree/main/openaiCLIP-to-onnx)

## timm-to-onnx

This directory provides scripts for converting models from the PyTorch Image Models (timm) library to the ONNX format. The timm library is a comprehensive collection of state-of-the-art image models, layers, utilities, optimizers, and more, designed to facilitate training and validation of PyTorch models. It includes a wide variety of architectures with pretrained weights, making it a valuable resource for computer vision tasks. 

**See also**: [Fast.ai Timm](https://timm.fast.ai/?utm_source=chatgpt.com)

**Repository directory**: [timm-to-onnx](https://github.com/scailable/nx-onnx-zoo/tree/main/timm-to-onnx)

## ultralytics-to-onnx

This directory contains resources for converting Ultralytics' YOLO models to ONNX, supporting object detection tasks. Ultralytics has developed several versions of the YOLO (You Only Look Once) object detection models, including YOLOv5 and YOLOv8, which are known for their speed and accuracy in real-time object detection applications. These models are widely used in various industries for tasks such as surveillance, autonomous driving, and more. 

**See also**: [Ultralytics GitHub](https://github.com/ultralytics/yolov5?utm_source=chatgpt.com)

**Repository directory**: [ultralytics-to-onnx](https://github.com/scailable/nx-onnx-zoo/tree/main/ultralytics-to-onnx)

## yolov10-to-onnx

This directory includes scripts for converting YOLOv10 models to the ONNX format. YOLOv10 is a real-time object detection model that introduces a dual-head architecture for Non-Maximum Suppression (NMS)-free training, enhancing both efficiency and accuracy. It combines one-to-one and one-to-many label assignments to improve performance without extra computation, making it suitable for various real-time detection applications. 

**See also**: [THU-MIG GitHub](https://github.com/THU-MIG/yolov10?utm_source=chatgpt.com)

**Repository directory**: [yolov10-to-onnx](https://github.com/scailable/nx-onnx-zoo/tree/main/yolov10-to-onnx)

## yolov4-to-onnx

This directory provides tools for converting YOLOv4 models to ONNX, similar to the onnx-zoo-yolov4 directory. YOLOv4 enhances object detection by introducing features like the CSPDarknet53 backbone and SPP, improving both speed and accuracy. It is designed to be trained and run on a single GPU, making it accessible for various applications. 

**See also**: [VISO.ai](https://viso.ai/deep-learning/yolov4/?utm_source=chatgpt.com)

**Repository directory**: [yolov4-to-onnx](https://github.com/scailable/nx-onnx-zoo/tree/main/yolov4-to-onnx)

## yolov5-to-onnx

This directory contains scripts for converting YOLOv5 models to the ONNX format, enabling efficient deployment. YOLOv5 is a state-of-the-art object detection model developed by Ultralytics, known for its high speed and accuracy. It builds upon previous YOLO versions and introduces new features and improvements, making it suitable for a wide range of object detection, instance segmentation, and image classification tasks. 

**See also**: [Ultralytics Github](https://pytorch.org/hub/ultralytics_yolov5/?utm_source=chatgpt.com)

**Repository directory**: [yolov5-to-onnx](https://github.com/scailable/nx-onnx-zoo/tree/main/yolov5-to-onnx)

## yolov7-to-onnx

This directory includes resources for converting YOLOv7 models to ONNX, supporting advanced object detection capabilities. YOLOv7 is a state-of-the-art real-time object detector that surpasses previous models in both speed and accuracy. It introduces features like model re-parameterization and dynamic label assignment, enhancing performance across various object detection tasks. 

**See also**: [Ultralytics Docs](https://docs.ultralytics.com/models/yolov7/?utm_source=chatgpt.com)

**Repository directory**: [yolov7-to-onnx](https://github.com/scailable/nx-onnx-zoo/tree/main/yolov7-to-onnx)

## yolov9-to-onnx

**Description**: This directory provides tools for converting YOLOv9 models to the ONNX format. YOLOv9 introduces innovative approaches to real-time object detection, emphasizing scalability and efficiency. It is designed to handle complex scenarios with improved detection accuracy and robustness in applications like surveillance, autonomous vehicles, and robotics. (example link)

**Repository directory**: [yolov9-to-onnx](https://github.com/scailable/nx-onnx-zoo/tree/main/yolov9-to-onnx)

## yolox-to-onnx

**Description**: This directory contains scripts for converting YOLOX models to ONNX, facilitating object detection tasks. YOLOX is an anchor-free version of YOLO that adopts advanced detection techniques such as decoupled head and dynamic label assignment, leading to state-of-the-art performance in object detection benchmarks. Its architecture allows for more efficient and accurate training, making it well-suited for both academic and industrial applications. ([link](https://github.com/Megvii-BaseDetection/YOLOX))

**Repository directory**: [yolox-to-onnx](https://github.com/scailable/nx-onnx-zoo/tree/main/yolox-to-onnx)

## Issue reporting

If you encounter any issues while following the tutorials, please open an issue in this repository.