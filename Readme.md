# Futures

Description : This package is a C++ Library for Futures Management, Pricing and hedging.

## Table of Contents
1. [Prerequisites](#Prerequisites)
2. [Install](#install)
3. [Description](#Description)

# Prerequisites
- Cmake/make and C++ compiler installed.
- Boost Libraries on your machine

# Install
```yaml
cd /your_folder
git clone https://github.com/ahgperrin/Futures.git
```
Open **CMakeLists.txt** : Modify include directories in order to link boost libraries.

# Description

This package  is a C++ module that is used in order to create Futures Object, 
FuturesPortfolio and manage hedging of position.

## Classes
### Future

##### Attributes
| Name           | Type         | Privacy | Description         |         
| :-------------:|:------------:|:-------:|:--------------------|
| m_name         | string       | Private | Name of instrument  | 
| m_maturity     | ptime (boost)| Private | Maturity date       |
| m_price        | double       | Private | Price of instrument |
| m_quantity     | double       | Private | Quantity of position|  
| m_contractSize | double       | Private | Size of a contract  |  

##### Methods

| Name             | Return Type  | Privacy| Args                                                                          | Description                                  |  
| :---------------:|:------------:|:------:|:-----------------------------------------------------------------------------:|:---------------------------------------------|
| Future           | void         | Public | (string name, ptime maturity, double price, double qty, double contractSize)  | Constructor                                  | 
| getPrice         | double       | Public | ()                                                                            |m_price getter                                |
| getQty           | double       | Public | ()                                                                            |m_quantity getter                             |
| getContractSize  | double       | Public | ()                                                                            |m_contractSize getter                         |
| getMaturity      | ptime(boost) | Public | ()                                                                            |m_maturity getter                             |
| printCarac       | void         | Public | ()                                                                            |print instrument carac                        |
| remainingTime    | double       | Public | (ptime computationDate, int basis)                                            |compute remaining time (years)                |
| impliedRate      | double       | Public | (ptime computationDate, double spot, int basis)                               |compute implied basis rate                    |
| contractValue    | double       | Public | Quantity of position                                                          |compute value of a contract                   |
| hedgingSpot      | double       | Public | (double spotPosition)                                                         |compute nb_contract for spot hedge            |
| hedgingPortfolio | double       | Public | (double portfolioSize, double beta)                                           |compute nb_contract for portfolio hedge       |
| hedgingCrossAsset| double       | Public | (double positionSize, double sigmaA, double sigmaFutA, double correlation)    |compute nb_contract for correlated asset hedge|

### FuturePortfolio

##### Attributes
| Name           | Type           | Privacy | Description                     |         
| :-------------:|:--------------:|:-------:|:--------------------------------|
| m_instruments  | vector<Future> | Private | Instrument List                 | 
| m_payoff       | vector<double> | Private | Estimated payoff given spot List|
| m_spots        | vector<double> | Private | Spot list                       |


##### Methods

| Name             | Return Type    | Privacy | Args                                                                          | Description                                    |  
| :---------------:|:--------------:|:-------:|:-----------------------------------------------------------------------------:|:-----------------------------------------------|
| FuturePortfolio  | void           | Public  | (spot double)                                                                 | Constructor                                    |
| getInstruments   | vector<Future> | Public  | ()                                                                            | m_instruments getter                           |
| getPayoff        | vector<double> | Public  | ()                                                                            | m_payoff getter                                |
| getSpots         | vector<double> | Public  | ()                                                                            | m_spots getter                                 |
| printPayoff      | void           | Public  | ()                                                                            | print payoff vector                            |
| showInstruments  | void           | Public  | ()                                                                            | print instruments                              |
| long_future      | void           | Public  | (string name, ptime maturity, double price, double qty, double contractSize)  | Buy A Future                                   |
| short_future     | double         | Public  | (string name, ptime maturity, double price, double qty, double contractSize)  | Sell a Future                                  |
| add_instrument   | double         | Private | const Future &fut                                                             | Procedure use to add instrument in attributes  |