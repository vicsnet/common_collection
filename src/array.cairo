use debug::PrintTrait;
use array::ArrayTrait;
use option::OptionTrait;
use box::BoxTrait;
use traits::Into;


#[derive(Copy, Drop)]
enum Data{
Integer: u128,
Felt: felt252,
Tuple: (u32, u32),
}

fn storing_element_of_different_types(){

let mut messages:Array<Data> = ArrayTrait::new();
messages.append(Data::Integer(100));
messages.append(Data::Felt('hello world'));
messages.append(Data::Tuple((10, 30)));


// let first = *messages.at(0);
// first.print();
}
// Element can be removed from the front of an array using the pop_front() method
fn get_method() -> u128 {
    let mut arr = ArrayTrait::<u128>::new();
    arr.append(100);

    let index_to_access = 1;
    match arr.get(index_to_access) {
        Option::Some(x) => {
            *x.unbox()
        },
        Option::None(_) => {
            let mut data = ArrayTrait::new();
            data.append('out of bounds');
            panic(data)
        }
    }
}
fn main() {
storing_element_of_different_types();
    // get_method();
    // let mut arr = ArrayTrait::<u128>::new();
    // let mut arr:Array<u128> = ArrayTrait::new();

    let mut a = ArrayTrait::new();
    a.append(10);
    a.append(1);
    a.append(2);

    let first_value = a.pop_front().unwrap();
    let first = *a.at(0);
    first_value.print();
    first.print();
}
