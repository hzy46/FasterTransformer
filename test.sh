make -j24 && \
    python ../examples/pytorch/gpt/multi_gpu_gpt_example.py --ckpt_path /models/gpt2-xl-fp16/1-gpu/ --vocab_file gpt2-xl/vocab.json --merges_file gpt2-xl/merges.txt --sample_input_file input.txt --output_len 5 --shared_contexts_ratio 0 --inference_data_type fp16 &> /tmp/log && \
    cat /tmp/log
