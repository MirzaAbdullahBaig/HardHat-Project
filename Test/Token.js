const { expect } = require("chai");
const ethers = require('ethers');
// const { isCallTrace } = require("hardhat/internal/hardhat-network/stack-traces/message-trace");


describe ("Token Contract", function () {
    it("Deployment should assign the total supply of tokens to the owner", async function (){

        const [owner] = await ethers.getSigners();

        console.log("Signers object:" , owner);
        const Token = await ethers.getContractFactory("Token");

        const hardhatToken = await Token.deploy();

        const ownerBalance = await hardhatToken.CheckBalance(owner.address);
        console.log("Owner Address:" , owner.address);

        expect (await hardhatToken.TotalSupply()).to.equal (ownerBalance);
    });
});