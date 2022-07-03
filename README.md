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

3) Install WooCommerce and extras...
    - login to wordpress admin panel: www.localhost/wordpress
    - Install WooCommerce plug-in:  Plugins, add, woocommerce, install, activate.
    - NO Install "WooCommerce Product Search".  Need to buy it.  - maybe NOT
    - Install "filter everything woocommerce" plugin:  Plugins, add, filter everything woocommerce, install activate.

6) Configure WooCommerce...
    - Select a theme (boutique?)
    - Add a product or two. 
    
8) Export product, fill out rest of products in csv file, Import
9)
11) 


# Install

Paste this into a terminal window:

    
    wget https://raw.githubusercontent.com/RichardMidnight/wordpress/main/install_wordpress.sh -O install_wordpress.sh
    bash install_wordpress.sh
 
