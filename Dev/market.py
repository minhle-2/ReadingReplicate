import matplotlib.pyplot as plt
import numpy as np
from scipy.integrate import quad
class Market:
    def __init__(self, a_d, b_d, a_s, b_s, tax):
        self.a_d, self.b_d, self.a_s, self.b_s, self.tax = a_d, b_d, a_s, b_s, tax
        if a_d < a_s:
            raise ValueError('Insufficient demand')
    def price(self):
        return (self.a_d - self.a_s + self.b_s*self.tax) / (self.b_d + self.b_s)

    def quantity(self):
        return self.a_d - self.b_d*self.price()

    def cs(self):
        integrand = lambda x: (self.a_d/self.b_d) - (x/self.b_d)
        area, error = quad(integrand, 0, self.quantity()) # type: ignore
        return area - self.price()*self.quantity()
    def ps(self):
        integrand = lambda x: -(self.a_s/self.b_s) + (x/self.b_s)
        area, error = quad(integrand, 0, self.quantity())
        return (self.price()-self.tax)*self.quantity()-area 
    def taxrev(self):
        return self.tax*self.quantity()
    def inv_demand(self,x):
        return (self.a_d/self.b_d)-(x/self.b_d)
    def inv_supply(self,x):
        return -(self.a_s/self.b_s) + (x/self.b_s) + self.tax
market1 = Market(a_d=40, b_d=1, a_s=20, b_s=1, tax=5)
print("Example 1:")
print(f"Equilibrium Price: {market1.price():.2f}")
print(f"Equilibrium Quantity: {market1.quantity():.2f}")
print(f"Consumer Surplus: {market1.cs():.2f}")
print(f"Producer Surplus: {market1.ps():.2f}")
print(f"Tax Revenue: {market1.taxrev():.2f}")
market = market1

# Calculate equilibrium price and quantity
eq_price = market.price()
eq_quantity = market.quantity()

# Generate points for the demand and supply curves
quantities = np.linspace(0, 60, 100)
demand_prices = [market.inv_demand(q) for q in quantities]
supply_prices = [market.inv_supply(q) for q in quantities]

# Create the plot
plt.figure(figsize=(10, 6))
plt.plot(quantities, demand_prices, label='Demand')
plt.plot(quantities, supply_prices, label='Supply')
plt.scatter([eq_quantity], [eq_price], color='red', s=100, label='Equilibrium')

# Add labels and title
plt.xlabel('Quantity')
plt.ylabel('Price')
plt.title('Market Supply and Demand')
plt.legend()

# Add gridlines
plt.grid(True, linestyle='--', alpha=0.7)

# Show the plot
plt.show()

