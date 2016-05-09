# 3DTouch
### 方法 1：  
    直接配置info.plist  
    你需要：  
    1，将工程中的info.plist拷贝一份到桌面－－> 右键 --> 打开方式 －－> 文本编辑  
    2，按照下边的键值粘贴复制即可   

`

        <key>UIApplicationShortcutItems</key>         

            <array>               

                <dict>        

                        <key>UIApplicationShortcutItemIconType</key>    

                        <string>UIApplicationShortcutIconTypePlay</string>     

                        <key>UIApplicationShortcutItemTitle</key>   

                        <string>Play</string>         

                        <key>UIApplicationShortcutItemType</key>  

                        <string>static</string>       

                        <key>UIApplicationShortcutItemUserInfo</key>       

                        <dict>        

                            <key>key1</key>   

                            <string>value1</string>      

                        </dict>       

                </dict>     

            </array>  

`

    3，保存修改，然后将工程中的info.plist替换成桌面上的info.plist即可  

### 方法 2:  
  使用代码在工程中加入items  
>     UIApplicationShortcutIcon *icon1 = [UIApplicationShortcutIcon iconWithTemplateImageName:@"icon1"];
>      UIApplicationShortcutIcon *icon2 = [UIApplicationShortcutIcon iconWithTemplateImageName:@"icon2"];
    NSDictionary *info1 = @{@"url":@"url1"};
    NSDictionary *info2 = @{@"url":@"url2"};
>     UIMutableApplicationShortcutItem *item1 = [[UIMutableApplicationShortcutItem alloc]initWithType:@"XS_3DTocuh_1" localizedTitle:@"购物" localizedSubtitle:@"go" icon:icon1 userInfo:info1];
>      UIMutableApplicationShortcutItem *item2 = [[UIMutableApplicationShortcutItem alloc]initWithType:@"XS_3DTocuh_2" localizedTitle:@"去哪儿" localizedSubtitle:@"go" icon:icon2 userInfo:info2];
>       NSArray *items = @[item1, item2];
>     [UIApplication sharedApplication].shortcutItems = items;
