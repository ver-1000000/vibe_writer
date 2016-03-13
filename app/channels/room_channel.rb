# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'room_channel'
  end

  def unsubscribed
  end

  def key_type(data)
    ActionCable.server.broadcast 'room_channel', chara: data['chara'].first, color: data['hue_num'].to_i
  end
end
