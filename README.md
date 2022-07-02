# WordPress

Notes about setting up wordpress on Raspberry Pi

Follows these instructions:  https://raspberrytips.com/wordpress-on-raspberry-pi/

1) Flash Raspberry PI OS to an SD card and boot your pi
2) Run the install_wordpress.sh script (below) to install wordpress and needed components.
3) Install WooCommerce plug-in.  Plugins, add, woocommerce, install, activate.
4) Select a theme (boutique?)
5) Add a product or two. 
6) Export product, fill out rest of products in csv file, Import
7) Install "WooCommerce Product Search".  Need to buy it.
8) or maybe "filter everything woocommerce"
9) Choose a theme (best shop)


# Install

Paste or type this into a terminal window:

    
    wget https://raw.githubusercontent.com/RichardMidnight/wordpress/main/install_wordpress.sh -O install_wordpress.sh
    bash install_wordpress.sh
 
