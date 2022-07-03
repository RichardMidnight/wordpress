# WordPress

Notes about setting up wordpress on Raspberry Pi

Follows these instructions:  https://raspberrytips.com/wordpress-on-raspberry-pi/

And this video to install and configure WooCommerce.  https://www.youtube.com/watch?v=gNnPX2AEk6U
Add the wooCommerce plug in, then go to 13:36 in the video and continue

Summary:
1) Get Linux up and running
    - Flash Raspberry PI OS to an SD card and boot your pi
    - Or install it on a virtual machine
    
2) Run the install_wordpress.sh script (below) to install wordpress and needed components.
    - Open a terminal.  Paste in the install from below.

3) Install Plugins ...
    - login to wordpress admin panel: www.localhost/wordpress
    - Plugins, add
        - WooCommerce  
        - Block Navigation
        - Themify - WooCommerce Product filter
        - Blocksy companion ???
        - XXX Stackable Gutenburg Blocks?

4) Configure WooCommerce...
    - Select theme blocksy
        - extensions: "widgets"
        - useful plugins: "Stackable - Gutenburg Blocks"
    
5) Enter products:
    -  Enter them or Import them.
    - Export product, fill out rest of products in csv file, Import



# Install

Paste this into a terminal window:

    
    wget https://raw.githubusercontent.com/RichardMidnight/wordpress/main/install_wordpress.sh -O install_wordpress.sh
    bash install_wordpress.sh
 
