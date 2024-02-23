require 'prob2'

RSpec.describe TodoList do
  describe "#add" do
    it "adds a todo to the list" do
      todo_list = TodoList.new
      todo = "Finish this assignment"
      todo_list.add(todo)
      expect(todo_list.todos).to include(todo)
    end
  end

  describe "#remove" do
    it "removes a todo from the list" do
      todo_list = TodoList.new
      todo = "Finish this assignment"
      todo_list.add(todo)
      todo_list.remove(todo)
      expect(todo_list.todos).not_to include(todo)
    end
  end

  describe "#todos" do
    it "returns all todos" do
      todo_list = TodoList.new
      todos = ["Finish this assignment", "Play some game", "Go to sleep"]
      todos.each { |todo| todo_list.add(todo) }
      expect(todo_list.todos).to eq(todos)
    end
  end
end
