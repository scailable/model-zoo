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

## Issue reporting

If you encounter any issues while following the tutorials, please open an issue in this repository.