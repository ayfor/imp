module ApplicationHelper
  @@registered_button_styles = {
    primary: 'rounded-md bg-indigo-500 px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-indigo-400 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-500',
    rounded: 'rounded-full bg-indigo-600 px-3.5 py-2 text-sm font-semibold text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600',
    white: 'rounded-md bg-white px-3 py-2 text-sm font-semibold text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 hover:bg-gray-50',
    wide: 'inline-flex w-full justify-center rounded-md bg-indigo-600 px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600'
  }

  def button_style(obj)
    style = ''
    if obj.key?(:style)
      style = @@registered_button_styles[obj[:style]]
    else
      style = @@registered_button_styles[obj[:primary]]
    end

    if obj.key?(:is_link) && obj[:is_link]
      style << ' inline-flex items-center justify-center'
    end
    style
  end

  def turbo_modal_id
    'turboModal'
  end
end
