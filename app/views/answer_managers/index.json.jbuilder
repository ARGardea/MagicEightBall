json.array!(@answer_managers) do |answer_manager|
  json.extract! answer_manager, :id, :DefaultAnswers, :CustomAnswers, :AnswerTracker
  json.url answer_manager_url(answer_manager, format: :json)
end
