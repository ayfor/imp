module ApplicationHelper
  @@registered_button_styles = {
    primary: 'rounded-md bg-leftovers-blue px-3 py-2 text-sm font-medium text-white shadow-sm hover:bg-leftovers-blue/80 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-leftovers-blue',
    green: 'rounded-md bg-leftovers-green px-3 py-2 text-sm font-medium text-white shadow-sm hover:bg-leftovers-green/80 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-leftovers-green',
    red: 'rounded-md bg-leftovers-red px-3 py-2 text-sm font-medium text-white shadow-sm hover:bg-leftovers-red/80 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-leftovers-red',
    orange: 'rounded-md bg-leftovers-orange px-3 py-2 text-sm font-medium text-white shadow-sm hover:bg-leftovers-orange/80 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-leftovers-orange',
    alternate: 'rounded-md bg-white px-3 py-2 text-sm font-medium text-leftovers-blue border-2 border-leftovers-blue shadow-sm hover:text-white hover:bg-leftovers-blue/80 hover:border-leftovers-blue/70 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-leftovers-blue',
    alternate_green: 'rounded-md bg-white px-3 py-2 text-sm font-medium text-leftovers-green border-2 border-leftovers-green shadow-sm hover:text-white hover:bg-leftovers-green/80 hover:border-leftovers-green/70 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-leftovers-blue',
    alternate_red: 'rounded-md bg-white px-3 py-2 text-sm font-medium text-leftovers-red border-2 border-leftovers-red shadow-sm hover:text-white hover:bg-leftovers-red/80 hover:border-leftovers-red/70 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-leftovers-blue',
    alternate_orange: 'rounded-md bg-white px-3 py-2 text-sm font-medium text-leftovers-orange border-2 border-leftovers-orange shadow-sm hover:text-white hover:bg-leftovers-orange/80 hover:border-leftovers-orange/70 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-leftovers-blue',
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

    style << ' mx-1 cursor-pointer'

    style
  end

  def turbo_modal_id
    'turboModal'
  end
end
