
# Setting up wordpress on a Raspberry pi.
a popular competition is shopify

Summary:

1) Get Linux up and running
    - Flash Raspberry PI OS to an SD card and boot your pi
    - Or install Raspberry Pi OS on a virtual machine
    
2) Install WordPress:  Open a terminal.  Paste this into a terminal window:
    
        wget https://raw.githubusercontent.com/RichardMidnight/wordpress/main/install_wordpress.sh -O install_wordpress.sh
        bash install_wordpress.sh
 
3) Configure Wordpress
    - login to wordpress admin panel: www.localhost/wordpress    
    - set wordpress address: http://raspberrypi/wordpress
    
4) Set your workstation to find raspberry pi:
    - Get your IP address of your wordpress box by typing "ip addr" in a terminal window
    - Edit Hosts file on your workstation by typing "sudo nano /etc/hosts" in a terminal.  Enter IP and computer name

5) Install WooCommerce
    - Plugins, add new, WooCommerce, Install and Activate.
    - "WooCommerce Product Search" by itthinx
    - "Products Compare for WooCommerce" by berocket ??

6) Import media
    - Download media file from above.
    - Media, Library, add new ...

7) Import products
    - Download products csv from above.
        - Click on the file, raw, r-click download ...
    - Products (http://localhost/wordpress/wp-admin/edit.php?post_type=product), import ...
   
    
 8) Testing Themes and plug-ins ...
    - Theme: Th Hot Shop
    - Plugins: TH Advance Product Search
    - Then add TH Product search widgits to WooCommerce sidebar
    - ThemeHunk MegaMenu Plus
    - Unlimited Blocks For Gutenberg
    - Hunk Companion
    
    - updraftplus to back it up?

9) Configure Wordpress theme ...
    - COLORS: Appearance, customize,Total Color and BG options, Global colors, Theme color: #e85f35  ??
    - Threshold Tangerine=ef4a25  Teal=008D97.   Gold=F9A11B

10) Pilot Project wish list (based on Aug 2022 pilot)
    - Advice on Design and Implementation.  (theme, plugins, colors, look and feel...)
    - Advice on hosting, payment, shipping ... etc.  solutions.
    - Improved color scheme, look and feel.  Better theme?
    - Sidebar filtering checkboxes (like rei.com?)
    - Category listing to show graphics as well as text.
    - Product Gallery to show Categories and Products... plesently seperated
    - Quotes on future options:
        -   Integration with MS CRM
        -   Integration with our ERP    
    

References:

Follows these instructions:  https://raspberrytips.com/wordpress-on-raspberry-pi/

And this video to install and configure WooCommerce.  https://www.youtube.com/watch?v=gNnPX2AEk6U

Add the wooCommerce plug in, then go to 13:36 in the video and continue


