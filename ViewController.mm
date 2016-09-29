//
//  ViewController.m
//  POS New Test
//
//  Created by Tyler Jenkins on 9/19/16.
//  Copyright © 2016 Tyler Jenkins. All rights reserved.
//

#import "ViewController.h"
#include <string>
#include <list>
#include <iterator>
using namespace std;



// ///
// /// macro program variables
// ///


//
// for keeping track of session / shift totals
//
int total_q = 0;     
int total_qb = 0;
int total_qnm = 0;
int total_qnp = 0;
int total_qne = 0;
int total_qnc = 0;
int total_bpb = 0;
int total_bps = 0;
int total_bpnm = 0;
int total_bpbm = 0;
int total_ft = 0;
int total_p = 0;
int total_ps = 0;
int total_ccp = 0;
int total_ccps = 0;
int total_bsb = 0;
int total_bss = 0;
int total_bsnm = 0;
int total_bsne = 0;
int total_se = 0;
int total_sb = 0;
int total_sp = 0;
int total_ss = 0;

string session_totals() {
    
    string session_totals_string = "";
    
    if (total_q > 0)
        session_totals_string = session_totals_string +  "Ques:             " + to_string(total_q) + "\n";
    if (total_qb > 0)
        session_totals_string = session_totals_string +  "Ques w/ bacon:    " + to_string(total_qb) + "\n";
    if (total_qnm > 0)
        session_totals_string = session_totals_string +  "Ques no meat:     " + to_string(total_qnm) + "\n";
    if (total_qne > 0)
        session_totals_string = session_totals_string +  "Ques no eggs:     " + to_string(total_qne) + "\n";
    if (total_qnp > 0)
        session_totals_string = session_totals_string +  "Ques no peppers:  " + to_string(total_qnp) + "\n";
    if (total_qnc > 0)
        session_totals_string = session_totals_string +  "Ques no cheese:   " + to_string(total_qnc) + "\n";
    if (total_bpb > 0)
        session_totals_string = session_totals_string +  "B.P. bacon:       " + to_string(total_bpb) + "\n";
    if (total_bps >0)
        session_totals_string = session_totals_string +  "B.P. sausage:     " + to_string(total_bps) + "\n";
    if (total_bpnm > 0)
        session_totals_string = session_totals_string +  "B.P. no meat:     " + to_string(total_bpnm) + "\n";
    if (total_bpbm > 0)
        session_totals_string = session_totals_string +  "B.P. both meats:  " + to_string(total_bpbm) + "\n";
    if (total_ft > 0)
        session_totals_string = session_totals_string +  "French Toast:     " + to_string(total_ft) + "\n";
    if (total_p > 0)
        session_totals_string = session_totals_string +  "Pancakes:         " + to_string(total_p) + "\n";
    if (total_ps > 0)
        session_totals_string = session_totals_string +  "Pancake (single): " + to_string(total_ps) + "\n";
    if (total_ccp > 0)
        session_totals_string = session_totals_string +  "CC Pancakes:      " + to_string(total_ccp) + "\n";
    if (total_ccps > 0)
        session_totals_string = session_totals_string +  "CC Pancake (one): " + to_string(total_ccps) + "\n";
    if (total_bsb > 0)
        session_totals_string = session_totals_string +  "B.S. w/ bacon:    " + to_string(total_bsb) + "\n";
    if (total_bss > 0)
        session_totals_string = session_totals_string +  "B.S. w/ sausage:  " + to_string(total_bss) + "\n";
    if (total_bsnm > 0)
        session_totals_string = session_totals_string +  "B.S. no meat:     " + to_string(total_bsnm) + "\n";
    if (total_bsne > 0)
        session_totals_string = session_totals_string +  "B.S. no egg:      " + to_string(total_bsne) + "\n";
    if (total_se > 0)
        session_totals_string = session_totals_string +  "Eggs (side):      " + to_string(total_se)+ "\n";
    if (total_sb > 0)
        session_totals_string = session_totals_string +  "Bacon (side):     " + to_string(total_sb)+ "\n";
    if (total_sp > 0)
        session_totals_string = session_totals_string +  "Potatoes (side):  " + to_string(total_sp) + "\n";
    if (total_ss > 0)
        session_totals_string = session_totals_string +  "Sausage (side):   " + to_string(total_ss) + "\n";
    
    return session_totals_string;
    
}


