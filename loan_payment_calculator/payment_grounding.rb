
def payment_grounding(payment_amount)
  if payment_amount <= 100 == true
    if payment_amount <= 30 == true
      if payment_amount <= 10 == true
        if payment_amount <= 5 == true
          if payment_amount <= 0 == true

          elsif 0 < payment_amount <= 5 == true

          end
        elsif 5 < payment_amount <= 10 == true

        end
      elsif 10 < payment_amount <= 30 == true
        if 10 < payment_amount <= 20 == true

        elsif 20 < payment_amount <= 30 == true

        end
      end
    elsif 30 < payment_amount <= 100 == true
      if 30 < payment_amount <= 50 == true
        if 30 < payment_amount <= 40 == true

        elsif 40 < payment_amount <= 50 == true

        end
      elsif 50 < payment_amount <= 100 == true
        if 50 < payment_amount <= 75 == true

        elsif 75 < payment_amount <= 100 == true

        end
      end
    end
  elsif 100 < payment_amount <= 1000 == true
    if 100 < payment_amount <= 400 == true
      if 100 < payment_amount <= 200 == true
        if 100 < payment_amount <= 150 == true

        elsif 150 < payment_amount <= 200 == true

        end
      elsif 200 < payment_amount <= 400 == true
        if 200 < payment_amount <= 300 == true

        elsif 300 < payment_amount <= 400 == true

        end
      end
    elsif 400 < payment_amount <= 1000 == true
      if 400 < payment_amount <= 750 == true
        if 400 < payment_amount <= 500 == true

        elsif 500 < payment_amount <= 750 == true

        end
      elsif 750 < payment_amount <= 1000 == true

      end
    end
  elsif 1000 < payment_amount == true
    if 1000 < payment_amount <= 2500 == true
      if 1000 < payment_amount <= 1750 == true
        if 1000 < payment_amount <= 1500 == true
          if 1000 < payment_amount <= 1250 == true

          elsif 1250 < payment_amount <= 1500 == true

          end
        end
      elsif 1750 < payment_amount <= 2500 == true
        if 1750 < payment_amount <= 2000 == true

        elsif 2000 < payment_amount <= 2500 == true

        end
      end
    elsif 2500 < payment_amount == true
      if 2500 < payment_amount <= 4000 == true
        if 2500 < payment_amount <= 3000 == true

        elsif 3000 < payment_amount <= 4000 == true

        end
      elsif 4000 < payment_amount == true
        if 4000 < payment_amount <= 5000 == true

        elsif 5000 < payment_amount == true

        end
      end
    end
  end
end

payment_grounding(1000)
