require_relative '../assignees_list'

RSpec.describe 'Calling the assignees_list method' do
  def expect_result(expected_result)
    expect(assignees_list(assignees)).to eql expected_result
  end

  context 'when getting a list of Sections' do
    context 'with a single Section' do
      let(:assignees) { Array('Section A') }

      it 'prints the Section name' do
        expect_result('Section A')
      end
    end

    context 'with two Sections' do
      # let(:assignees) { Array(['Section A', 'Section B']) }

      # it 'prints "Sections X and Y"' do
      #   expect_result('Sections A and B')
      # end
    end

    context 'with three Sections' do
      # let(:assignees) { Array(['Section A', 'Section B', 'Section C']) }

      # it 'prints "Sections X, Y, and Z"' do
      #   expect_result('Sections A, B, and C')
      # end
    end

    context 'with three Sections out of order' do
      # let(:assignees) { Array(['Section B', 'Section A', 'Section C']) }

      # it 'prints "Sections X, Y, and Z" in order' do
      #   expect_result('Sections A, B, and C')
      # end
    end

    context 'with four Sections' do
      # let(:assignees) { Array(['Section A', 'Section B', 'Section C', 'Section D']) }

      # it 'prints "Sections W, X, Y, and Z"' do
      #   expect_result('Sections A, B, C, and D')
      # end
    end
  end

  # context 'when getting a list of Groups' do
  #   context 'with a single Group' do
  #     let(:assignees) { Array('Group A') }

  #     it 'prints the Group name' do
  #       expect_result(assignees.join)
  #     end
  #   end

  #   context 'with two Groups' do
  #     let(:assignees) { Array(['Group A', 'Group B']) }

  #     it 'prints "Groups X and Y"' do
  #       expect_result('Groups A and B')
  #     end
  #   end

  #   context 'with three Groups' do
  #     let(:assignees) { Array(['Group A', 'Group B', 'Group ZZ']) }

  #     it 'prints "Groups A, B, and ZZ"' do
  #       expect_result('Groups A, B, and ZZ')
  #     end
  #   end

  #   context 'with four Groups' do
  #     let(:assignees) { Array(['Group A', 'Group B', 'Group ZZ', 'Group XY']) }

  #     it 'prints "Groups A, B, ZZ, and XY"' do
  #       expect_result('Groups A, B, XY, and ZZ')
  #     end
  #   end

  #   context 'with four Groups out of order' do
  #     let(:assignees) { Array(['Group XY', 'Group A', 'Group ZZ', 'Group B']) }

  #     it 'prints "Groups A, B, ZZ, and XY" in order' do
  #       expect_result('Groups A, B, XY, and ZZ')
  #     end
  #   end
  # end

  # context 'when getting a list of Students' do
  #   context 'with a single Student' do
  #     let(:assignees) { Array('Student A') }

  #     it 'prints the Student name' do
  #       expect_result(assignees.join)
  #     end
  #   end

  #   context 'with two Students' do
  #     let(:assignees) { Array(['Student 1', 'Student 2']) }

  #     it 'prints "Students X and Y"' do
  #       expect_result('Students 1 and 2')
  #     end
  #   end

  #   context 'with two Students out of order' do
  #     let(:assignees) { Array(['Student 2', 'Student 1']) }

  #     it 'prints "Students X and Y" in order' do
  #       expect_result('Students 1 and 2')
  #     end
  #   end

  #   context 'with three Students' do
  #     let(:assignees) { Array(['Student 1', 'Student 2', 'Student 3']) }

  #     it 'prints "Students X, Y, and Z"' do
  #       expect_result('Students 1, 2, and 3')
  #     end
  #   end

  #   context 'with four Students' do
  #     let(:assignees) { Array(['Student 1', 'Student 2', 'Student 3', 'Student 4']) }

  #     it 'prints "Students 1, 2, 3, and 4"' do
  #       expect_result('Students 1, 2, 3, and 4')
  #     end
  #   end
  # end

  # context 'when getting a mixture of Sections and Students' do
  #   context 'with a single Section and a single Student' do
  #     let(:assignees) { Array(['Section A', 'Student 1']) }

  #     it 'prints the Section name and Student name' do
  #       expect_result('Section A and Student 1')
  #     end
  #   end

  #   context 'with a single Section and a single Student out of order' do
  #     let(:assignees) { Array(['Student 1', 'Section A']) }

  #     it 'prints the Section name and Student name in order' do
  #       expect_result('Section A and Student 1')
  #     end
  #   end

  #   context 'with two Sections and one Student' do
  #     let(:assignees) { Array(['Section A', 'Section B', 'Student 1']) }

  #     it 'prints all' do
  #       expect_result('Sections A and B and Student 1')
  #     end
  #   end

  #   context 'with two Students and one Section' do
  #     let(:assignees) { Array(['Student 1', 'Student 2', 'Section C']) }

  #     it 'prints all' do
  #       expect_result('Section C and Students 1 and 2')
  #     end
  #   end

  #   context 'with two Students and two Sections' do
  #     let(:assignees) { Array(['Student 1', 'Student 2', 'Section C', 'Section A']) }

  #     it 'prints all' do
  #       expect_result('Sections A and C and Students 1 and 2')
  #     end
  #   end

  #   context 'with three Students and one Section' do
  #     let(:assignees) { Array(['Student 1', 'Student 2', 'Section C', 'Student 4']) }

  #     it 'prints all' do
  #       expect_result('Section C and Students 1, 2, and 4')
  #     end
  #   end

  #   context 'with three Sections and one Student' do
  #     let(:assignees) { Array(['Section ZZ', 'Section A', 'Section C', 'Student 4']) }

  #     it 'prints all' do
  #       expect_result('Sections A, C, and ZZ and Student 4')
  #     end
  #   end

  #   context 'with three Sections and two Students' do
  #     let(:assignees) { Array(['Section ZZ', 'Section A', 'Section C', 'Student 4', 'Student 3']) }

  #     it 'prints all' do
  #       expect_result('Sections A, C, and ZZ and Students 3 and 4')
  #     end
  #   end

  #   context 'with three Sections and three Students' do
  #     let(:assignees) { Array(['Section ZZ', 'Section A', 'Section C', 'Student 4', 'Student 3', 'Student 50']) }

  #     it 'prints all' do
  #       expect_result('Sections A, C, and ZZ and Students 3, 4, and 50')
  #     end
  #   end
  # end

  # context 'when getting a mixture of Students and Groups' do
  #   context 'with a single Group and a single Student' do
  #     let(:assignees) { Array(['Group A', 'Student 1']) }

  #     it 'prints the Group name and Student name' do
  #       expect_result('Group A and Student 1')
  #     end
  #   end

  #   context 'with a single Group and a single Student out of order' do
  #     let(:assignees) { Array(['Student 1', 'Group A']) }

  #     it 'prints the Group name and Student name in order' do
  #       expect_result('Group A and Student 1')
  #     end
  #   end

  #   context 'with two Groups and one Student' do
  #     let(:assignees) { Array(['Group A', 'Group B', 'Student 1']) }

  #     it 'prints all' do
  #       expect_result('Groups A and B and Student 1')
  #     end
  #   end

  #   context 'with two Students and one Group' do
  #     let(:assignees) { Array(['Student 1', 'Student 2', 'Group C']) }

  #     it 'prints all' do
  #       expect_result('Group C and Students 1 and 2')
  #     end
  #   end

  #   context 'with two Students and two Groups' do
  #     let(:assignees) { Array(['Student 1', 'Student 2', 'Group C', 'Group A']) }

  #     it 'prints all' do
  #       expect_result('Groups A and C and Students 1 and 2')
  #     end
  #   end

  #   context 'with three Students and one Group' do
  #     let(:assignees) { Array(['Student 1', 'Student 2', 'Group C', 'Student 4']) }

  #     it 'prints all' do
  #       expect_result('Group C and Students 1, 2, and 4')
  #     end
  #   end

  #   context 'with three Groups and one Student' do
  #     let(:assignees) { Array(['Group ZZ', 'Group A', 'Group C', 'Student 4']) }

  #     it 'prints all' do
  #       expect_result('Groups A, C, and ZZ and Student 4')
  #     end
  #   end

  #   context 'with three Groups and two Students' do
  #     let(:assignees) { Array(['Group ZZ', 'Group A', 'Group C', 'Student 4', 'Student 3']) }

  #     it 'prints all' do
  #       expect_result('Groups A, C, and ZZ and Students 3 and 4')
  #     end
  #   end

  #   context 'with three Groups and three Students' do
  #     let(:assignees) { Array(['Group ZZ', 'Group A', 'Group C', 'Student 4', 'Student 3', 'Student 50']) }

  #     it 'prints all' do
  #       expect_result('Groups A, C, and ZZ and Students 3, 4, and 50')
  #     end
  #   end
  # end

  # context 'when getting a mixture of Groups and Sections' do
  #   context 'with a single Group and a single Section' do
  #     let(:assignees) { Array(['Group A', 'Section 1']) }

  #     it 'prints the Group name and Section name' do
  #       expect_result('Group A and Section 1')
  #     end
  #   end

  #   context 'with a single Group and a single Section out of order' do
  #     let(:assignees) { Array(['Section 1', 'Group A']) }

  #     it 'prints the Group name and Section name in order' do
  #       expect_result('Group A and Section 1')
  #     end
  #   end

  #   context 'with two Groups and one Section' do
  #     let(:assignees) { Array(['Group A', 'Group B', 'Section 1']) }

  #     it 'prints all' do
  #       expect_result('Groups A and B and Section 1')
  #     end
  #   end

  #   context 'with two Sections and one Group' do
  #     let(:assignees) { Array(['Section 1', 'Section 2', 'Group C']) }

  #     it 'prints all' do
  #       expect_result('Group C and Sections 1 and 2')
  #     end
  #   end

  #   context 'with two Sections and two Groups' do
  #     let(:assignees) { Array(['Section 1', 'Section 2', 'Group C', 'Group A']) }

  #     it 'prints all' do
  #       expect_result('Groups A and C and Sections 1 and 2')
  #     end
  #   end

  #   context 'with three Sections and one Group' do
  #     let(:assignees) { Array(['Section 1', 'Section 2', 'Group C', 'Section 4']) }

  #     it 'prints all' do
  #       expect_result('Group C and Sections 1, 2, and 4')
  #     end
  #   end

  #   context 'with three Groups and one Section' do
  #     let(:assignees) { Array(['Group ZZ', 'Group A', 'Group C', 'Section 4']) }

  #     it 'prints all' do
  #       expect_result('Groups A, C, and ZZ and Section 4')
  #     end
  #   end

  #   context 'with three Groups and two Sections' do
  #     let(:assignees) { Array(['Group ZZ', 'Group A', 'Group C', 'Section 4', 'Section 3']) }

  #     it 'prints all' do
  #       expect_result('Groups A, C, and ZZ and Sections 3 and 4')
  #     end
  #   end

  #   context 'with three Groups and three Sections' do
  #     let(:assignees) { Array(['Group ZZ', 'Group A', 'Group C', 'Section 4', 'Section 3', 'Section 50']) }

  #     it 'prints all' do
  #       expect_result('Groups A, C, and ZZ and Sections 3, 4, and 50')
  #     end
  #   end
  # end

  # context 'when getting a mixture of Groups, Sections, and Students' do
  #   context 'with a single Group and a single Section and a single Student' do
  #     let(:assignees) { Array(['Group A', 'Section 1', 'Student Y']) }

  #     it 'prints the Group name and Section name and Student name' do
  #       expect_result('Group A, Section 1, and Student Y')
  #     end
  #   end

  #   context 'with a single Group and a single Section out of order' do
  #     let(:assignees) { Array(['Section 1', 'Student 1', 'Group A']) }

  #     it 'prints the Group name and Section name and Student name' do
  #       expect_result('Group A, Section 1, and Student 1')
  #     end
  #   end

  #   context 'with two Groups and one Section and one Student' do
  #     let(:assignees) { Array(['Group A', 'Group B', 'Student 22', 'Section 1']) }

  #     it 'prints all' do
  #       expect_result('Groups A and B, Section 1, and Student 22')
  #     end
  #   end

  #   context 'with two Sections and one Group and one Student' do
  #     let(:assignees) { Array(['Section 1', 'Section 2', 'Group C', 'Student 4']) }

  #     it 'prints all' do
  #       expect_result('Group C, Sections 1 and 2, and Student 4')
  #     end
  #   end

  #   context 'with two Sections and two Groups and two Students' do
  #     let(:assignees) { Array(['Student 2', 'Student 1', 'Section 1', 'Section 2', 'Group C', 'Group A']) }

  #     it 'prints all' do
  #       expect_result('Groups A and C, Sections 1 and 2, and Students 1 and 2')
  #     end
  #   end

  #   context 'with three Groups and three Sections and three Students' do
  #     let(:assignees) { Array(['Group ZZ', 'Group A', 'Group C', 'Section 4', 'Section 3', 'Section 50', 'Student 3', 'Student 4', 'Student 6']) }

  #     it 'prints all' do
  #       expect_result('Groups A, C, and ZZ, Sections 3, 4, and 50, and Students 3, 4, and 6')
  #     end
  #   end
  # end
end