//
// ingredient quantities:
//
int amnt_bacon = 0;    
int amnt_sausage = 0;
int amnt_egg = 0;
int amnt_potatoes = 0;
int amnt_pancakes = 0;
int amnt_ft = 0;
string amounts_output();



// ///
// /// Ingredient display
// ///

string amounts_output() {
    
    string ingredients_needed = "-- Upcoming Quantities --\n\n";
    
    if(amnt_bacon > 0)
        ingredients_needed = ingredients_needed + "Bacon:      " + to_string(amnt_bacon) + "\n";
    
    if(amnt_sausage > 0)
        ingredients_needed = ingredients_needed + "Sausage:    " + to_string(amnt_sausage) + "\n";
    
    if(amnt_egg > 0)
        ingredients_needed = ingredients_needed + "Egg:        " + to_string(amnt_egg) + "\n";
    
    if(amnt_potatoes > 0)
        ingredients_needed = ingredients_needed + "Potatoes:   " + to_string(amnt_potatoes) + "\n";
    
    if(amnt_pancakes > 0)
        ingredients_needed = ingredients_needed + "Pancakes:   " + to_string(amnt_pancakes) + "\n";
    
    if(amnt_ft > 0)
        ingredients_needed = ingredients_needed + "FT:        " + to_string(amnt_ft) + "\n";
    
    return ingredients_needed;

}



//
// List set up
//
list<Ticket> ticket_list;
list<Ticket>::iterator pos_0 = ticket_list.begin();     // beginning of list
list<Ticket>::iterator pos_1 = (++(ticket_list.begin()) );      // position after the beginning...
list<Ticket>::iterator pos_2 = (++(++(ticket_list.begin()) ) );
list<Ticket>::iterator pos_3 = (++(++(++(ticket_list.begin()) ) ) );



// ///
// /// Ticket class member functions
// ///


Ticket::Ticket() {
    
    num_q = 0;      // number of regular quesadillas
    num_qb = 0;     // quesadilla bacon
    num_qnm = 0;    // quesadilla no meat
    num_qnp = 0;    // quesadlla no peppers
    num_qne = 0;    // quesadilla no egg
    num_qnc = 0;    // quesadilla no cheese

    num_bpb = 0;    // number of breakfast plates
    num_bps = 0;    // breafast plate sausage
    num_bpnm = 0;   // breakfast plate no meat
    num_bpbm = 0;   // breakfast plate both meats

    num_ft = 0;     // french toast

    num_p = 0;      // order of pacakes
    num_ps = 0;     // single pancake
    num_ccp = 0;    // order of chocolate chip pancakes
    num_ccps = 0;   // single chocolate chip pancake

    num_bsb = 0;    // breakfast sandwich bacon
    num_bss = 0;    // breakfast sandwich sausage
    num_bsnm = 0;   // breakfast sandwich no meat
    num_bsne = 0;   // breakfast sandwich no egg

    num_se = 0;     // side egg
    num_sec = 0;    //side egg w/cheese
    num_sb = 0;     // side bacon
    num_sp = 0;     // side potatoes
    num_ss = 0;     // side sausage
    
    string incoming_order_string = "";
    
}



