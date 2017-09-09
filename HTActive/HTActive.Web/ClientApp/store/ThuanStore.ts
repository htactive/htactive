import { fetch, addTask } from 'domain-task';
import { Action, Reducer, ActionCreator } from 'redux';
import { AppThunkAction } from './';
import { SampleDataServiceInstance } from "../services/SampleDataService";

// -----------------
// STATE - This defines the type of data maintained in the Redux store.

export interface ThuanState {
    MyInt: number,
    MyInput: number
}

// -----------------
// ACTIONS - These are serializable (hence replayable) descriptions of state transitions.
// They do not themselves have any side-effects; they just describe something that is going to happen.

interface RequestMyInt {
    type: 'REQUEST_MY_INT';
    myInput: number;
}

interface RequestMyIntSuccess {
    type: 'REQUEST_MY_INT_SUCCESS';
    myInput: number;
    myInt: number;
}

// Declare a 'discriminated union' type. This guarantees that all references to 'type' properties contain one of the
// declared type strings (and not any other arbitrary string).
type KnownAction = RequestMyInt | RequestMyIntSuccess;

export const actionCreators = {
    requestMyInt: (myInput: number): AppThunkAction<KnownAction> => (dispatch, getState) => {
        dispatch({ type: 'REQUEST_MY_INT', myInput: myInput });
        SampleDataServiceInstance.GetMyInt(myInput).then(data => {
            dispatch({
                type: 'REQUEST_MY_INT_SUCCESS',
                myInput: myInput,
                myInt: data
            });
        });
    },
};

// ----------------
// REDUCER - For a given state and action, returns the new state. To support time travel, this must not mutate the old state.

const unloadedState: ThuanState = { MyInt: 0, MyInput: 0 };

export const reducer: Reducer<ThuanState> = (state: ThuanState, incomingAction: Action) => {
    const action = incomingAction as KnownAction;
    switch (action.type) {
        case 'REQUEST_MY_INT':
            state.MyInput = action.myInput;
            return state;
        case 'REQUEST_MY_INT_SUCCESS':
            // Only accept the incoming data if it matches the most recent request. This ensures we correctly
            // handle out-of-order responses.
            if (state.MyInput === action.myInput) {
                let st = { ...state };
                st.MyInput = action.myInput;
                st.MyInt = action.myInt;
                return st;
            }
            break;
        default:
            // The following line guarantees that every action in the KnownAction union has been covered by a case above
            const exhaustiveCheck: never = action;
    }

    return state || unloadedState;
};
