//
// Created by Antoine Perrin on 11/27/21.
//

#include "Futures.h"
#include <iostream>
#include <utility>
#include "cmath"
#include "boost/date_time.hpp"

using namespace boost::posix_time;
using namespace boost::gregorian;
using namespace std;

Future::Future(string name, ptime maturity, double price, double qty, double contractSize) {
    m_name = std::move(name);
    m_maturity = maturity;
    m_price = price;
    m_quantity = qty;
    m_contractSize = contractSize;
}


void Future::printCarac() {
    cout << "---- Future ----" << endl;
    cout << "Denomination: " << m_name << endl;
    cout << "Maturity: " << m_maturity << endl;
    cout << "Price: " << m_price << endl;
    cout << "Traded quantity: " << m_quantity << endl;
    cout << "Contract size: " << m_contractSize << endl;
}

double Future::remainingTime(ptime computationDate, int basis) {
    double total_year = basis * 86400;
    time_duration td = m_maturity - computationDate;
    return td.total_seconds() / total_year;
}

double Future::impliedRate(ptime computationDate, double spot, int basis) {
    double tt_maturity = remainingTime(computationDate, basis);
    return -log(spot / m_price) / tt_maturity;
}

double Future::contractValue() const {
    return m_contractSize * m_price;
}

double Future::hedgingSpot(double spotPosition) const {
    return spotPosition / contractValue();
}

double Future::hedgingPortfolio(double portfolioSize, double beta) const {
    return (portfolioSize / contractValue()) * beta;
}

double Future::hedgingCrossAsset(double positionSize, double sigmaA, double sigmaFutA, double correlation) const {
    return correlation * (sigmaA / sigmaFutA) * (positionSize / contractValue());
}


FuturePortfolio::FuturePortfolio(double spot) {
    double minSpot = 0;
    double maxSpot = spot * 2;
    while (minSpot <= maxSpot) {
        m_spots.emplace_back(minSpot);
        m_payoff.emplace_back(0);
        minSpot += 0.01;
    }
}

void FuturePortfolio::long_future(string name, ptime maturity, double price, double qty, double contractSize) {
    Future fut = Future(std::move(name), maturity, price, qty, contractSize);
    add_instrument(fut);
    for (int i = 0; i < m_payoff.size(); i++) {
        m_payoff[i] = m_payoff[i] + ((m_spots[i] - fut.getPrice()) * fut.getQty() * fut.getContractSize());
    }
}

void FuturePortfolio::short_future(string name, ptime maturity, double price, double qty, double contractSize) {
    Future fut = Future(std::move(name), maturity, price, qty, contractSize);
    add_instrument(fut);
    for (int i = 0; i < m_payoff.size(); i++) {
        m_payoff[i] = m_payoff[i] + ((fut.getPrice() - m_spots[i]) * abs(fut.getQty()) * fut.getContractSize());
    }
}

void FuturePortfolio::add_instrument(const Future &fut) {
    m_instruments.emplace_back(fut);
}

void FuturePortfolio::showInstruments() {
    for (auto &m_instrument: m_instruments) {
        m_instrument.printCarac();
        cout << "" << endl;
    }
}

void FuturePortfolio::printPayoff() {
    cout << "Spot - Payoff" << endl;
    for (int i = 0; i < m_payoff.size(); i++) {
        if (i % 500 == 0) {
            cout << m_spots[i] << " - " << m_payoff[i] << endl;
        }
    }
}
