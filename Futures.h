//
// Created by Antoine Perrin on 11/27/21.
//

#ifndef FUTURES_FUTURES_H
#define FUTURES_FUTURES_H

#include <iostream>
#include "boost/date_time.hpp"

using namespace boost::posix_time;
using namespace boost::gregorian;
using namespace std;

class Future {

private:
    string m_name;
    ptime m_maturity;
    double m_price;
    double m_quantity;
    double m_contractSize;

public:
    Future(string name, ptime maturity, double price, double qty, double contractSize);

    double getPrice() const { return m_price; };

    double getQty() const { return m_quantity; };

    double getContractSize() const { return m_contractSize; };

    ptime getMaturity() const { return m_maturity; };

    void printCarac();

    double remainingTime(ptime computationDate, int basis);

    double impliedRate(ptime computationDate, double spot, int basis);

    double contractValue() const;

    double hedgingSpot(double spotPosition) const;

    double hedgingPortfolio(double portfolioSize, double beta) const;

    double hedgingCrossAsset(double positionSize, double sigmaA, double sigmaFutA, double correlation) const;
};


class FuturePortfolio {

private:
    vector<Future> m_instruments;
    vector<double> m_payoff;
    vector<double> m_spots;

    void add_instrument(const Future &fut);

public:
    explicit FuturePortfolio(double spot);

    vector<double> getPayoff() const { return m_payoff; };

    vector<double> getSpots() const { return m_spots; };

    vector<Future> getInstruments() const { return m_instruments; };

    void printPayoff();

    void showInstruments();

    void long_future(string name, ptime maturity, double price, double qty, double contractSize);

    void short_future(string name, ptime maturity, double price, double qty, double contractSize);


};

#endif //FUTURES_FUTURES_H
