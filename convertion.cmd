set MODEL_DIR=F:\ncnn_x64\models
set ONNX2NCNN=F:\ncnn_x64\bin\onnx2ncnn.exe
set ONNXOPTIMIZER=F:\ncnn_x64\bin\ncnnoptimize.exe
Set PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION=python
set ONNXSIMPLE=python -m onnxsim
set OUTDIR=F:\ncnn_x64\out
rem %ONNX2NCNN%
rem %ONNXSIMPLE%

rem need onnxsim 0.3.8  and ncnn tools



rem the model of direction decision
set CLS_MODEL=ch_ppocr_mobile_v2.0_cls_infer  

%ONNXSIMPLE% %MODEL_DIR%\%CLS_MODEL%.onnx  %OUTDIR%\%CLS_MODEL%.onnx  --input-shape 1,3,48,192
%ONNX2NCNN%   %OUTDIR%\%CLS_MODEL%.onnx %OUTDIR%\%CLS_MODEL%.param %OUTDIR%\%CLS_MODEL%.bin


rem  the model of character detection
set DET_MODEL=general_server_v2_det

%ONNXSIMPLE% %MODEL_DIR%\%DET_MODEL%.onnx  %OUTDIR%\%DET_MODEL%.onnx   --input-shape 1,3,960,960
%ONNX2NCNN%   %OUTDIR%\%DET_MODEL%.onnx %OUTDIR%\%DET_MODEL%.param %OUTDIR%\%DET_MODEL%.bin


rem the model of other character detection
set DET_MODEL=general_mobile_v2_det
%ONNXSIMPLE% %MODEL_DIR%\%DET_MODEL%.onnx  %OUTDIR%\%DET_MODEL%.onnx   --input-shape 1,3,960,960
%ONNX2NCNN%   %OUTDIR%\%DET_MODEL%.onnx %OUTDIR%\%DET_MODEL%.param %OUTDIR%\%DET_MODEL%.bin


rem the model of recognition 
set REC_MODEL=mobile_ChEng_v2_rec
%ONNXSIMPLE% %MODEL_DIR%\%REC_MODEL%.onnx  %OUTDIR%\%REC_MODEL%.onnx   --input-shape 1,3,32,320
%ONNX2NCNN%   %OUTDIR%\%REC_MODEL%.onnx %OUTDIR%\%REC_MODEL%.param %OUTDIR%\%REC_MODEL%.bin


