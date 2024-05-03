module ApplicationHelper
  @@registered_button_styles = {
    primary: 'rounded-md bg-leftovers-blue px-3 py-2 text-sm font-medium text-white shadow-sm hover:bg-leftovers-blue/80 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-leftovers-blue',
    rounded: 'rounded-full bg-leftovers-blue px-3.5 py-2 text-sm font-medium text-white shadow-sm hover:bg-leftovers-blue/80 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-leftovers-blue',
    white: 'rounded-md bg-white px-3 py-2 text-sm font-medium text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 hover:bg-gray-50',
    wide: 'inline-flex w-full justify-center rounded-md bg-indigo-600 px-3 py-2 text-sm font-medium text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600'
  }

  def button_style(obj)
    style = ''
    style = if obj.key?(:style)
              @@registered_button_styles[obj[:style]]
            else
              @@registered_button_styles[obj[:primary]]
            end

    style << ' inline-flex items-center justify-center' if obj.key?(:is_link) && obj[:is_link]
    style
  end

  def turbo_modal_id
    'turboModal'
  end
end
