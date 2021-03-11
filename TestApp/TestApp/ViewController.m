//
//  ViewController.m
//  TestApp
//
//  Created by Andrey on 08/03/2021.
//

#import "ViewController.h"
#import "TableViewCell.h"
#import "Person.h"

@interface ViewController ()

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *people;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Person* peter = [[Person alloc] initWithName:@"Peter" surname:@"Griffin" age: @36 ];
    Person* homer = [[Person alloc] initWithName:@"Homer" surname:@"Simpson" age: @34 ];
    Person* stan = [[Person alloc] initWithName:@"Stan" surname:@"Marsh" age: @8 ];
    Person* peter2 = [[Person alloc] initWithName:@"Peter" surname:@"Pan" age: @12 ];
    
    self.people = [@[peter, homer, stan, peter2] mutableCopy];
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableView.dataSource = self;
    [self.view addSubview: self.tableView];
}


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: TableViewCell.cellId];
    if (!cell) {
        cell = [[TableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:TableViewCell.cellId];
    }
    
//    cell.leftLabel.text = [NSString stringWithFormat:@"Cell %ld", indexPath.row];
//    cell.rightLabel.text =  [NSString stringWithFormat:@"Elements %@", self.people[indexPath.row]];
    
    [cell setup:[self.people objectAtIndex:indexPath.row]];
    
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.people.count;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return [NSString stringWithFormat:@"Section %lu", section];
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.people removeObjectAtIndex:indexPath.row];
    [self.tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
}

@end

