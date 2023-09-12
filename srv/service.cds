using {sales as my} from '../db/data-models';

@impl    : './custom-logic.js'
@requires: 'authenticated-user'
service storeSales {

    entity Clients @(restrict: [{
        grant: '*',
        to   : 'admin'
    }])               as projection on my.Clients;

    entity Products @(restrict: [
        {
            grant: [
                'READ',
                'WRITE'
            ],
            to   : 'final-user'
        },
        {
            grant: '*',
            to   : 'admin'
        }
    ])                as projection on my.Products;

    entity Categories as projection on my.Categories;
}
