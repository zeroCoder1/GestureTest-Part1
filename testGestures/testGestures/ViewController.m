//
//  ViewController.m
//  testGestures
//
//  Created by Shrutesh on 17/01/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    // SWIPE GESTURES
    
    
    UISwipeGestureRecognizer *swipe1 = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipMethod1:)];
    swipe1.direction = UISwipeGestureRecognizerDirectionRight;
    [[self view ]  addGestureRecognizer:swipe1];
    
    
    UISwipeGestureRecognizer *swipe2 = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipMethod2:)];
    swipe2.direction = UISwipeGestureRecognizerDirectionLeft;
    [[self view]  addGestureRecognizer:swipe2];
  
    
    
    UISwipeGestureRecognizer *swipe3 = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipMethod3:)];
    swipe3.direction = UISwipeGestureRecognizerDirectionUp;
    [[self view ]  addGestureRecognizer:swipe3];
    
    
    UISwipeGestureRecognizer *swipe4 = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipMethod4:)];
    swipe4.direction = UISwipeGestureRecognizerDirectionDown;
    [[self view]  addGestureRecognizer:swipe4];
    
    
    //TAP GESTURES
    
    UITapGestureRecognizer * tap3 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapMethod3:)];
    tap3.numberOfTapsRequired = 3;
    [[self view]addGestureRecognizer:tap3];
    
    
    
    UITapGestureRecognizer * tap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapMethod2:)];
    tap2.numberOfTapsRequired = 2;
    [tap2 requireGestureRecognizerToFail:tap3]; //---> disable triple tap
    [[self view]addGestureRecognizer:tap2];
    
    
    UITapGestureRecognizer * tap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapMethod1:)];
    tap1.numberOfTapsRequired = 1;
    [tap1 requireGestureRecognizerToFail:tap3]; //---> disable triple tap
    [tap1 requireGestureRecognizerToFail:tap2]; //---> disable double tap
    [[self view]addGestureRecognizer:tap1];
    
    
    //LONG PRESS
    
    UILongPressGestureRecognizer *longThing = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longThingMethod:)];
    longThing.minimumPressDuration = 0.5;
    [[self view] addGestureRecognizer:longThing];
    
}



-(void)swipMethod1:(UIGestureRecognizer*)sender{
    
    if (isAdded1 == NO) {
        isAdded1 = YES;
        myLabel1 = [[UILabel alloc] initWithFrame:CGRectMake(500, 500, 200, 100)];
        myLabel1.text = @"RIGHT";
        myLabel1.backgroundColor = [UIColor clearColor];
        myLabel1.font = [UIFont fontWithName:@"Helvetica" size: 30.0];
        myLabel1.textColor = [UIColor redColor];
        [self.view addSubview:myLabel1];
        
        
        return;
    }
    
    if (isAdded1 == YES) {
        isAdded1 = NO;
        
        [myLabel1 removeFromSuperview];
        
        
        
    }
    
}



-(void)swipMethod2:(UIGestureRecognizer*)sender{  
    
    
    if (isAdded2 == NO) {
        isAdded2 = YES;
        myLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(300, 300, 200, 100)];
        myLabel2.text = @"LEFT";
        myLabel2.backgroundColor = [UIColor clearColor];
        myLabel2.font = [UIFont fontWithName:@"Helvetica" size: 30.0];
        myLabel2.textColor = [UIColor redColor];
        [self.view addSubview:myLabel2];
        
        
        
        return;
    }
    
    if (isAdded2 == YES) {
        isAdded2 = NO;
        
        
        [myLabel2 removeFromSuperview];
        
        
        
    }
    
    
    
    
}

