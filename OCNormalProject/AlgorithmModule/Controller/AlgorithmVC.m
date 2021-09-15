//
//  AlgorithmVC.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/9/15.
//

#import "AlgorithmVC.h"
#import "LinkedList.h"
#import "CircleLinkedList.h"
#import "BubbleSort.h"
#import "MergeArray.h"
#import "ColorQuesion.h"
#import "SubSort.h"
#import "RemoveSubElements.h"
#import "AddTwoNumbers.h"
#import "IntersectionNode.h"
#import "PartitionLinkList.h"
#import "PalindromeLinklist.h"
#import "MaximumBinaryTree.h"
#import "ReverseLinklist.h"
#import "DailyTemperatures.h"
#import "FlipedString.h"
#import "Subtree.h"
#import "Anagram.h"
#import "SortArray.h"
#import "MaxValue.h"
#import "MaxProfit.h"
#import "LowestCommonAncestor.h"
#import "RecoverTree.h"

@interface AlgorithmVC ()

@property(nonatomic, strong) LinkedList *list1;

@property(nonatomic, strong) LinkedList *list2;

@end

@implementation AlgorithmVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _list1 = [[LinkedList alloc] init];
    _list2 = [[LinkedList alloc] init];
}
#pragma mark - 合并有序数组
- (void)mergeArr {
    MergeArray *arr = [[MergeArray alloc] init];
    NSMutableArray *arr1 = @[@1, @3, @5, @0, @0, @0].mutableCopy;
    NSMutableArray *arr2 = @[@2, @4, @6].mutableCopy;
    [arr mergeArr:arr1 m:3 arr:arr2 n:3];
}

#pragma mark - 颜色问题
- (void)sortColors {
    ColorQuesion *arr = [[ColorQuesion alloc] init];
    NSMutableArray *arr1 = @[@1, @2, @2, @0, @1, @1, @0].mutableCopy;
    [arr sortColors:arr1];
}

#pragma mark - 部分排序
- (void)subSort {
    SubSort *arr = [[SubSort alloc] init];
    NSMutableArray *arr1 = @[@1, @5, @2, @4, @6, @3, @7].mutableCopy;
    NSMutableArray *reslut = [arr subSort:arr1];
    NSLog(@"%@", reslut);
}

#pragma mark - 删除指定链表元素
- (void)removeSubElements {
    LinkedList *list = [[LinkedList alloc] init];
    [list add:@"1"];
    [list add:@"1"];
    [list add:@"1"];

    RemoveSubElements *temp = [[RemoveSubElements alloc] init];
    [temp removeSubElements:list removeValue:1];
}

#pragma mark - 2_两数相加
-(void)addTwoNumbers:(LinkedList *)list1 list2:(LinkedList *)list2 {
    AddTwoNumbers *list = [[AddTwoNumbers alloc] init];

    [list1 add:@"1"];
    [list1 add:@"8"];
    [list1 add:@"7"];

    [list2 add:@"1"];
    [list2 add:@"7"];
    [list2 add:@"7"];

    [list addTwoNumbers:list1.first second:list2.first];
}

#pragma mark - 160_相交链表
-(void)getIntersectionNode:(LinkedList *)list1 list2:(LinkedList *)list2 {
    IntersectionNode *node = [[IntersectionNode alloc]init];
    NSObject *tem1 = [[NSObject alloc] init];
    NSObject *tem2 = [[NSObject alloc] init];

    [list1 add:[[NSObject alloc] init]];
    [list1 add:[[NSObject alloc] init]];
    [list1 add:tem1];
    [list1 add:tem2];

    [list2 add:[[NSObject alloc] init]];
    [list2 add:tem1];
    [list2 add:tem2];

    NSLog(@"%@", list1);
    NSLog(@"%@", list2);

    [node getIntersectionNode:list1.first headB:list2.first];
}

