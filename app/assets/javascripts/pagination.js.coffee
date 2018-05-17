if $('#with-button').size() > 0
    $('.pagination').hide()
    loading_submits = false

    $('#load_more_submits').show().click ->
      unless loading_submits
        loading_submits = true
        more_submits_url = $('.pagination .next_page a').attr('href')
        $this = $(this)
        $this.html('<img src="/assets/ajax-loader.gif" alt="Loading..." title="Loading..." />').addClass('disabled')
        $.getScript more_submits_url, ->
          $this.text('More submits').removeClass('disabled') if $this
          loading_submits = false
      return