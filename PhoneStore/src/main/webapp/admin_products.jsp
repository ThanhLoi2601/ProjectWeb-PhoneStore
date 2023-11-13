<%-- 
    Document   : admin_products
    Created on : Oct 30, 2023, 10:47:05 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <div class="app-content">
        <div class="app-content-header">
            <h1 class="app-content-headerText">Products</h1>
            <form action="AdminProduct" method="post">
                <button class="app-content-headerButton">Add Product</button>
                <input type="hidden" name="ManageProducts" value="add"/>">
            </form>
        </div>
        <div class="app-content-actions">
            <input class="search-bar" placeholder="Search..." type="text">
            <div class="app-content-actions-wrapper">
                <div class="filter-button-wrapper">
                    <button class="action-button filter jsFilter"><span>Filter</span><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-filter"><polygon points="22 3 2 3 10 12.46 10 19 14 21 14 12.46 22 3"/></svg></button>
                    <div class="filter-menu">
                        <label>Category</label>
                        <select>
                            <option>All Categories</option>
                            <option>Iphone</option>                     
                            <option>Samsung</option>
                            <option>Realme</option>
                            <option>Xiaomi</option>
                        </select>
                        <label>Status</label>
                        <select>
                            <option>All Status</option>
                            <option>Active</option>
                            <option>Disabled</option>
                        </select>
                        <div class="filter-menu-buttons">
                            <button class="filter-button reset">
                                Reset
                            </button>
                            <button class="filter-button apply">
                                Apply
                            </button>
                        </div>
                    </div>
                </div>
                <button class="action-button list active" title="List View">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-list"><line x1="8" y1="6" x2="21" y2="6"/><line x1="8" y1="12" x2="21" y2="12"/><line x1="8" y1="18" x2="21" y2="18"/><line x1="3" y1="6" x2="3.01" y2="6"/><line x1="3" y1="12" x2="3.01" y2="12"/><line x1="3" y1="18" x2="3.01" y2="18"/></svg>
                </button>
                <button class="action-button grid" title="Grid View">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-grid"><rect x="3" y="3" width="7" height="7"/><rect x="14" y="3" width="7" height="7"/><rect x="14" y="14" width="7" height="7"/><rect x="3" y="14" width="7" height="7"/></svg>
                </button>
            </div>
        </div>
        <div class="products-area-wrapper tableView">
            <div class="products-header">
                <div class="product-cell image">
                    Items
                    <button class="sort-button">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 512 512"><path fill="currentColor" d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z"/></svg>
                    </button>
                </div>
                <div class="product-cell category">Category<button class="sort-button">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 512 512"><path fill="currentColor" d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z"/></svg>
                    </button></div>
                <div class="product-cell status-cell">Status<button class="sort-button">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 512 512"><path fill="currentColor" d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z"/></svg>
                    </button></div>
                <div class="product-cell sales">Sales<button class="sort-button">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 512 512"><path fill="currentColor" d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z"/></svg>
                    </button></div>
                <div class="product-cell stock">Stock<button class="sort-button">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 512 512"><path fill="currentColor" d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z"/></svg>
                    </button></div>
                <div class="product-cell price">Price<button class="sort-button">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 512 512"><path fill="currentColor" d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z"/></svg>
                    </button></div>
                <div class="product-cell update">Update</div>
                <div class="product-cell remove">Remove</div>
                <div class="product-cell comment">Comment</div>
            </div>
            <div class="products-row">
                <button class="cell-more-button">
                    <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-more-vertical"><circle cx="12" cy="12" r="1"/><circle cx="12" cy="5" r="1"/><circle cx="12" cy="19" r="1"/></svg>
                </button>
                <div class="product-cell image">
                    <img src="img/Samsung/Samsung-Galaxy-A53.jpg" alt="product">
                    <span>Galaxy A53</span>
                </div>
                <div class="product-cell category"><span class="cell-label">Category:</span>Samsung</div>
                <div class="product-cell status-cell">
                    <span class="cell-label">Status:</span>
                    <button class="status active">Active</button>
                </div>
                <div class="product-cell sales"><span class="cell-label">Sales:</span>11</div>
                <div class="product-cell stock"><span class="cell-label">Stock:</span>36</div>
                <div class="product-cell price"><span class="cell-label">Price:</span>$560</div>
                <a href="#" class="product-cell update" style="text-decoration: none;"><span class="cell-label">Update:</span><button class="sort-button">
                        <i class="fa-solid fa-pen-to-square"></i> 
                    </button></a>
                <a href="#" class="product-cell remove" style="text-decoration: none;"><span class="cell-label">Remove:</span><button class="sort-button">
                        <i class="fa-solid fa-trash"></i> 
                    </button></a>
                <a href="#" class="product-cell comment" style="text-decoration: none;"><span class="cell-label">Comment:</span><button class="sort-button">
                        <i class="fa-solid fa-comment-dots"></i> 
                    </button></a>
            </div>

            <%if (request.getAttribute("ManageProducts") != null && request.getAttribute("ManageProducts").equals("add")) { %>
            <div class="products-row">
                <button class="cell-more-button">
                    <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-more-vertical"><circle cx="12" cy="12" r="1"/><circle cx="12" cy="5" r="1"/><circle cx="12" cy="19" r="1"/></svg>
                </button>
                <div class="product-cell image">
                    <span><input placeholder="Name..." type="text" name="ProductName" style="width: 100px;background-color: var(--app-content-secondary-color); border: 1px solid var(--app-content-secondary-color); color: var(--app-content-main-color);"></span>
                </div>
                <div class="product-cell category"><span class="cell-label">Category:</span>
                    <select placeholder="Category..." name="ProductType" style="width: 100px;background-color: var(--app-content-secondary-color); border: 1px solid var(--app-content-secondary-color); color: var(--app-content-main-color);">
                        <option value="Iphone">Iphone</option>
                        <option value="Xiaomi">Xiaomi</option>
                        <option value="Realme">Realme</option>
                        <option value="Samsung">Samsung</option>
                    </select>
                </div>
                <!--                <form class="product-cell status-cell" action="AdminProduct" method="post">
                                    <span class="cell-label">Status:</span>
                <%if (request.getAttribute("StatusProducts") != null && request.getAttribute("StatusProducts").equals("disabled")) {%>
                <button class="status disabled">Disabled</button>
                <input type="hidden" name="StatusProducts" value="active"/>
                <%} else {%>
                <button class="status active">Active</button>
                <input type="hidden" name="StatusProducts" value="disabled"/>
                <%}%>
                <input type="hidden" name="ManageProducts" value="add"/>
            </form>-->
                <div class="product-cell status"><span class="cell-label">Status:</span>
                    <select placeholder="Category..." name="ProductType" style="width: 100px;background-color: var(--app-content-secondary-color); border: 1px solid var(--app-content-secondary-color); color: var(--app-content-main-color);">
                        <option value="active">Active</option>
                        <option value="disabled">Disabled</option>
                    </select>
                </div>   
                <div class="product-cell sales"><span class="cell-label">Sales:</span><input placeholder="Sales..." type="number" name="sales" style="width: 100px;background-color: var(--app-content-secondary-color); border: 1px solid var(--app-content-secondary-color); color: var(--app-content-main-color);"></div>
                <div class="product-cell stock"><span class="cell-label">Stock:</span><input placeholder="Stock..." type="number" name="stock" style="width: 100px;background-color: var(--app-content-secondary-color); border: 1px solid var(--app-content-secondary-color); color: var(--app-content-main-color);"></div>
                <div class="product-cell price"><span class="cell-label">Price:</span>$<input placeholder="Price..." type="number" name="price" style="width: 100px;background-color: var(--app-content-secondary-color); border: 1px solid var(--app-content-secondary-color); color: var(--app-content-main-color);"></div>
                <a href="#" class="product-cell update" style="text-decoration: none;"><span class="cell-label">Confirm:</span><button class="sort-button">
                        CONFIRM
                    </button></a>
                <a href="#" class="product-cell comment" style="text-decoration: none;"><span class="cell-label">Image:</span><button class="sort-button">
                        IMAGE   
                    </button></a>
                <form action="AdminProduct" method="post" class="product-cell remove">
                    <span class="cell-label">Remove:</span><button class="sort-button">
                        <i class="fa-solid fa-trash"></i> 
                    </button>
                    <input type="hidden" name="ManageProducts" value="remove"/>
                </form>
            </div>
            <div class="products-row">
                <input placeholder="Information..." type="text" name="information" style="width: 1200px;margin-left:16px;background-color: var(--app-content-secondary-color); border: 1px solid var(--app-content-secondary-color); color: var(--app-content-main-color);">
            </div>
            <% }%>
        </div>
    </div>
</html>
