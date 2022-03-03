using EmpSkiService as service from './empski_service';



annotate service.Skills with @(
    UI.LineItem: [
        {
            $Type : 'UI.DataField',
            Value : skillID,
            Label : 'Skill',
            ![@UI.Importance] : #High,
        },
        {
            $Type : 'UI.DataField',
            Value : name,
            Label : 'Skill Name',
            ![@UI.Importance] : #High,
        },
       
    ],
    UI.HeaderInfo: {
			TypeName: 'Skill',
			TypeNamePlural: 'Skill',
			Title          : {
                $Type : 'UI.DataField',
                Value : skill.skillID
            },
			Description : {
				$Type: 'UI.DataField',
				Value: name
			}
		}
   
);