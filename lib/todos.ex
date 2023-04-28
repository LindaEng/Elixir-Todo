defmodule Todos do
  # todo - complete later
  def create_todos do
    # number_of_tasks = IO.gets("Enter the number of tasks: ")
    # {number_of_tasks, _q} = Integer.parse(number_of_tasks)
    # number_of_tasks

    #using pipe operator -
    {number_of_tasks, _} = IO.gets("Enter the number of tasks ")
    |> Integer.parse()

    for _ <- 1..number_of_tasks do
      IO.gets("Enter a task: ")
      |> String.trim()
    end
  end

  def temp_todos do
    ["eat", "sleep", "study"]
  end

  def complete_todo(tasks, task) do
    if contains?(tasks, task) do
      # Execute this block
      List.delete(tasks, task)
    else
      # Otherwise execute this block
      :not_found_error
    end
  end


  def add_task(tasks, task) do
    List.insert_at(tasks, -1, task)
  end

  def contains?(tasks, task) do
    Enum.member?(tasks, task)
  end

  def keyword_search(tasks, word) do
    for task <- tasks, String.contains?(task, word) do
      task
    end
  end

  def random_task(tasks) do
    [task] = Enum.take_random(tasks, 1)
    task
  end
end
