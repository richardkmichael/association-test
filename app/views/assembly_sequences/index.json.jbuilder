json.array!(@assembly_sequences) do |assembly_sequence|
  json.extract! assembly_sequence, :id, :car_id, :part_id, :sequence
  json.url assembly_sequence_url(assembly_sequence, format: :json)
end
