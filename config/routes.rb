Inbox::Engine.routes.draw do
  get 'user/home'

  get 'inbox/view'

  get 'inbox/sent'

  get 'inbox/show_msg'

end
