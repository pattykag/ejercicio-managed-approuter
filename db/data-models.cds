using {
    cuid,
    managed,
    Country
} from '@sap/cds/common';

namespace sales;

entity Clients : cuid, managed {
    @mandatory name     : String(30);
    @mandatory lastname : String(30);
    @mandatory dni      : String(10);
    birthday            : Date;
    country             : Country;
}

entity Products : cuid, managed {
    @mandatory productName  : String(50);
    @mandatory precio       : Double;
    @mandatory stock        : Integer;
    @mandatory minimumStock : Integer;
    description             : String(50);
    category                : Association to many Categories;
}

entity Categories : managed {
    key ID          : String(3)  @mandatory;
        description : String(55) @mandatory;
}
