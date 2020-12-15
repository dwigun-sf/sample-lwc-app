import { LightningElement, api } from 'lwc';

export default class NavBar extends LightningElement {
    @api empNames = [
        { title: 'Home', index: 1 },
        { title: 'About Us', index: 2 },
        { title: 'Product', index: 3 }
    ];

    get navItems() {
        return this.empNames;
    }

    @api
    set selectedItem(value) {
        if (value && this.currentNavItem !== value) {
            this.styleNavItem(this.currentNavItem, value);
            this.currentNavItem = value;
        }
    }
    get selectedItem() {
        return this.currentNavItem;
    }
}
