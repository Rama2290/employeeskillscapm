using {sap.ui.empski as my} from '../db/schema';
@path: 'service/empski'
service EmpSkiService {
  entity Employees as projection on my.Employees;
    annotate Employees with @odata.draft.enabled;
  entity Skills as projection on my.Skills;
    annotate Skills with @odata.draft.enabled; 
}