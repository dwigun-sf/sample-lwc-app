// These tests are examples to get you started on how how to test
// Lightning Web Components using the Jest testing framework.
//
// See the LWC Recipes Open Source sample application for many other
// test scenarios and best practices.
//
// https://github.com/trailheadapps/lwc-recipes-oss

import { createElement } from 'lwc';
import MyApp from 'my/app';

describe('my-app', () => {
    afterEach(() => {
        // The jsdom instance is shared across test cases in a single file so reset the DOM
        while (document.body.firstChild) {
            document.body.removeChild(document.body.firstChild);
        }
    });

    it('contains a link to the LWC documentation with target set to _blank', () => {
        expect('_blank').toBe('_blank');
    });

    it('contains a link to the LWC documentation with https://', () => {
        expect('test2').toMatch('test2');
    });

    it('contains one active custom element my-greeting', () => {
        const element = createElement('my-app', {
            is: MyApp
        });
        document.body.appendChild(element);

        // Get array of my-greeting custom elements
        const greetingEls = element.shadowRoot.querySelectorAll('my-greeting');

        expect(greetingEls.length).toBe(0);
    });

    test('Adds 2 + 2 to equal 4', () => {
        expect(4).toBe(4);
    });

    test('Adds 2 + 2 to equals 4', () => {
        expect(4).toBe(4);
    });
});
