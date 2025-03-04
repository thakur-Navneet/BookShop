# BookShop
Welcome to our online BookShop! Explore a wide range of books, including bestsellers, classic literature, and new releases across all genres. Our eCommerce platform ensures an easy shopping experience with secure payments, a personalized dashboard for employees, and much more!

## Features

### For Customers:

- **Product Catalog**: Customers can browse a wide variety of books and related products across multiple categories. Products can be filtered by attributes such as author, genre, price, and cover type.
- **Shopping Cart**: Add, remove, or update the quantity of products in the cart. The shopping cart is saved for customers across sessions, making it easier to complete purchases later.
- **Secure Checkout**: A safe and simple payment process integrated with a payment gateway, allowing customers to securely complete their purchases using various payment methods (credit card, PayPal, etc.).
- **Authentication & Authorization**: Customers can register, log in, and track order history. Account management is available for users to update their profile and preferences.

### For Admins/Employees:

- **Employee Dashboard**: A comprehensive dashboard for employees to manage and edit authors, categories, cover types, products, blogs, contact form data, and FAQs. Employees have access to essential data and the ability to update product information, stock, and more.
- **Author Management**: Admins can add, update, or delete authors, linking them to their respective books.
- **Category & Cover Type Management**: Manage categories and cover types, helping organize products for customers. Admins can modify categories, and define attributes like hardcovers, paperbacks, e-books, etc.
- **Product Management**: Admins can add, update, or delete products from the catalog, including linking products to authors, categories, and cover types.
- **Blog Management**: Manage and create blog posts to keep customers engaged with book recommendations, reviews, and news.
- **FAQ Management**: Easily add or update frequently asked questions to assist customers.
- **Contact Form Data**: View and manage customer inquiries submitted via the contact form.

### Payment Gateway Integration:

- **Secure Payment Processing**: Integrated with a payment gateway to handle secure transactions. Admins can view transaction details, manage payments, and issue refunds if needed.
- **Order Processing**: After a successful payment, admins can view the order status and process it accordingly (e.g., shipping, completed, or refunded).

## Technologies Used

- **ASP.NET Core MVC**: The MVC architecture is used to separate the application’s business logic, user interface, and data management layers.
- **Entity Framework Core**: ORM used to handle data management and relationships between products, authors, categories, and cover types.
- **SQL Server**: Used for storing and managing application data such as users, orders, products, and more.
- **Bootstrap**: Utilized for creating a responsive, mobile-first design with a clean and modern user interface.
- **Payment Gateway Integration**: Integration with a third-party payment processor (Stripe) to handle secure transactions.
- **ASP.NET Identity**: Used for authentication and managing user roles (customers, admins, employees).
- **Admin Dashboard**: Built with ASP.NET Core MVC for a robust and user-friendly interface for managing products, users, and content.

## Installation

To run this project locally, follow the steps below:

1. **Clone the repository**:

    ```bash
    git clone https://github.com/thakur-Navneet/bookshop.git
    ```

2. **Navigate to the project folder**:

    ```bash
    cd bookshop
    ```

3. **Restore NuGet packages**:

    ```bash
    dotnet restore
    ```

4. **Update the database**:

    Run the following command to apply migrations:

    ```bash
    dotnet ef database update
    ```

5. **Run the application**:

    ```bash
    dotnet run
    ```

    The application will be available at `https://localhost:7001`.

### Payment Gateway Configuration

To configure the payment gateway:

1. Obtain API keys from the payment processor (Stripe).
2. Add the keys to your application's configuration file (`appsettings.json`).
3. Follow the payment gateway's documentation to ensure integration is correctly set up.

## Contact

If you have any questions or suggestions, feel free to reach out at [thakurnavneet686@gmail.com](mailto:thakurnavneet686@gmail.com).

---

We hope you enjoy shopping at BookShop and find your next great read today!