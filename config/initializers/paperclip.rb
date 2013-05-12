Paperclip.interpolates :day_partition do |attachment, style|
  attachment.instance_read(:updated_at).strftime("day_%y%m%d")
end