#pragma mark - 86_分割链表
-(void)partition:(LinkedList *)list1 list2:(LinkedList *)list2 {
    PartitionLinkList *node = [[PartitionLinkList alloc] init];

    [list1 add:@"1"];
    [list1 add:@"4"];
    [list1 add:@"3"];
    [list1 add:@"2"];
    [list1 add:@"5"];
    [list1 add:@"2"];
    [list1 add:@"6"];

    [node partition:list1.first partition:3];

    NSLog(@"list1 - %@", list1);
    [list2 add:[node partition:list1.first partition:3]];
}

#pragma mark - 234_回文链表
-(void)isPalindrome:(LinkedList *)list1 {
    PalindromeLinklist *node = [[PalindromeLinklist alloc] init];
    [list1 add:@"1"];
    [list1 add:@"2"];
    [list1 add:@"3"];
    [list1 add:@"2"];
    [list1 add:@"1"];
    NSLog(@"%d", [node isPalindrome:list1.first]);
}

#pragma mark - 654_最大二叉树
-(void)constructMaximumBinaryTree {
    MaximumBinaryTree *node = [[MaximumBinaryTree alloc] init];
    NSArray *arr = @[@1, @5, @3, @2, @8];
    NSLog(@"%ld", (long)[node constructMaximumBinaryTree:arr].value);
}

#pragma mark - 206_反转链表
-(void)recursionReverseLinklist:(LinkedList *)list1 {
    ReverseLinklist *list = [[ReverseLinklist alloc] init];
    [list1 add:@"1"];
    [list1 add:@"2"];
    [list1 add:@"3"];
    [list1 add:@"4"];
    [list1 add:@"5"];
    NSLog(@"list1 - %@", list1);
    [list normalReverseLinklist:list1.first];
    [list recursionReverseLinklist:list1.first];
}

#pragma mark - 739_每日温度
-(void)dailyTemperatures{
    DailyTemperatures *list = [[DailyTemperatures alloc] init];
    NSArray *arr = @[@73, @74, @75, @71, @69, @72, @76, @73];
    NSLog(@"%@", [list dailyTemperatures:arr]);
}

#pragma mark - 字符串轮转
-(void)isFlipedString{
    FlipedString *str = [[FlipedString alloc] init];
    NSLog(@"是不是轮转字符串 - %d", [str isFlipedString:@"weakStr" s2:@"kStrwea"]);
}

#pragma mark - 572_另一个数的子树
-(void)isSubtree{
    Subtree *subtree = [[Subtree alloc] init];

    TreeNode *root1 = [[TreeNode alloc] initWithValue:3];
    root1.left = [[TreeNode alloc] initWithValue:4];
    root1.right = [[TreeNode alloc] initWithValue:5];
    root1.left.left = [[TreeNode alloc] initWithValue:1];
    root1.left.right = [[TreeNode alloc] initWithValue:2];

    TreeNode *root2 = [[TreeNode alloc] initWithValue:4];
    root2.left = [[TreeNode alloc] initWithValue:1];
    root2.right = [[TreeNode alloc] initWithValue:2];

    NSLog(@"%d", [subtree isSubtree:root1 subRoot:root2]);
}

#pragma mark - 242_有效的字母异位词
-(void)isAnagram {
    Anagram *anagram = [[Anagram alloc] init];
    NSLog(@"%d", [anagram isAnagram:@"sanagram" t:@"dnagaram"]);
}

#pragma mark - 常见排序
-(void)normalSort{
    SortArray *sortArray = [[SortArray alloc] init];
    [sortArray quickSort];  //快排
    [sortArray bubbleSort]; //冒泡
    [sortArray InsertionSort];  //插入
    [sortArray selectionSort];  //选择
}

#pragma mark - 47_礼物的最大价值-动态规划
-(void)maxValue {
    MaxValue *maxValue = [[MaxValue alloc] init];
    NSMutableArray<NSMutableArray *>* arr = @[@[@1, @2, @1, @2].mutableCopy,@[@1, @2, @1, @2].mutableCopy,@[@1, @2, @1, @2].mutableCopy,@[@1, @2, @1, @2].mutableCopy].mutableCopy;

    [maxValue maxValue:arr];
}

