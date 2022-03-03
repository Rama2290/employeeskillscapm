namespace sap.ui.empski;
using {managed} from '@sap/cds/common';

  entity Employees {
    key empID       : UUID @odata.Type:'Edm.String';
    name        : String(100);
    department  : String(100);
    title       : String(100);
    role        : String(100);
    industry    : String(100);
    directReport : String(100);
    email : String(100);
    skills : Composition of many {
          key skill : Association to Skills;
    }
  }

  entity Skills {
    key skillID  : UUID @odata.Type:'Edm.String';
    key name  : String(50);
    employees   : Association to many Employees.skills on $self;
  }