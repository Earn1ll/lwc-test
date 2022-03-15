import { LightningElement,track } from 'lwc';

export default class Test extends LightningElement {
    @track text;

    onButtonClick(){
        this.text = 'hi!!!';
    }
}