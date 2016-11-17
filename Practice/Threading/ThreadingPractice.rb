## I don't know very much about threads.

class ThreadingPractice

  def practice1
    thread_one = Thread.new{func1}
    thread_two = Thread.new{func2}
    thread_one.join
    thread_two.join
    puts "Ends at #{Time.now}"
  end

  private
  def func1
    2.times do |t|
      puts "func1 at #{Time.now}"
      sleep(2)
    end
  end

  def func2
    2.times do |t|
      puts "func2 at #{Time.now}"
      sleep(1)
    end
  end
end

## Practice 1 ##
# Basics of threading - create two threads and have then execute simultaneously.
practice = ThreadingPractice.new
practice.practice1
