Puppet::Type.newtype(:wiki_page ) do
  desc 'wiki_page allows for puppet to create and update pages in various wikis, so as to automate aspects of documentation'

  ensurable

  newparam(:name, :namevar => true ) do
    desc 'The name is pretty much only used to allow referencing from other parts of the manifest.'
  end
  
  newparam(:username ) do
    desc 'The username used to manage the wiki content with.'
  end
  
  newparam(:password ) do
    desc 'The password used to manage the wiki content.'
  end
  
  newproperty(:page_title ) do
    desc 'The title of the page to manage.'
  end
  
  newproperty(:space_key ) do
    desc 'The space key that the page belongs to, if the wiki uses it.'
  end
  
  newproperty(:content) do
    desc 'The content for the managed page, as a string. Can specify content or source but not both.'
  end
  
  newparam(:source) do
    desc 'The content for the managed page, as a file path. Can specify content or source but not both.'
  end
  
end