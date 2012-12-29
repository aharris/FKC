class Contact
  include ActiveModel::Validations

  validates_presence_of :firstName, :lastName

  validates :email,
            :presence => true,
            :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }

  validates :verify,
            :presence => true,
            :numericality => { :equal_to => 4 }

  attr_accessor :id,
                :firstName,
                :lastName,
                :body,
                :address,
                :phone,
                :email,
                :purpose,
                :length,
                :start_date,
                :genre,
                :instruments,
                :reference,
                :verify,
                :attributes

  attr_accessor :brass,
                :piano,
                :synth,
                :guitar,
                :bass_guitar,
                :sub,
                :drums,
                :percussion,
                :strings,
                :mixed,
                :composer



  # INSTRUMENTS = %w[brass piano synth]

  def initialize(attributes = {})
    attributes.each do |key, value|
      self.send("#{key}=", value)
    end

    # self.instruments = []
    # INSTRUMENTS.each do |instrument|
    #   self.instruments += send(instrument) if attributes[instrument]
    # end

    self.body = instruments

    @attributes = attributes
  end

  def read_attribute_for_validation(key)
    @attributes[key]
  end

  def to_key; end

  def save
    if self.valid?
      ContactMailer.contact(
        self.attributes.except :id
      ).deliver
      return true
    end
    false
  end
end