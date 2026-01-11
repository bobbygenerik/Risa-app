.class public final enum Lʻʽ/ﹳٴ;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lᴵʿ/ʽ;


# static fields
.field public static final enum ʽʽ:Lʻʽ/ﹳٴ;

.field public static final synthetic ˈٴ:[Lʻʽ/ﹳٴ;

.field public static final enum ᴵˊ:Lʻʽ/ﹳٴ;


# instance fields
.field public final ʾˋ:J


# direct methods
.method static constructor <clinit>()V
    .locals 25

    new-instance v0, Lʻʽ/ﹳٴ;

    const-wide/16 v1, 0x0

    const-string v3, "MsvAvEOL"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lʻʽ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v1, Lʻʽ/ﹳٴ;

    const-wide/16 v2, 0x1

    const-string v5, "MsvAvNbComputerName"

    const/4 v6, 0x1

    invoke-direct {v1, v2, v3, v5, v6}, Lʻʽ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    sput-object v1, Lʻʽ/ﹳٴ;->ᴵˊ:Lʻʽ/ﹳٴ;

    new-instance v2, Lʻʽ/ﹳٴ;

    const-wide/16 v7, 0x2

    const-string v3, "MsvAvNdDomainName"

    const/4 v5, 0x2

    invoke-direct {v2, v7, v8, v3, v5}, Lʻʽ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v3, Lʻʽ/ﹳٴ;

    const-wide/16 v7, 0x3

    const-string v9, "MsvAvDnsComputerName"

    const/4 v10, 0x3

    invoke-direct {v3, v7, v8, v9, v10}, Lʻʽ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v7, Lʻʽ/ﹳٴ;

    const-wide/16 v8, 0x4

    const-string v11, "MsvAvDnsDomainName"

    const/4 v12, 0x4

    invoke-direct {v7, v8, v9, v11, v12}, Lʻʽ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v8, Lʻʽ/ﹳٴ;

    const-wide/16 v13, 0x5

    const-string v9, "MsvAvDnsTreeName"

    const/4 v11, 0x5

    invoke-direct {v8, v13, v14, v9, v11}, Lʻʽ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v9, Lʻʽ/ﹳٴ;

    const-wide/16 v13, 0x6

    const-string v15, "MsvAvFlags"

    move/from16 v16, v4

    const/4 v4, 0x6

    invoke-direct {v9, v13, v14, v15, v4}, Lʻʽ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    sput-object v9, Lʻʽ/ﹳٴ;->ʽʽ:Lʻʽ/ﹳٴ;

    new-instance v13, Lʻʽ/ﹳٴ;

    const-wide/16 v14, 0x7

    move/from16 v17, v4

    const-string v4, "MsvAvTimestamp"

    move/from16 v18, v5

    const/4 v5, 0x7

    invoke-direct {v13, v14, v15, v4, v5}, Lʻʽ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v4, Lʻʽ/ﹳٴ;

    const-wide/16 v14, 0x8

    move/from16 v19, v5

    const-string v5, "MsvAvSingleHost"

    move/from16 v20, v6

    const/16 v6, 0x8

    invoke-direct {v4, v14, v15, v5, v6}, Lʻʽ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v5, Lʻʽ/ﹳٴ;

    const-wide/16 v14, 0x9

    move/from16 v21, v6

    const-string v6, "MsvAvTargetName"

    move/from16 v22, v10

    const/16 v10, 0x9

    invoke-direct {v5, v14, v15, v6, v10}, Lʻʽ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v6, Lʻʽ/ﹳٴ;

    const-wide/16 v14, 0xa

    move/from16 v23, v10

    const-string v10, "MsvChannelBindings"

    move/from16 v24, v11

    const/16 v11, 0xa

    invoke-direct {v6, v14, v15, v10, v11}, Lʻʽ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    const/16 v10, 0xb

    new-array v10, v10, [Lʻʽ/ﹳٴ;

    aput-object v0, v10, v16

    aput-object v1, v10, v20

    aput-object v2, v10, v18

    aput-object v3, v10, v22

    aput-object v7, v10, v12

    aput-object v8, v10, v24

    aput-object v9, v10, v17

    aput-object v13, v10, v19

    aput-object v4, v10, v21

    aput-object v5, v10, v23

    aput-object v6, v10, v11

    sput-object v10, Lʻʽ/ﹳٴ;->ˈٴ:[Lʻʽ/ﹳٴ;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p3, p4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p1, p0, Lʻʽ/ﹳٴ;->ʾˋ:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lʻʽ/ﹳٴ;
    .locals 1

    const-class v0, Lʻʽ/ﹳٴ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lʻʽ/ﹳٴ;

    return-object p0
.end method

.method public static values()[Lʻʽ/ﹳٴ;
    .locals 1

    sget-object v0, Lʻʽ/ﹳٴ;->ˈٴ:[Lʻʽ/ﹳٴ;

    invoke-virtual {v0}, [Lʻʽ/ﹳٴ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lʻʽ/ﹳٴ;

    return-object v0
.end method


# virtual methods
.method public final getValue()J
    .locals 2

    iget-wide v0, p0, Lʻʽ/ﹳٴ;->ʾˋ:J

    return-wide v0
.end method
