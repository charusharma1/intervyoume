json.array! @profiles do |profile|
  json.id profile.id
  json.full_name profile.full_name
  json.email profile.email
  json.job_function profile.job_function
  json.professional_roles profile.professional_roles.each do |role|
    json.id role.id
    json.title role.title
    json.company role.company
  end
end



