# Sales Data Analysis Using R
# Academic project - base R only

# 1. Import dataset
sales_data <- read.csv("data/sales_data.csv")
head(sales_data)

# 2. Data preprocessing and cleaning
str(sales_data)
colSums(is.na(sales_data))
sum(duplicated(sales_data))
summary(sales_data)

sales_data$Product <- as.character(sales_data$Product)
sales_data$Category <- as.character(sales_data$Category)

# 3. Statistical analysis
total_sales <- sum(sales_data$Sales_Amount)
average_sales <- mean(sales_data$Sales_Amount)
median_sales <- median(sales_data$Sales_Amount)
sales_variance <- var(sales_data$Sales_Amount)
sales_sd <- sd(sales_data$Sales_Amount)

cat("Total Sales:", total_sales, "\n")
cat("Average Sales:", average_sales, "\n")
cat("Median Sales:", median_sales, "\n")
cat("Sales Variance:", sales_variance, "\n")
cat("Sales SD:", sales_sd, "\n")

# Product-wise analysis
product_sales <- aggregate(Sales_Amount ~ Product, data=sales_data, FUN=sum)
product_quantity <- aggregate(Quantity ~ Product, data=sales_data, FUN=sum)

# Category-wise analysis
category_sales <- aggregate(Sales_Amount ~ Category, data=sales_data, FUN=sum)

print(product_sales)
print(product_quantity)
print(category_sales)

# 4. Graphs / output files
dir.create("output", showWarnings=FALSE)

png("output/product_wise_sales.png", width=900, height=700)
barplot(product_sales$Sales_Amount, names.arg=product_sales$Product,
        main="Product-wise Sales", xlab="Product", ylab="Sales Amount", las=2)
dev.off()

png("output/category_wise_sales.png", width=900, height=700)
pie(category_sales$Sales_Amount, labels=category_sales$Category,
    main="Category-wise Sales Distribution")
dev.off()

png("output/quantity_sold_by_product.png", width=900, height=700)
barplot(product_quantity$Quantity, names.arg=product_quantity$Product,
        main="Quantity Sold by Product", xlab="Product",
        ylab="Quantity Sold", las=2)
dev.off()
