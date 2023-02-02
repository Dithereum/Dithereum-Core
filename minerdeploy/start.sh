#! /bin/bash
sh -c 'cd /app; ./geth --datadir dithereum --networkid 77612 --bootnodes "enr:-J24QCzA4Zy03-9o6xG60fIU97ORxBZsbULzr7g75lM-pF03W3cIywFvblrLvh7g7Why4xVpCKw0JLxl-rKVSFbq8HsCg2V0aMfGhG-YqXqAgmlkgnY0gmlwhJ31X_CJc2VjcDI1NmsxoQIUhNkjTaeX1Une3s30tqWt2plzAMyC22MESK7xLRAsIIRzbmFwwIN0Y3CCf5yDdWRwgn-c" --mine --syncmode full --unlock 0 --password /app/.accountpassword'