void Ticket::parse(string incoming_string) {
        // takes the string and parses out order items, sets quantities of the ticket's data mambers
    
    int placeholder = 0;
    int next_white_space_pos = 0;
    string item_type = "";
    
    while( placeholder < incoming_string.size() ) {
        next_white_space_pos = incoming_string.find(" ", placeholder);
        item_type = incoming_string.substr(placeholder, next_white_space_pos-placeholder);
            // the item code is between the position marker and the next few positions, where the number of positions is the diffrence btween next_white_space_pos and placholder
        
        // Quesadillas
        
        if (item_type == "q") {
            ++num_q;
            ++total_q;
            ++amnt_sausage;
            ++amnt_egg;
            }
        
        if (item_type == "qb") {
            ++num_qb;
            ++total_qb;
            ++amnt_bacon;
            ++amnt_egg;
            }
        
        if (item_type == "qnm") {
            ++num_qnm;
            ++total_qnm;
            ++amnt_egg;
            }
        
        if (item_type == "qnp") {
            ++num_qnp;
            ++total_qnp;
            }
        
        if (item_type == "qne") {
            ++num_qne;
            ++total_qne;
            ++amnt_sausage;
            }
        
        if (item_type == "qnc") {
            ++num_qnc;
            ++total_qnc;
            ++amnt_egg;
            ++amnt_sausage;
            }
        
        
        // Breakfast Plates
        
        if (item_type == "bpb") {
            ++num_bpb;
            ++total_bpb;
            ++amnt_egg;
            ++amnt_potatoes;
            ++amnt_bacon;
            }
        
        if (item_type == "bps") {
            ++num_bps;
            ++total_bps;
            ++amnt_egg;
            ++amnt_potatoes;
            ++amnt_sausage;
            }
        
        if (item_type == "bpnm") {
            ++num_bpnm;
            ++total_bpnm;
            ++amnt_egg;
            ++amnt_potatoes;
            }
        
        if (item_type == "bpbm") {
            ++num_bpbm;
            ++total_bpbm;
            ++amnt_egg;
            ++amnt_potatoes;
            ++amnt_bacon;
            ++amnt_sausage;
            }

        
        // French Toast
        
        if (item_type == "ft") {
            ++num_ft;
            ++total_ft;
            ++amnt_ft;
            }
        
        // Panackes
        
        if (item_type == "p") {
            ++num_p;
            ++total_p;
            amnt_pancakes = amnt_pancakes + 3;
            }
        
        if (item_type == "ps") {
            ++num_ps;
            ++total_ps;
            ++amnt_pancakes;
            }
        
        if (item_type == "ccp") {
            ++num_ccp;
            ++total_ccp;
            amnt_pancakes = amnt_pancakes + 3;
            }
        
        if (item_type == "ccps") {
            ++num_ccps;
            ++total_ccps;
            ++amnt_pancakes;
            }
        
        // Breakfast Sandwiches
        
        if (item_type == "bsb") {
            ++num_bsb;
            ++total_bsb;
            ++amnt_bacon;
            }
        
        if (item_type == "bss") {
            ++num_bss;
            ++total_bss;
            ++amnt_sausage;
            }
        
        if (item_type == "bsnm") {
            ++num_bsnm;
            ++total_bsnm;
            }
        
        if (item_type == "bsne") {
            ++num_bsne;
            ++total_bsne;
            }
        
        // Sides
        
        if (item_type == "se") {
            ++num_se;
            ++total_se;
            ++ amnt_egg;
            }
        
        if (item_type == "sec") {
            ++num_sec;
            ++total_se;
            ++ amnt_egg;
            }

        
        if (item_type == "sb") {
            ++num_sb;
            ++total_sb;
            ++amnt_bacon;
            }
        
        if (item_type == "sp") {
            ++num_sp;
            ++total_sp;
            ++amnt_potatoes;
            }
        
        if (item_type == "ss") {
            ++num_ss;
            ++total_ss;
            ++amnt_sausage;
            }
        
        
        if (next_white_space_pos < 0)
            placeholder = incoming_string.size();
                // next_white_space_pos will be give a value of -1 by the compiler if it
                // "falls off the end" of the string. In this case we are done parsing through
                // so we will set placeholder to incoming_string.size() to terminate the loop
        
        else
            placeholder = next_white_space_pos + 1;
                // Advance placeholder to a position just beyond where next whitespace was
                // - But only do so if the whitespace position is a positive value
                // (i.e. hasn't "fallen off the end")
    }
}



void Ticket::recieve_incoming_order(string incoming_order_string) {

    parse(incoming_order_string);
    
}



