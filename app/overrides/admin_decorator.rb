=begin
Deface::Override.new(:virtual_path => "spree/layouts/admin",
                     :name => "add_related_products_tab",
                     :insert_after => "[data-hook='admin_tabs']",
                     :partial => "admin/promoted_items/tab",
                     :disabled => false)

=end
=begin
Deface::Override.new(:virtual_path => "spree/admin/configurations/index",
                     :name => "add_configuration_line",
                     :insert_bottom => "[data-hook='admin_configurations_menu']",
                     #:text => "Yes",
                     :partial => "admin/promoted_items/tab",
                     :disabled => false) 
                     
=end               
=begin                     
Deface::Override.new(:virtual_path => "layouts/abc",
                     :name => "add_related_products_tab",
                     :insert_bottom => "[data-hook='a111']",
                     #:partial => "admin/promoted_items/tab",
                     :template => "spree/layouts/spree_application",
                     :disabled => false)                   

=end
#spree/admin/shared/_tabs




#admin_tabs


#=begin

Deface::Override.new(:virtual_path => "spree/admin/shared/_tabs",
                     :name => "add_related_products_tab",
                     :insert_bottom => "[data-hook='aaa']",
                     :partial => "admin/promoted_items/tab",
                     :disabled => false)

#=end