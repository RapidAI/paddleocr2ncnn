# paddleocr2ncnn

Some scripts for converting onnx models of paddleocr to ncnn format.


steps:

1. convert paddleocr to onnx format.

https://github.com/RapidAI/PaddleOCRModelConverter


2. convert paddleocr models of onnx format  to ncnn format

It needs a special version of ONNXSIM (0.3.8) to simplify the onnx model of RapidOCR.  https://github.com/daquexian/onnx-simplifier/releases/tag/v0.3.8