string Ticket::give_ticket_contents() {
    
    string ticket_contents = "";
    
    if (num_q > 0)
        ticket_contents = ticket_contents +  "Ques:             " + to_string(num_q) + "\n";
    if (num_qb > 0)
        ticket_contents = ticket_contents +  "Ques w/ bacon:    " + to_string(num_qb) + "\n";
    if (num_qnm > 0)
        ticket_contents = ticket_contents +  "Ques no meat:     " + to_string(num_qnm) + "\n";
    if (num_qne > 0)
        ticket_contents = ticket_contents +  "Ques no eggs:     " + to_string(num_qne) + "\n";
    if (num_qnp > 0)
        ticket_contents = ticket_contents +  "Ques no peppers:  " + to_string(num_qnp) + "\n";
    if (num_qnc > 0)
        ticket_contents = ticket_contents +  "Ques no cheese:   " + to_string(num_qnc) + "\n";
    if (num_bpb > 0)
        ticket_contents = ticket_contents +  "B.P. bacon:       " + to_string(num_bpb) + "\n";
    if (num_bps >0)
        ticket_contents = ticket_contents +  "B.P. sausage:     " + to_string(num_bps) + "\n";
    if (num_bpnm > 0)
        ticket_contents = ticket_contents +  "B.P. no meat:     " + to_string(num_bpnm) + "\n";
    if (num_bpbm > 0)
        ticket_contents = ticket_contents +  "B.P. both meats:  " + to_string(num_bpbm) + "\n";
    if (num_ft > 0)
        ticket_contents = ticket_contents +  "French Toast:     " + to_string(num_ft) + "\n";
    if (num_p > 0)
        ticket_contents = ticket_contents +  "Pancakes:         " + to_string(num_p) + "\n";
    if (num_ps > 0)
        ticket_contents = ticket_contents +  "Pancake (single): " + to_string(num_ps) + "\n";
    if (num_ccp > 0)
        ticket_contents = ticket_contents +  "CC Pancakes:      " + to_string(num_ccp) + "\n";
    if (num_ccps > 0)
        ticket_contents = ticket_contents +  "CC Pancake (one): " + to_string(num_ccps) + "\n";
    if (num_bsb > 0)
        ticket_contents = ticket_contents +  "B.S. w/ bacon:    " + to_string(num_bsb) + "\n";
    if (num_bss > 0)
        ticket_contents = ticket_contents +  "B.S. w/ sausage:  " + to_string(num_bss) + "\n";
    if (num_bsnm > 0)
        ticket_contents = ticket_contents +  "B.S. no meat:     " + to_string(num_bsnm) + "\n";
    if (num_bsne > 0)
        ticket_contents = ticket_contents +  "B.S. no egg:      " + to_string(num_bsne) + "\n";
    if (num_se > 0)
        ticket_contents = ticket_contents +  "Eggs (side):      " + to_string(num_se)+ "\n";
    if (num_sb > 0)
        ticket_contents = ticket_contents +  "Bacon (side):     " + to_string(num_sb)+ "\n";
    if (num_sp > 0)
        ticket_contents = ticket_contents +  "Potatoes (side):  " + to_string(num_sp) + "\n";
    if (num_ss > 0)
        ticket_contents = ticket_contents +  "Sausage (side):   " + to_string(num_ss) + "\n";
    
    return ticket_contents;
}



