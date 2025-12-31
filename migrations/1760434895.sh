echo "Change to mechanicus-nvim package"
mechanicus-pkg-drop mechanicus-lazyvim
mechanicus-pkg-add mechanicus-nvim

# Will trigger to overwrite configs or not to pickup new hot-reload themes
mechanicus-nvim-setup
