Paperclip.interpolates :day_partition do |attachment, style|
  attachment.instance_read(:updated_at).strftime("day_%y%m%d")
end

Paperclip.interpolates :month_partition do |attachment, style|
  attachment.instance_read(:updated_at).strftime("month_%y%m")
end

Paperclip.interpolates :timestamp_i do |attachment, style|
  attachment.instance_read(:updated_at).to_i
end

Paperclip.interpolates :fingerprint_10 do |attachment, style|
  attachment.instance_read(:fingerprint)[0, 10]
end