void Ticket::update_ingredient_totals() {
    
    if (num_q > 0) {
        amnt_sausage = amnt_sausage - num_q;
        amnt_egg = amnt_egg - num_q;
        }
    
    if (num_qb > 0) {
        amnt_bacon = amnt_bacon - num_qb;
        amnt_egg = amnt_egg - num_qb;
        }
    
    if (num_qnm > 0)
        amnt_egg = amnt_egg - num_qnm;
    
    if (num_qne > 0)
        amnt_sausage = amnt_sausage - num_qne;
    
    if (num_qnp > 0) {
        amnt_egg = amnt_egg - num_qnp;
        amnt_sausage = amnt_sausage - num_qnp;
        }
    
    if (num_qnc > 0) {
        amnt_egg = amnt_egg - num_qnc;
        amnt_sausage = amnt_sausage - num_qnc;
        }
    
    if (num_bpb > 0) {
        amnt_bacon = amnt_bacon - num_bpb;
        amnt_potatoes = amnt_potatoes - num_bpb;
        amnt_egg = amnt_egg - num_bpb;
        }
    
    if (num_bps >0) {
        amnt_sausage = amnt_sausage - num_bps;
        amnt_potatoes = amnt_potatoes - num_bps;
        amnt_egg = amnt_egg - num_bps;
        }
    
    if (num_bpnm > 0) {
        amnt_potatoes = amnt_potatoes - num_bpnm;
        amnt_egg = amnt_egg - num_bpnm;
        }
    
    if (num_bpbm > 0) {
        amnt_bacon = amnt_bacon - num_bpbm;
        amnt_sausage = amnt_sausage - num_bpbm;
        amnt_potatoes = amnt_potatoes - num_bpbm;
        amnt_egg = amnt_egg - num_bpbm;
        }
    
    if (num_ft > 0)
        amnt_ft = amnt_ft - num_ft;
    
    if (num_p > 0)
        amnt_pancakes = amnt_pancakes - (num_p*3);
    
    if (num_ps > 0)
        amnt_pancakes = amnt_pancakes - num_ps;
    
    if (num_ccp > 0)
        amnt_pancakes = amnt_pancakes - (num_ccp*3);
    
    if (num_ccps > 0)
        amnt_pancakes = amnt_pancakes - num_ccps;
    
    if (num_bsb > 0)
        amnt_bacon = amnt_bacon - num_bsb;
    
    if (num_bss > 0)
        amnt_sausage = amnt_sausage - num_bss;
    
    if (num_bsnm > 0)
        ;
    
    if (num_bsne > 0)
        ;
    
    if (num_se > 0)
        amnt_egg = amnt_egg - num_se;
    
    if (num_sb > 0)
        amnt_bacon = amnt_bacon - num_sb;
    
    if (num_sp > 0)
        amnt_potatoes = amnt_potatoes - num_sp;
    
    if (num_ss > 0)
        amnt_sausage = amnt_sausage - num_ss;
}





// ///
// /// Obj-C implementation and UI
// ///

@implementation ViewController

/*
"@synthesize" creates getter and setter methods and the backing instance variable
Like this:

Getter method
-(NSString*) firstName
{
    return _firstName;
}

Setter method
-(void) setFirstName:(NSString*)newString {
    [newString retain];       // Retain the new NSString object
    [_firstName release];     // Release the NSString object _firstName is referencing
    _firstName = newString;   // Make the new assignment
}
 */

@synthesize ticket0;
@synthesize ticket1;
@synthesize ticket2;
@synthesize ticket3;
@synthesize ingredient_quantities;
@synthesize incoming_ticket_field;



- (void)viewDidLoad {  // Do any additional setup after loading the view.
    [super viewDidLoad];
    // So text areas are non-nil (which causes compiler errors):
    [ticket0 setStringValue: @""];
    [ticket1 setStringValue: @""];
    [ticket2 setStringValue: @""];
    [ticket3 setStringValue: @""];
    [ingredient_quantities setStringValue: @""];
    }



- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];
    // Update the view, if already loaded.
    }



- (IBAction)sumbission_button:(id)sender {
    
    if ([incoming_ticket_field.stringValue  isEqual: @"session totals"]) {
        [ingredient_quantities setStringValue: [NSString stringWithCString: session_totals().c_str() encoding: [NSString defaultCStringEncoding]]];
        }
    
    else {
    
        Ticket new_ticket;
            // make a new object
        
        string cpp_pass = [[incoming_ticket_field stringValue] UTF8String];
            // get string from user input

        new_ticket.recieve_incoming_order(cpp_pass);
            // send that to te new ticket object

        ticket_list.push_back(new_ticket);
            // add the new ticket to the list (similar to a queue)
        
        //
        // Render text boxes with Obj-C conversion:
        //
        
        if (ticket_list.size() > 0 ) {
            
            [ticket0 setStringValue: [NSString stringWithCString: ticket_list.front().give_ticket_contents().c_str() encoding: [NSString defaultCStringEncoding]]];
                // returns the string derrived from the first position (i.e. position #0) in the list "ticket_list".  "ticket0" of the User Interface will display this
        }

        if (ticket_list.size() > 1 ) {
            
            pos_1 = (++(ticket_list.begin()) );
                // reset the iterator to the correct position on the list
            
            [ticket1 setStringValue: [NSString stringWithCString: pos_1->give_ticket_contents().c_str() encoding: [NSString defaultCStringEncoding]]];
            }

        if (ticket_list.size() > 2 ) {
            
            pos_2 = (++(++(ticket_list.begin()) ) );
                // reset the iterator to the correct position on the list
            
            [ticket2 setStringValue: [NSString stringWithCString: pos_2->give_ticket_contents().c_str() encoding: [NSString defaultCStringEncoding]]];
            }
        
        if (ticket_list.size() > 3 ) {

            pos_3 = (++(++(++(ticket_list.begin()) ) ) );
                // reset the iterator to the correct position on the list
            
            [ticket3 setStringValue: [NSString stringWithCString: pos_3->give_ticket_contents().c_str() encoding: [NSString defaultCStringEncoding]]];
            }
        
        //
        // Display ingredient amounts
        //
        [ingredient_quantities setStringValue: [NSString stringWithCString: amounts_output().c_str() encoding: [NSString defaultCStringEncoding]]];
        
        //
        // Clear text in preparation for future entries
        //
        [incoming_ticket_field setStringValue:@""];
    }
    
    // Example of Obj-C code for geting input field text to ticket0
    //[ticket0 setStringValue: [incoming_ticket_field stringValue]];
}