#pragma mark - 121_买卖股票的最佳时机
-(void)maxProfit {
    MaxProfit *maxProfit = [[MaxProfit alloc] init];
    NSArray *arr = @[@3, @7, @9, @4, @1, @6];
    NSLog(@"%d", [maxProfit maxProfit:arr]);
}

#pragma mark - 5_最长回文子串

#pragma mark - 236_二叉树的最近公共祖先
-(void)lowestCommonAncestor {
  LowestCommonAncestor *lowestCommonAncestor = [[LowestCommonAncestor alloc] init];
  
  TreeNode *a = [[TreeNode alloc] initWithValue:3];
  TreeNode *b = [[TreeNode alloc] initWithValue:5];
  TreeNode *c = [[TreeNode alloc] initWithValue:1];
  TreeNode *d = [[TreeNode alloc] initWithValue:6];
  TreeNode *e = [[TreeNode alloc] initWithValue:2];
  TreeNode *f = [[TreeNode alloc] initWithValue:7];
  TreeNode *g = [[TreeNode alloc] initWithValue:4];
  TreeNode *h = [[TreeNode alloc] initWithValue:0];
  TreeNode *i = [[TreeNode alloc] initWithValue:8];

  TreeNode *root = a;
  root.left = b;
  root.right = c;
  root.left.left = d;
  root.left.right = e;
  root.left.right.left = f;
  root.left.right.right = g;
  root.right.left = h;
  root.right.right = i;
  
  TreeNode *result = [lowestCommonAncestor lowestCommonAncestor:root p:b q:d];
  NSLog(@"result - %ld", (long)result.value);
}

#pragma mark - 99_恢复二叉搜索树
-(void)recoverTree{
    RecoverTree *recoverTree = [[RecoverTree alloc] init];

    TreeNode *a = [[TreeNode alloc] initWithValue:28];
    TreeNode *b = [[TreeNode alloc] initWithValue:18];
    TreeNode *c = [[TreeNode alloc] initWithValue:37];
    TreeNode *d = [[TreeNode alloc] initWithValue:11];
    TreeNode *e = [[TreeNode alloc] initWithValue:17];
    TreeNode *f = [[TreeNode alloc] initWithValue:22];
    TreeNode *g = [[TreeNode alloc] initWithValue:44];
    TreeNode *h = [[TreeNode alloc] initWithValue:42];
    TreeNode *i = [[TreeNode alloc] initWithValue:62];

    TreeNode *root = a;
    root.left = b;
    root.right = c;
    root.left.left = d;
    root.left.left.right = e;
    root.left.right = f;
    root.right.right = g;
    root.right.right.left = h;
    root.right.right.right = i;

    [recoverTree recoverTree:root];
}

#pragma mark - 回文链表
-(void)palindromeLinklist:(LinkedList *)list1{
    [list1 add:@"1"];
    [list1 add:@"2"];
    [list1 add:@"3"];
    [list1 add:@"2"];
    [list1 add:@"1"];

    Node *newHead = list1.first.next;
    NSMutableArray *arr = [NSMutableArray arrayWithObjects:list1.first.element, nil];
    while (newHead != NULL) {
        if ([arr containsObject:newHead.element]) {
            newHead = newHead.next;
        } else {
            [arr addObject:newHead.element];
            newHead = newHead.next;
        }
    };

    NSLog(@"%@",arr);
}

#pragma mark - 字符出现次数
-(void)calculationStrCount{
    NSString *str = @"aabcgdhjjd";
    NSMutableArray *arr = [NSMutableArray array];
    
    int index = 0;
    while (index < str.length) {
        char c = [str characterAtIndex:index];
        [arr addObject:[NSString stringWithFormat:@"%c", c]];
        index++;
    }
    
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    dic[arr[0]] = @1;
    int i = 1;
    while (i < arr.count) {
        NSArray *keys = [dic allKeys];
        if ([keys containsObject:arr[i]]) {
            dic[arr[i]] = @([dic[arr[i]] integerValue] + 1);
        } else {
            dic[arr[i]] = @1;
        }
        i++;
    }
    NSLog(@"%@", dic);
}

@end
