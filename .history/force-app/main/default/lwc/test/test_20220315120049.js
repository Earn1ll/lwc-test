import { LightningElement,wire } from 'lwc';
import getUsers from '../../classes/userController';

export default class Test extends LightningElement {
    @wire(getUsers) users;
}