-(void)swipMethod3:(UIGestureRecognizer*)sender{
    
    if (isAdded7 == NO) {
        isAdded7 = YES;
        myLabel7 = [[UILabel alloc] initWithFrame:CGRectMake(500, 700, 200, 100)];
        myLabel7.text = @"UP";
        myLabel7.backgroundColor = [UIColor clearColor];
        myLabel7.font = [UIFont fontWithName:@"Helvetica" size: 30.0];
        myLabel7.textColor = [UIColor redColor];
        [self.view addSubview:myLabel7];
        
        
        return;
    }
    
    if (isAdded7 == YES) {
        isAdded7 = NO;
        
        [myLabel7 removeFromSuperview];
        
        
        
    }
    
}



-(void)swipMethod4:(UIGestureRecognizer*)sender{  
    
    
    if (isAdded8 == NO) {
        isAdded8 = YES;
        myLabel8 = [[UILabel alloc] initWithFrame:CGRectMake(300, 400, 200, 100)];
        myLabel8.text = @"DOWN";
        myLabel8.backgroundColor = [UIColor clearColor];
        myLabel8.font = [UIFont fontWithName:@"Helvetica" size: 30.0];
        myLabel8.textColor = [UIColor redColor];
        [self.view addSubview:myLabel8];
        
        
        
        return;
    }
    
    if (isAdded8 == YES) {
        isAdded8 = NO;
        
        
        [myLabel8 removeFromSuperview];
        
        
        
    }
    
    
    
    
}


-(void)tapMethod3:(UIGestureRecognizer*)sender{
    
    if (isAdded3 == NO) {
        isAdded3 = YES; 
        myLabel5 = [[UILabel alloc] initWithFrame:CGRectMake(250, 250, 200, 100)];
        myLabel5.text = @"TRIPLE TAP";
        myLabel5.backgroundColor = [UIColor clearColor];
        myLabel5.font = [UIFont fontWithName:@"Helvetica" size: 30];
        myLabel5.textColor = [UIColor redColor];
        [self.view addSubview:myLabel5];
        return;
        
    }   
    
    if (isAdded3 == YES) {
        isAdded3 = NO;
        
        
        [myLabel5 removeFromSuperview];
        
        
        
    }
    
}


-(void)tapMethod2:(UIGestureRecognizer*)sender{
    
    if (isAdded4 == NO) {
        isAdded4 = YES;
        myLabel4 = [[UILabel alloc] initWithFrame:CGRectMake(400, 600, 200, 100)];
        myLabel4.text = @"DOUBLE TAP";
        myLabel4.backgroundColor = [UIColor clearColor];
        myLabel4.font = [UIFont fontWithName:@"Helvetica" size: 30];
        myLabel4.textColor = [UIColor redColor];
        [self.view addSubview:myLabel4];
        return;
    }
    
    if (isAdded4 == YES) {
        isAdded4 = NO;
        
        
        [myLabel4 removeFromSuperview];
        
        
        
    }    
    
}


-(void)tapMethod1:(UIGestureRecognizer*)sender{
    
    
    if (isAdded5 == NO) {
        isAdded5 = YES;
        myLabel3 = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 200, 100)];
        myLabel3.text = @"SINGLE TAP";
        myLabel3.backgroundColor = [UIColor clearColor];
        myLabel3.font = [UIFont fontWithName:@"Helvetica" size: 30.0];
        myLabel3.textColor = [UIColor redColor];
        [self.view addSubview:myLabel3];
        return;
    }
    if (isAdded5 == YES) {
        isAdded5 = NO;    
        [myLabel3 removeFromSuperview];
    }
    
}






- (void)longThingMethod:(UILongPressGestureRecognizer*)sender { 
    
    if (sender.state == UIGestureRecognizerStateBegan) {
        myLabel6 = [[UILabel alloc] initWithFrame:CGRectMake(200, 200, 500, 100)];
        myLabel6.text = @"THATS TOOO LOOONG";
        myLabel6.backgroundColor = [UIColor clearColor];
        myLabel6.font = [UIFont fontWithName:@"Helvetica" size: 30.0];
        myLabel6.textColor = [UIColor redColor];
        [self.view addSubview:myLabel6];
    }
    
    else {
        [myLabel6 removeFromSuperview];
    }
    
}













- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

@end
