# paddleocr2ncnn

Some scripts for converting onnx models of paddleocr to ncnn format.


steps:

1. convert paddleocr to onnx format.

https://github.com/RapidAI/PaddleOCRModelConverter


2. convert paddleocr models of onnx format  to ncnn format

It needs a special version of ONNXSIM (0.3.8) to simplify the onnx model of RapidOCR.

Download:

after installed it, run the script in the repo.

please modify it to match your need.


## 3. Do not, do not, do not optimize the converted models with ncnnoptimizer.
