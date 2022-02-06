defmodule TakeANumber do

  defp loop do
    receive do
      {status, pid_sender} -> 
        send(pid_sender, "welcome")
        loop
      _ -> loop
    end
  end

  def start do
    pid = spawn(fn -> loop() end)
    pid
  end 

end