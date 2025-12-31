echo "Change mechanicus-screenrecord to use gpu-screen-recorder"
mechanicus-pkg-drop wf-recorder wl-screenrec

# Add slurp in case it hadn't been picked up from an old migration
mechanicus-pkg-add slurp gpu-screen-recorder