- (IBAction)order_fulfilled0:(id)sender {
    
    if (ticket_list.size() < 1)
        [ticket0 setStringValue: @""];
        // redundancy in case the button is pressed but there is no ticket to remove

    
    if (ticket_list.size() == 1) {
        
        pos_0 = ticket_list.begin();
        pos_0->update_ingredient_totals();
        ticket_list.pop_front();
            // Erase front element and adjust ingredient totals
        
        [ticket0 setStringValue: @""];
        [ticket1 setStringValue: @""];
        [ticket2 setStringValue: @""];
        [ticket3 setStringValue: @""];
        [ingredient_quantities setStringValue: [NSString stringWithCString: amounts_output().c_str() encoding: [NSString defaultCStringEncoding]]];
            // Update display content
        }
    
    if (ticket_list.size() == 2) {
        
        pos_0 = ticket_list.begin();
        pos_0->update_ingredient_totals();
        ticket_list.pop_front();
            // Erase the front element and adjust ingredient totals
        
        [ticket0 setStringValue: [NSString stringWithCString: ticket_list.front().give_ticket_contents().c_str() encoding: [NSString defaultCStringEncoding]]];
        [ticket1 setStringValue: @""];
        [ticket2 setStringValue: @""];
        [ticket3 setStringValue: @""];
        [ingredient_quantities setStringValue: [NSString stringWithCString: amounts_output().c_str() encoding: [NSString defaultCStringEncoding]]];
            // Update display content
        }
    
    if ( ticket_list.size() == 3) {
        
        pos_0 = ticket_list.begin();
        pos_0->update_ingredient_totals();
        ticket_list.pop_front();
            // Erase front element and adjust ingredient totals
        
        pos_1 = (++(ticket_list.begin()) );
            // Reset / re-confirm iterators are correct
        
        [ticket0 setStringValue: [NSString stringWithCString: ticket_list.front().give_ticket_contents().c_str() encoding: [NSString defaultCStringEncoding]]];
        [ticket1 setStringValue: [NSString stringWithCString: pos_1->give_ticket_contents().c_str() encoding: [NSString defaultCStringEncoding]]];
        [ticket2 setStringValue: @""];
        [ticket3 setStringValue: @""];
        [ingredient_quantities setStringValue: [NSString stringWithCString: amounts_output().c_str() encoding: [NSString defaultCStringEncoding]]];
                            // Update display content
        }
    
    if ( ticket_list.size() == 4) {
        
        pos_0 = ticket_list.begin();
        pos_0->update_ingredient_totals();
        ticket_list.pop_front();
            // Erase front element and adjust ingredient totals
        
        pos_1 = (++(ticket_list.begin()) );
        pos_2 = (++(++(ticket_list.begin()) ) );
        // Reset / re-confirm iterators are correct
        
        [ticket0 setStringValue: [NSString stringWithCString: ticket_list.front().give_ticket_contents().c_str() encoding: [NSString defaultCStringEncoding]]];
        [ticket1 setStringValue: [NSString stringWithCString: pos_1->give_ticket_contents().c_str() encoding: [NSString defaultCStringEncoding]]];
        [ticket2 setStringValue: [NSString stringWithCString: pos_2->give_ticket_contents().c_str() encoding: [NSString defaultCStringEncoding]]];
        [ticket3 setStringValue: @""];
        [ingredient_quantities setStringValue: [NSString stringWithCString: amounts_output().c_str() encoding: [NSString defaultCStringEncoding]]];
                            // Update display content
        }
    
    if ( ticket_list.size() > 4) {
        
        pos_0 = ticket_list.begin();
        pos_0->update_ingredient_totals();
        ticket_list.pop_front();
                    // Erase front element and adjust ingredient totals
        
        pos_1 = (++(ticket_list.begin()) );
        pos_2 = (++(++(ticket_list.begin()) ) );
        pos_3 = (++(++(++(ticket_list.begin()) ) ) );
            // Reset / re-confirm iterators are correct
        
        [ticket0 setStringValue: [NSString stringWithCString: ticket_list.front().give_ticket_contents().c_str() encoding: [NSString defaultCStringEncoding]]];
        [ticket1 setStringValue: [NSString stringWithCString: pos_1->give_ticket_contents().c_str() encoding: [NSString defaultCStringEncoding]]];
        [ticket2 setStringValue: [NSString stringWithCString: pos_2->give_ticket_contents().c_str() encoding: [NSString defaultCStringEncoding]]];
        [ticket3 setStringValue: [NSString stringWithCString: pos_3->give_ticket_contents().c_str() encoding: [NSString defaultCStringEncoding]]];
        [ingredient_quantities setStringValue: [NSString stringWithCString: amounts_output().c_str() encoding: [NSString defaultCStringEncoding]]];
            // Update display content
        }

}




