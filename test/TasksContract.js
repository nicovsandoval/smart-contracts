const { Assertion, assert } = require("chai")

const TasksContract = artifacts.require("TasksContract")

contract("TasksContract", () => {
    before( async () =>{
        this.tasksContract = await TasksContract.deployed()
    })

    it('migrated deployed successfuly', async () => {
        const address = await this.tasksContract.address
        assert.notEqual(address, null);
        assert.notEqual(address, undefined);
        assert.notEqual(address, 0x0);
        assert.notEqual(address, "");
    })

    it('get Task List', async () => {
        
    })
})