require "rspec"

require_relative "list"
require_relative "task"

describe List do

  let(:description) { "Walk the giraffe" }
  let(:tasks)        { [ Task.new(description) ] }
  let(:title)       { "Zookeeper Chores" }
  let(:list)        { List.new(title, tasks)}

  describe "#initialize" do
    it "requires at least one argument" do
      expect { List.new }.to raise_error(ArgumentError)
    end

    it "sets a title" do
      List.new(title, tasks).title.should eq "Zookeeper Chores"
    end

    it "creates an array of tasks" do
      List.new(title, tasks).tasks.should be_instance_of Array
    end
  end

  describe "#add_task" do
    context "With input as a Task object" do
      it "increases the number of tasks by 1" do
        num_tasks = list.tasks.length
        list.add_task(Task.new("Feed the monkeys"))
        list.tasks.length.should eq(num_tasks + 1)
      end

      it "should put the new task at the bottom of the list" do
        new_task = Task.new("Feed the monkeys")
        list.add_task(new_task)
        list.tasks.last.should eq new_task
      end
    end

    context "With other input" do
      it "should raise ArgumentError" do
        expect { list.add_task("Say hello") }.to raise_error(ArgumentError)
      end
    end
  end

  describe "#complete_task" do
    context "with valid input" do
      it "marks the task at the given index as complete" do
        list.complete_task(0)
        list.tasks.first.complete?.should be_true
      end

      it "returns true" do
        list.complete_task(0).should be_true
      end
    end

    context "with invalid input" do
      it "should return false for out of bounds index" do
        list.complete_task(1).should be_false
      end
    end
  end

  describe "#delete_task" do
    context "with valid index" do
      it "should remove the task from the list of tasks" do
        task = list.tasks[0]
        list.delete_task(0)
        list.tasks[0].should be_nil
      end

      it "should reduce the number of tasks by 1" do
        list.delete_task(0)
        list.tasks.length.should eq 0
      end

      it "should return the deleted task" do
        list.delete_task(0).should be_an_instance_of Task
      end
    end

    context "with invalid index" do
      it "should return nil" do
        list.delete_task(1).should be_nil
      end
    end
  end

  describe "#completed_tasks" do
    it "should give a list of only the completed tasks" do
      list.complete_task(0)
      list.add_task(Task.new("Feed the monkeys"))
      list.completed_tasks.length.should eq 1
    end
  end

  describe "#incomplete_tasks" do
    it "should give a list of only the incomplete tasks" do
      list.add_task(Task.new("Feed the monkeys"))
      list.add_task(Task.new("Pet the snake"))
      list.complete_task(2)
      list.incomplete_tasks.length.should eq 2
    end
  end

end
