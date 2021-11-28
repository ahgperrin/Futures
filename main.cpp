#include <iostream>
#include "boost/date_time.hpp"
#include "Futures.h"

using namespace boost::posix_time;
using namespace boost::gregorian;
using namespace std;

int main() {

    ptime matDate = ptime(date(2021, 12, 12), hours(17) + minutes(45));
    ptime compDate = ptime(date(2021, 11, 26), hours(17) + minutes(45));

    // Test Future
    Future firstFut = Future("CAC40 12/12", matDate, 6700, 1, 10);
    firstFut.printCarac();
    cout << "Maturity date: "<<firstFut.getMaturity()<<endl;
    cout << "Remaining Time: " << firstFut.remainingTime(compDate, 365) << endl;
    cout << "Implied interest rate: " << firstFut.impliedRate(compDate, 6739.73, 365) << endl;

    // Hedging a spot position of 1,000,000 €
    cout << "Hedging spot nb contracts: " << firstFut.hedgingSpot(1000000) << endl;
    // Hedging a portfolio of 1,000,000 € with 0.79 beta against index, then beta change to 1.2 and resize to 0.67
    cout << "Hedging portfolio (beta=0.79) nb contracts: " << firstFut.hedgingPortfolio(1000000, 0.79) << endl;
    cout << "Hedging portfolio (beta=1.2) nb contracts: " << firstFut.hedgingPortfolio(1000000, 1.2) << endl;
    cout << "Hedging portfolio (beta=0.67) nb contracts: " << firstFut.hedgingPortfolio(1000000, 0.67) << endl;
    // Hedging a correlated asset of 1,000,000 € with sigma Index = 0.2, sigma asset = 0.45, correlation = 0.87
    cout << "Hedging Correlated Assset nb contracts: " << firstFut.hedgingCrossAsset(1000000,0.45,0.2,0.87) << endl;

    // Creation of a portfolio for hedge portfolio before and manage position
    FuturePortfolio portfolio = FuturePortfolio(6739.73);
    portfolio.short_future("CAC40 12/12", matDate, 6700, -11.791, 10);
    portfolio.short_future("CAC40 12/12", matDate, 6700, -17.9104 + 11.791, 10);
    portfolio.long_future("CAC40 12/12", matDate, 6700, 17.9104 - 10, 10);
    portfolio.showInstruments();
    vector<double> spots = portfolio.getSpots();
    vector<double> payoffs = portfolio.getPayoff();
    vector<Future> instrument = portfolio.getInstruments();
    portfolio.printPayoff();
    return 0;
}
