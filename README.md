# WordPress

Notes about setting up wordpress on Raspberry Pi

Follows these instructions:  https://raspberrytips.com/wordpress-on-raspberry-pi/

And this video to install and configure WooCommerce.  https://www.youtube.com/watch?v=gNnPX2AEk6U
Add the wooCommerce plug in, then go to 13:36 in the video and continue

Summary:
1) Get Linux up and running
    - Flash Raspberry PI OS to an SD card and boot your pi
    - Or install it on a virtual machine
    
2) Install WordPress by running the install_wordpress.sh script (below).
    - Open a terminal.  Paste in the install from below.

3) Install WooCommerce
    - login to wordpress admin panel: www.localhost/wordpress
    - Plugins, add new, WooCommerce, Install and Activate.
    
4) Import graphics into
    - http://localhost/wordpress/wp-content/uploads/2022/07/VDTT4_600p.jpg


5) Enter products:
    - Enter them or Import them.
    - Export product, fill out rest of products in csv file, Import
    - import file from above  
    
    
 now... still figuring it out...
 
        - WooCommerce  
        - Block Navigation
        - Themify - WooCommerce Product filter
        - Blocksy companion ???
        - updraftplus to back it up

4) Configure WooCommerce...
    - Select theme blocksy
        - extensions: "widgets"
        - useful plugins: "Stackable - Gutenburg Blocks"



    
    


# Install Wordpress on Linux

Paste this into a terminal window:

    
    wget https://raw.githubusercontent.com/RichardMidnight/wordpress/main/install_wordpress.sh -O install_wordpress.sh
    bash install_wordpress.sh
 
