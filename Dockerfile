FROM jupyter/scipy-notebook

USER root
RUN pip install nbdime && nbdime extensions --enable
USER jovyan

RUN mkdir -p $HOME/.jupyter/custom && \
  echo '.CodeMirror pre, .output pre {font-family: "Noto Sans Mono CJK JP", "Menlo", "DejaVu Sans Mono", "Liberation Mono", "Consolas", "Ubuntu Mono", "Courier New", "andale mono", "lucida console", monospace;}' >> $HOME/.jupyter/custom/custom.css
