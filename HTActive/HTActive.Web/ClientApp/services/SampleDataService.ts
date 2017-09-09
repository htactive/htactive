import { ServiceBase } from "../services/ServiceBase";

class SampleDataService extends ServiceBase {
    public async GetMyInt(input: number): Promise<number> {
        let url = `api/SampleData/get-int?inp=${input}`;
        return await super.executeFetch(url);
    }
    public GetMyInt2(input: number): Promise<number> {
        let url = `api/SampleData/get-int?inp=${input}`;
        return fetch(url)
            .then(response => response.json() as Promise<number>);
    }
}

const SampleDataServiceInstance = new SampleDataService();
export { SampleDataServiceInstance };