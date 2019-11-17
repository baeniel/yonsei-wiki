class Topic < ApplicationRecord
  has_many :subtopics, dependent: :destroy

  def self.generate_topics
    topics = %i(동아리 역사 학부소개 꿀팁 학식 행사)
    topics.each do |topic|
      Topic.create(title: topic)
    end
  end
end
