.class public final enum Lﾞˉ/ˈ;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lᴵʿ/ʽ;


# static fields
.field public static final enum ʽʽ:Lﾞˉ/ˈ;

.field public static final enum ˈٴ:Lﾞˉ/ˈ;

.field public static final synthetic ˉٴ:[Lﾞˉ/ˈ;

.field public static final enum ˊʻ:Lﾞˉ/ˈ;

.field public static final enum ٴᵢ:Lﾞˉ/ˈ;

.field public static final enum ᴵˊ:Lﾞˉ/ˈ;

.field public static final enum ᴵᵔ:Lﾞˉ/ˈ;


# instance fields
.field public final ʾˋ:I


# direct methods
.method static constructor <clinit>()V
    .locals 40

    new-instance v0, Lﾞˉ/ˈ;

    const/4 v1, 0x0

    const-string v2, "REQUEST"

    invoke-direct {v0, v1, v1, v2}, Lﾞˉ/ˈ;-><init>(IILjava/lang/String;)V

    sput-object v0, Lﾞˉ/ˈ;->ᴵˊ:Lﾞˉ/ˈ;

    new-instance v2, Lﾞˉ/ˈ;

    const/4 v3, 0x1

    const-string v4, "PING"

    invoke-direct {v2, v3, v3, v4}, Lﾞˉ/ˈ;-><init>(IILjava/lang/String;)V

    new-instance v4, Lﾞˉ/ˈ;

    const/4 v5, 0x2

    const-string v6, "RESPONSE"

    invoke-direct {v4, v5, v5, v6}, Lﾞˉ/ˈ;-><init>(IILjava/lang/String;)V

    sput-object v4, Lﾞˉ/ˈ;->ʽʽ:Lﾞˉ/ˈ;

    new-instance v6, Lﾞˉ/ˈ;

    const/4 v7, 0x3

    const-string v8, "FAULT"

    invoke-direct {v6, v7, v7, v8}, Lﾞˉ/ˈ;-><init>(IILjava/lang/String;)V

    sput-object v6, Lﾞˉ/ˈ;->ˈٴ:Lﾞˉ/ˈ;

    new-instance v8, Lﾞˉ/ˈ;

    const/4 v9, 0x4

    const-string v10, "WORKING"

    invoke-direct {v8, v9, v9, v10}, Lﾞˉ/ˈ;-><init>(IILjava/lang/String;)V

    new-instance v10, Lﾞˉ/ˈ;

    const/4 v11, 0x5

    const-string v12, "NOCALL"

    invoke-direct {v10, v11, v11, v12}, Lﾞˉ/ˈ;-><init>(IILjava/lang/String;)V

    new-instance v12, Lﾞˉ/ˈ;

    const/4 v13, 0x6

    const-string v14, "REJECT"

    invoke-direct {v12, v13, v13, v14}, Lﾞˉ/ˈ;-><init>(IILjava/lang/String;)V

    sput-object v12, Lﾞˉ/ˈ;->ᴵᵔ:Lﾞˉ/ˈ;

    new-instance v14, Lﾞˉ/ˈ;

    const/4 v15, 0x7

    move/from16 v16, v1

    const-string v1, "ACK"

    invoke-direct {v14, v15, v15, v1}, Lﾞˉ/ˈ;-><init>(IILjava/lang/String;)V

    new-instance v1, Lﾞˉ/ˈ;

    move/from16 v17, v3

    const/16 v3, 0x8

    move/from16 v18, v5

    const-string v5, "CL_CANCEL"

    invoke-direct {v1, v3, v3, v5}, Lﾞˉ/ˈ;-><init>(IILjava/lang/String;)V

    new-instance v5, Lﾞˉ/ˈ;

    move/from16 v19, v3

    const/16 v3, 0x9

    move/from16 v20, v7

    const-string v7, "FACK"

    invoke-direct {v5, v3, v3, v7}, Lﾞˉ/ˈ;-><init>(IILjava/lang/String;)V

    new-instance v7, Lﾞˉ/ˈ;

    move/from16 v21, v3

    const/16 v3, 0xa

    move/from16 v22, v9

    const-string v9, "CANCEL_ACK"

    invoke-direct {v7, v3, v3, v9}, Lﾞˉ/ˈ;-><init>(IILjava/lang/String;)V

    new-instance v9, Lﾞˉ/ˈ;

    move/from16 v23, v3

    const/16 v3, 0xb

    move/from16 v24, v11

    const-string v11, "BIND"

    invoke-direct {v9, v3, v3, v11}, Lﾞˉ/ˈ;-><init>(IILjava/lang/String;)V

    sput-object v9, Lﾞˉ/ˈ;->ˊʻ:Lﾞˉ/ˈ;

    new-instance v11, Lﾞˉ/ˈ;

    move/from16 v25, v3

    const/16 v3, 0xc

    move/from16 v26, v13

    const-string v13, "BIND_ACK"

    invoke-direct {v11, v3, v3, v13}, Lﾞˉ/ˈ;-><init>(IILjava/lang/String;)V

    sput-object v11, Lﾞˉ/ˈ;->ٴᵢ:Lﾞˉ/ˈ;

    new-instance v13, Lﾞˉ/ˈ;

    move/from16 v27, v3

    const/16 v3, 0xd

    move/from16 v28, v15

    const-string v15, "BIND_NAK"

    invoke-direct {v13, v3, v3, v15}, Lﾞˉ/ˈ;-><init>(IILjava/lang/String;)V

    new-instance v15, Lﾞˉ/ˈ;

    move/from16 v29, v3

    const/16 v3, 0xe

    move-object/from16 v30, v0

    const-string v0, "ALTER_CONTEXT"

    invoke-direct {v15, v3, v3, v0}, Lﾞˉ/ˈ;-><init>(IILjava/lang/String;)V

    new-instance v0, Lﾞˉ/ˈ;

    move/from16 v31, v3

    const/16 v3, 0xf

    move-object/from16 v32, v1

    const-string v1, "ALTER_CONTEXT_RESP"

    invoke-direct {v0, v3, v3, v1}, Lﾞˉ/ˈ;-><init>(IILjava/lang/String;)V

    new-instance v1, Lﾞˉ/ˈ;

    move/from16 v33, v3

    const/16 v3, 0x10

    move-object/from16 v34, v0

    const/16 v0, 0x11

    move-object/from16 v35, v2

    const-string v2, "SHUTDOWN"

    invoke-direct {v1, v3, v0, v2}, Lﾞˉ/ˈ;-><init>(IILjava/lang/String;)V

    new-instance v2, Lﾞˉ/ˈ;

    move/from16 v36, v3

    const/16 v3, 0x12

    move-object/from16 v37, v1

    const-string v1, "CO_CANCEL"

    invoke-direct {v2, v0, v3, v1}, Lﾞˉ/ˈ;-><init>(IILjava/lang/String;)V

    new-instance v1, Lﾞˉ/ˈ;

    move/from16 v38, v0

    const/16 v0, 0x13

    move-object/from16 v39, v2

    const-string v2, "ORPHANED"

    invoke-direct {v1, v3, v0, v2}, Lﾞˉ/ˈ;-><init>(IILjava/lang/String;)V

    new-array v0, v0, [Lﾞˉ/ˈ;

    aput-object v30, v0, v16

    aput-object v35, v0, v17

    aput-object v4, v0, v18

    aput-object v6, v0, v20

    aput-object v8, v0, v22

    aput-object v10, v0, v24

    aput-object v12, v0, v26

    aput-object v14, v0, v28

    aput-object v32, v0, v19

    aput-object v5, v0, v21

    aput-object v7, v0, v23

    aput-object v9, v0, v25

    aput-object v11, v0, v27

    aput-object v13, v0, v29

    aput-object v15, v0, v31

    aput-object v34, v0, v33

    aput-object v37, v0, v36

    aput-object v39, v0, v38

    aput-object v1, v0, v3

    sput-object v0, Lﾞˉ/ˈ;->ˉٴ:[Lﾞˉ/ˈ;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lﾞˉ/ˈ;->ʾˋ:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lﾞˉ/ˈ;
    .locals 1

    const-class v0, Lﾞˉ/ˈ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lﾞˉ/ˈ;

    return-object p0
.end method

.method public static values()[Lﾞˉ/ˈ;
    .locals 1

    sget-object v0, Lﾞˉ/ˈ;->ˉٴ:[Lﾞˉ/ˈ;

    invoke-virtual {v0}, [Lﾞˉ/ˈ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lﾞˉ/ˈ;

    return-object v0
.end method


# virtual methods
.method public final getValue()J
    .locals 2

    iget v0, p0, Lﾞˉ/ˈ;->ʾˋ:I

    int-to-long v0, v0

    return-wide v0
.end method