- (IBAction)order_fufilled1:(id)sender {
    
    if (ticket_list.size() < 2)
        [ticket1 setStringValue: @""];
            // redundancy in case the button is pressed but there is no ticket to remove
    
    if (ticket_list.size() == 2) {
        pos_1 = (++(ticket_list.begin()) );
        pos_1->update_ingredient_totals();
        pos_1 = ticket_list.erase(pos_1);
        
            // Re-confirm iterator is correct and erase element, then adjust ingredient totals

        [ticket1 setStringValue: @""];
        [ticket2 setStringValue: @""];
        [ticket3 setStringValue: @""];
        [ingredient_quantities setStringValue: [NSString stringWithCString: amounts_output().c_str() encoding: [NSString defaultCStringEncoding]]];
            // When this is the back of the ticket list we clear the screen at this position
            // and the screen slots behind it which should also be empty
        }
    
    if (ticket_list.size() == 3) {
        pos_1 = (++(ticket_list.begin()) );
        pos_1->update_ingredient_totals();
        pos_1 = ticket_list.erase(pos_1);
        
            // Re-confirm iterator is correct and erase element, then adjust ingredient totals
        
        pos_1 = (++(ticket_list.begin()) );
            // Reset / re-confirm iterators are correct
        
        [ticket1 setStringValue: [NSString stringWithCString: pos_1->give_ticket_contents().c_str() encoding: [NSString defaultCStringEncoding]]];
        [ticket2 setStringValue: @""];
        [ticket3 setStringValue: @""];
        [ingredient_quantities setStringValue: [NSString stringWithCString: amounts_output().c_str() encoding: [NSString defaultCStringEncoding]]];
                    // Update display content
        }
    
    if (ticket_list.size() == 4) {
        
        pos_1 = (++(ticket_list.begin()) );
        pos_1->update_ingredient_totals();
        pos_1 = ticket_list.erase(pos_1);
        
            // Re-confirm iterator is correct and erase element, then adjust ingredient totals
        
        pos_1 = (++(ticket_list.begin()) );
        pos_2 = (++(++(ticket_list.begin()) ) );
            // Reset / re-confirm iterators are correct
        
        [ticket1 setStringValue: [NSString stringWithCString: pos_1->give_ticket_contents().c_str() encoding: [NSString defaultCStringEncoding]]];
        [ticket2 setStringValue: [NSString stringWithCString: pos_2->give_ticket_contents().c_str() encoding: [NSString defaultCStringEncoding]]];
        [ticket3 setStringValue: @""];
        [ingredient_quantities setStringValue: [NSString stringWithCString: amounts_output().c_str() encoding: [NSString defaultCStringEncoding]]];
                    // Update display content
        }
    
    if (ticket_list.size() > 4) {
        
        pos_1 = (++(ticket_list.begin()) );
        pos_1->update_ingredient_totals();
        pos_1 = ticket_list.erase(pos_1);
        
            // Re-confirm iterator is correct and erase element, then adjust ingredient totals
        
        pos_1 = (++(ticket_list.begin()) );
        pos_2 = (++(++(ticket_list.begin()) ) );
        pos_3 = (++(++(++(ticket_list.begin()) ) ) );
            // Reset / re-confirm iterators are correct
        
        [ticket1 setStringValue: [NSString stringWithCString: pos_1->give_ticket_contents().c_str() encoding: [NSString defaultCStringEncoding]]];
        [ticket2 setStringValue: [NSString stringWithCString: pos_2->give_ticket_contents().c_str() encoding: [NSString defaultCStringEncoding]]];
        [ticket3 setStringValue: [NSString stringWithCString: pos_3->give_ticket_contents().c_str() encoding: [NSString defaultCStringEncoding]]];
        [ingredient_quantities setStringValue: [NSString stringWithCString: amounts_output().c_str() encoding: [NSString defaultCStringEncoding]]];
            // Update display content
        }

}




