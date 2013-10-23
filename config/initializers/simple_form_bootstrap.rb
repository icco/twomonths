SimpleForm.setup do |config|

  config.wrappers :bootstrap, tag: :div, class: "form-group", error_class: "has-error" do |b|

    # Form extensions
    b.use :html5
    b.use :placeholder

    # Form components
    b.use :label
    b.wrapper tag: :div do |ba|
      ba.use :input
      ba.use :hint,  wrap_with: { tag: :p, class: "help-block" }
      ba.use :error, wrap_with: { tag: :span, class: "help-block text-danger" }
    end
  end
end
