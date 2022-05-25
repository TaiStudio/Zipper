const dotenv = require("dotenv").config();
const zip = require('zip-a-folder');

switch(process.env.ZIPPER_EXT){
    case '.zip':
        zip.zip(process.env.ZIPPER_IN, process.env.ZIPPER_OUT + '.zip');
        break;
    case '.tar':
        zip.tar(process.env.ZIPPER_IN, process.env.ZIPPER_OUT + '.tar');
        break;
    default:
        console.log('YOU DONT HAVE A EXT ARGUMENT');
}