- (IBAction)order_fufilled2:(id)sender {
   
    if (ticket_list.size() < 3)
        [ticket2 setStringValue: @""];
            // redundancy in case the button is pressed but there is no ticket to remove
    
    if (ticket_list.size() == 3) {
        pos_2 = (++(++(ticket_list.begin()) ) );
        pos_2->update_ingredient_totals();
        pos_2 = ticket_list.erase(pos_2);
        
            // Re-confirm iterator is correct and erase element, then adjust ingredient totals
        
        [ticket2 setStringValue: @""];
        [ticket3 setStringValue: @""];
        [ingredient_quantities setStringValue: [NSString stringWithCString: amounts_output().c_str() encoding: [NSString defaultCStringEncoding]]];
            // When this is the back of the ticket list we clear the screen at this position
            // and the screen slots behind it which should also be empty
        }
    
    if (ticket_list.size() == 4) {
        pos_2 = (++(++(ticket_list.begin()) ) );
        pos_2->update_ingredient_totals();
        pos_2 = ticket_list.erase(pos_2);
        
            // Re-confirm iterator is correct and erase element, then adjust ingredient totals

        
        pos_2 = (++(++(ticket_list.begin()) ) );
            // Reset / re-confirm iterators are correct
        
        [ticket2 setStringValue: [NSString stringWithCString: pos_2->give_ticket_contents().c_str() encoding: [NSString defaultCStringEncoding]]];
        [ticket3 setStringValue: @""];
        [ingredient_quantities setStringValue: [NSString stringWithCString: amounts_output().c_str() encoding: [NSString defaultCStringEncoding]]];
            // Update display content
        }
    
    if (ticket_list.size() > 4) {
        
        pos_2 = (++(ticket_list.begin()) );
        pos_2->update_ingredient_totals();
        pos_2 = ticket_list.erase(pos_1);
        
            // Re-confirm iterator is correct and erase element, then adjust ingredient totals

        
        pos_2 = (++(++(ticket_list.begin()) ) );
        pos_3 = (++(++(++(ticket_list.begin()) ) ) );
            // Reset / re-confirm iterators are correct
        
        [ticket2 setStringValue: [NSString stringWithCString: pos_2->give_ticket_contents().c_str() encoding: [NSString defaultCStringEncoding]]];
        [ticket3 setStringValue: [NSString stringWithCString: pos_3->give_ticket_contents().c_str() encoding: [NSString defaultCStringEncoding]]];
        [ingredient_quantities setStringValue: [NSString stringWithCString: amounts_output().c_str() encoding: [NSString defaultCStringEncoding]]];
            // Update display content
        }
    
}


@end








