//
//  ViewController.h
//  POS New Test
//
//  Created by Tyler Jenkins on 9/19/16.
//  Copyright © 2016 Tyler Jenkins. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#include "Backend_Implementation.hpp"
#include <string>
#include <list>
#include <iterator>
using namespace std;



// ///
// /// Ticket class declaration
// ///

class Ticket {
    
private:

    int num_q;      // number of regular quesadillas
    int num_qb;     // quesadilla bacon
    int num_qnm;    // quesadilla no meat
    int num_qnp;    // quesadlla no peppers
    int num_qne;    // quesadilla no egg
    int num_qnc;    // quesadilla no cheese
    
    int num_bpb;    // number of breakfast plates
    int num_bps;    // breafast plate sausage
    int num_bpnm;   // breakfast plate no meat
    int num_bpbm;   // breakfast plate both meats
    
    int num_ft;     // french toast
    
    int num_p;      // order of pacakes
    int num_ps;     // single pancake
    int num_ccp;    // order of chocolate chip pancakes
    int num_ccps;   // single chocolate chip pancake
    
    int num_bsb;    // breakfast sandwich bacon
    int num_bss;    // breakfast sandwich sausage
    int num_bsnm;   // breakfast sandwich no meat
    int num_bsne;   // breakfast sandwich no egg
    
    int num_se;     // side eggs
    int num_sec;    // side eggs w/ cheese
    int num_sb;     // side bacon
    int num_sp;     // side potatoes
    int num_ss;     // side sausage
        
    string incoming_order_string;

public:
    
    Ticket();
        // Constructor
    void parse(string incoming_string);
        // Takes the string gathered by "recieve_incoming_order" and parses through it in order to appropriatley update the object's data members
    void recieve_incoming_order(string incoming);
        // recieves the text the user typed into the UI text field and updates the the object's "incoming_order_string" data member, plus initiates the parsing function
    string give_ticket_contents ();
        // returns a string which consists of the ticket's contents, appropriatly formatted
    void update_ingredient_totals();
        // uses the object's data member to update the aggregate ingredient totals
        // - will be used when an object on the list is deleted
};



// ///
// /// UI / View Controller set up
// ///

@interface ViewController : NSViewController

// "property" will reference the instance variable
@property (weak) IBOutlet NSTextField *ticket0; // first ticket in
@property (weak) IBOutlet NSTextField *ticket1; // second ticket in
@property (weak) IBOutlet NSTextField *ticket2; // third ticket in
@property (weak) IBOutlet NSTextField *ticket3; // fouth ticket in
@property (weak) IBOutlet NSTextField *ingredient_quantities; // to display ingredient quantities
@property (weak) IBOutlet NSTextField *incoming_ticket_field; // place to enter a new ticket
- (IBAction)sumbission_button:(id)sender;
- (IBAction)order_fulfilled0:(id)sender;
- (IBAction)order_fufilled1:(id)sender;
- (IBAction)order_fufilled2:(id)sender;

@end







