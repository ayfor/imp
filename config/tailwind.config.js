const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  mode: 'jit',
  content: [
    './public/*.{html,erb}',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['acumin-pro', 'Lato', ...defaultTheme.fontFamily.sans]
      },
      colors: {
        leftovers: {
          yellow: '#EAC435',
          blue: '#345995',
          pink: '#E40066',
          green: '#03CEA4',
          red: '#C32F27',
          orange: '#FB4D3D'
        }
      }
    }
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography')
  ]
}
