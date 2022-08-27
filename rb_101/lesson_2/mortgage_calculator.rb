# Loan amount
# APR
# Loan duration 
# monthly interest rate
# loan duration in months
# monthly payment 

def prompt(message)
  Kernel.puts("=> #{message}")
end 

loop do

  prompt("Welcome to Mortgage Rate Calculator! Please enter your name: ")
  name = gets().chomp()


  prompt(" Please enter the loan amount:")
  loan_amount = ''
  loop do 
    loan_amount = Kernel.gets().chomp()
    if loan_amount.empty?() || loan_amount.to_f() < 0
      prompt("Please enter a positive number")
    else 
      break
    end 
  end 


  prompt("Please enter your Interest Rate (2 for 2%, 3 for 3%, etc.): ")
  interest = ' '
  loop do
    interest = Kernel.gets().chomp()
    if interest.empty?() || interest.to_f < 0
      prompt("Please enter a positive number.")
    else
      break
    end
  end


  prompt(" #{name}, how many years is your loan? ")
  loan_length = ''
  loop do 
    loan_length = Kernel.gets().chomp()
    if loan_length.empty?() || loan_length.to_i() < 0
      prompt("Please enter a valid number")
    else
      break
    end 
  end 

  annual_interest = interest.to_f() / 100
  monthly_interest = annual_interest / 12
  months = loan_length.to_i() * 12

  monthly_payment = loan_amount.to_f() *
                    (monthly_interest / 
                    (1 - (1 + monthly_interest )**(-months)))

  prompt("Your monnthly payment is $#{format('%.2f',monthly_payment)}")

  prompt("Another calcualtion?")
  answer = Kernel.gets().chomp()

  break unless answer.downcase().start_with?('y')
end 

prompt("Thank you for using the Mortgage Calculator")