## P2P Loans ##

I am planning this to be just an onchain
borrowing and lending interface for already sanctioned loans offchain between two friendly parties.
Already sanctioned loans means that all the legalities,proceedings have been already taken place offchain and a certain level 
of trust already exists.

Generally in lending platforms, overcollaterization is important to delegate the risk of "default" back to the borrower.
For now, I do not plan to include collaterization parameter. ( in future maybe ? )
Currently, the lender will just transfer the assets to the borrower 
and this platform will act as a dashboard for recurring payments.

Params to be associated with a loan :
1) Principal amount
2) Amount paid till now 
3) MaxTime : to repay the loan
4) Borrower address/ENS
5) Lender address/ENS
6) Loan ID





The scenario 
can be like A has agreed to give loan to B in any cryptocurrency at a fixed
interest rate . A will sanction this loan using our interface and B will 
process all the future payments through our interface .

