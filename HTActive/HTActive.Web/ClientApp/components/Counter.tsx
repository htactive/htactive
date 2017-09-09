import * as React from 'react';
import { Link, RouteComponentProps } from 'react-router-dom';
import { connect } from 'react-redux';
import { ApplicationState } from '../store';
import * as CounterStore from '../store/Counter';
import * as ThuanStore from '../store/ThuanStore';
import * as WeatherForecasts from '../store/WeatherForecasts';

type CounterProps =
    { counter: CounterStore.CounterState, thuan: ThuanStore.ThuanState }
    & typeof CounterStore.actionCreators
    & typeof ThuanStore.actionCreators
    & RouteComponentProps<{}>;

class Counter extends React.Component<CounterProps, {}> {
    public render() {
        return <div>
            <h1>Counter</h1>

            <p>This is a simple example of a React component.</p>

            <p>Current count: <strong>{this.props.counter.count}</strong></p>
            <p>Thuan Int: {this.props.thuan.MyInt}</p>
            <button onClick={() => { this.props.increment(); this.props.requestMyInt(9); }}>Increment</button>
        </div>;
    }
}

// Wire up the React component to the Redux store
export default connect(
    (state: ApplicationState) => { return { counter: state.counter, thuan: state.thuan }; }, // Selects which state properties are merged into the component's props
    () => {
        return {
            
        };
    }               // Selects which action creators are merged into the component's props
)(Counter) as typeof Counter;