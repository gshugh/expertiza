include InstructorInterfaceHelperSpec

describe 'Integration tests for viewing grades' do
  before(:each) do
    assignment_setup
  end

  context 'When no assignments have a rubric' do
    it 'displays the average of all assignment grades'
    # login_as("instructor6")
    # visit '/grades/view?id=1'
    # expect(page).to have_content('Summary report')
    #
    it 'does not display the rubric statistics for a particular assignment'
    it 'displays the distribution of all assignment grades'
  end

  describe 'When assignment(s) have rubrics' do
    it 'displays the average of all assignment grades'
    it 'displays the distribution of all assignment grades'
    context 'with only one assignment (of many) having a rubric' do
      context 'with only one round' do
        it 'displays the rubric statistics for that assignment'
        it 'selects the "Analyze" tab'
        it 'does not allow selection of the "Compare" tab'
        it 'displays the mean criteria scores on the graph'
        it 'displays "Round 1"'
        it 'does not allow selection of a different round'
        it 'selects all rubric criteria'
        it 'displays "Mean" in the stat selection menu'
        describe 'reactions to rubric statistics' do
          context 'when median is selected' do
            it 'displays "Round 1"'
            it 'displays the median criteria scores on the graph'
            it 'retains selection of all criteria'
            it 'displays "Median" in the stat selection menu'
          end
          context 'when one criterion is deselected' do
            it 'removes the deselected criterion score from the graph'
          end
          context 'when mean is selected' do
            it 'retains the previously selected criteria'
            it 'displays the selected means on the graph'
          end
          context 'when more than one criterion is deselected' do
            it 'removes the deselected criteria from the graph'
          end
          context 'when all criteria are deselected' do
            it 'removes all mean criteria scores from the graph'
          end
          context 'when median is selected' do
            it 'retains a blank graph'
          end
        end
      end
      context 'with more than one round'
    end
    context 'when more than one assignment has rubrics' do
      describe 'two assignments with rubrics' do
        context 'when the criteria are not compatible'
        context 'when the criteria are compatible'
      end
    end
  end

end
