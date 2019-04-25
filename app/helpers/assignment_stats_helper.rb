module AssignmentStatsHelper
  def mean_data(assignment_stats)
    assignment_stats.rounds.map(&:means)
  end

  def median_data(assignment_stats)
    assignment_stats.rounds.map(&:medians)
  end

  def criteria_names(assignment_stats)
    rounds = []
    assignment_stats.rounds.each do |r|
      rounds << (1..r.number_of_criteria).map {|c| "Criterion #{c}" }
    end
    rounds
  end

  def round_names(assignment_stats)
    (1..assignment_stats.number_of_rounds).map {|r| "Round #{r}" }
  end
end
