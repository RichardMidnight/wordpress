# WordPress demo

    Notes regarding this demo
    1) It is a demonstration of Wordpress capabilities only.
    2) It is not complete or even correct.
    3) The Theme and colors were seleted because then are "good enough" to demonstrate capabilities.
    4) Enough data was entered to give a flavor of how it can work. It is not complete or even all correct.
    5) This entire demo is using free software except for the Products Filter. 
    6) There are many upgrades you can pay for.



# Notes about setting up wordpress.
popular competition is shopify

Follows these instructions:  https://raspberrytips.com/wordpress-on-raspberry-pi/

And this video to install and configure WooCommerce.  https://www.youtube.com/watch?v=gNnPX2AEk6U
Add the wooCommerce plug in, then go to 13:36 in the video and continue

Summary:

1) Get Linux up and running
    - Flash Raspberry PI OS to an SD card and boot your pi
    - Or install it on a virtual machine
    
2) Install WordPress by running the install_wordpress.sh script (below).
    
    Open a terminal.
    Paste this into a terminal window:
    
        wget https://raw.githubusercontent.com/RichardMidnight/wordpress/main/install_wordpress.sh -O install_wordpress.sh
        bash install_wordpress.sh
 
 
3) Install WooCommerce
    - login to wordpress admin panel: www.localhost/wordpress
    - Plugins, add new, WooCommerce, Install and Activate.
    - "WooCommerce Product Search" by itthinx
    - "Products Compare for WooCommerce" by berocket
  

4) Import media
    - Download media file from above.
    - Media, Library, add new ...


5) Import products
    - Download products csv from above.
        - Click on the file, raw, r-click download ...
    - Products (http://localhost/wordpress/wp-admin/edit.php?post_type=product), import ...
    
    
    
 6) Testing Themes and plug-ins and extensions...
    - Theme: Th Hot Shop
    - Plugins: TH Advance Product Search
    - Then add TH Product search widgits to WooCommerce sidebar
    - ThemeHunk MegaMenu Plus
    - Unlimited Blocks For Gutenberg
    - Hunk Companion
    
    - updraftplus to back it up

7) Configure WooCommerce...
    - COLORS: Appearance, customize,Total Color and BG options, Global colors, Theme color: #e85f35  ??
    - Threshold Tangerine=ef4a25  Teal=008D97.   Gold=F9A11B






