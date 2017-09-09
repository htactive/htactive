import { fetch } from 'domain-task';
export class ServiceBase {
    protected async executeFetch(url: string, shouldBlockUI = false): Promise<any> {
        try {
            let result = await fetch(url, {
                method: 'GET',
                /**
                 * make a fetch request with credentials such as cookies
                 */
                credentials: 'include'
            });
            if (result.ok) {
                return await result.json();
            }
            if (result.status == 401) {
                throw 401;
            }
            return null;
        }
        catch (e) {
            if (e == 401) {
                throw e;
            }
        }
    }
}