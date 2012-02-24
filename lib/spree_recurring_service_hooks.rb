class SpreeRecurringServiceHooks  < Spree::ThemeSupport::HookListener
insert_after :admin_tabs do
%(<%= tab(:promoted_items) %>)
end
end
