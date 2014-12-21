json.array!(@profiles) do |profile|
  json.extract! profile, :id, :phD_education, :MSc_education, :BSc_education, :alumnus, :phD_thesis, :MSc_thesis, :BSc_thesis, :entrance_year, :graduation_year, :homepage, :isAdmin
  json.url profile_url(profile, format: :json)
end
