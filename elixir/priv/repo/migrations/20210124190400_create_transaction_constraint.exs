
defmodule Homework.Repo.Migrations.CreateTransactionsCreditDebitConstaint do
  use Ecto.Migration

  def change do
    create constraint(:transactions, :credit_or_debit, check: "(( credit::int) + (debit::int) = 1)")
  end
end

