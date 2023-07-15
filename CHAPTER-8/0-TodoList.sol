// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract ToDoList {
    struct Todo {
        string taskTitle;
        uint deadLine;
        bool completed;
    }

    Todo[] public todos;

    event TaskCreated(address indexed taskCreator, string taskName);
    event TaskDone(uint taskId, uint doneTime);
    
    function createTask(
        string calldata _taskTitle, 
        uint _deadLine) 
        external {
        todos.push(Todo({
            taskTitle: _taskTitle,
            deadLine: _deadLine,
            completed: false
        }));
        emit TaskCreated(msg.sender, _taskTitle);
    }

    function updateTask(
        uint _taskId,
        string calldata _taskTitle,
        uint _deadLine
    ) external {
        todos[_taskId].taskTitle = _taskTitle;
        todos[_taskId].deadLine = _deadLine;
    }

    function getTaskData(
        uint _taskId
        ) external view returns(
        string memory,
        uint,
        bool)
    {
        Todo storage todo = todos[_taskId];
        return (todo.taskTitle, todo.deadLine, todo.completed);
    }

    function toggleCompleted(uint _taskId) external {
        todos[_taskId].completed =!todos[_taskId].completed;
        emit TaskDone(_taskId, block.timestamp);
    }
}