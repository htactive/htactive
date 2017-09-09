import * as React from 'react';
import { Link, RouteComponentProps } from 'react-router-dom';
import { connect } from 'react-redux';
import { ApplicationState } from '../store';
import * as ThuanState from '../store/ThuanStore';
type ThuanProps =
    ThuanState.ThuanState &
    typeof ThuanState.actionCreators &
    RouteComponentProps<{}>;

class ThuanComponent extends React.Component<ThuanProps, {}>{
    onButtonClick() {
        debugger;
        this.props.requestMyInt(99);
    }
    componentWillMount() {
        this.props.requestMyInt(999);
    }
    render() {
        return <div>
            <div>{this.props.MyInt}</div>
            <div>
                <button onClick={()=>this.onButtonClick()}>Click me !!!</button>
            </div>
        </div>;
    }
}


export default connect(
    (state: ApplicationState) => state.thuan, // Selects which state properties are merged into the component's props
    ThuanState.actionCreators                 // Selects which action creators are merged into the component's props
)(ThuanComponent) as typeof ThuanComponent;
