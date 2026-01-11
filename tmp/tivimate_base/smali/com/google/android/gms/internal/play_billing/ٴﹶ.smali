.class public final enum Lcom/google/android/gms/internal/play_billing/ٴﹶ;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final ʽʽ:Lcom/google/android/gms/internal/play_billing/ˈٴ;

.field public static final synthetic ˈٴ:[Lcom/google/android/gms/internal/play_billing/ٴﹶ;

.field public static final enum ᴵˊ:Lcom/google/android/gms/internal/play_billing/ٴﹶ;


# instance fields
.field public final ʾˋ:I


# direct methods
.method static constructor <clinit>()V
    .locals 32

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/play_billing/ٴﹶ;

    const/16 v1, -0x3e7

    const/4 v2, 0x0

    const-string v3, "RESPONSE_CODE_UNSPECIFIED"

    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/gms/internal/play_billing/ٴﹶ;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/ٴﹶ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ٴﹶ;

    new-instance v1, Lcom/google/android/gms/internal/play_billing/ٴﹶ;

    const/4 v3, -0x3

    const/4 v4, 0x1

    const-string v5, "SERVICE_TIMEOUT"

    invoke-direct {v1, v4, v3, v5}, Lcom/google/android/gms/internal/play_billing/ٴﹶ;-><init>(IILjava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/internal/play_billing/ٴﹶ;

    const/4 v5, -0x2

    const/4 v6, 0x2

    const-string v7, "FEATURE_NOT_SUPPORTED"

    invoke-direct {v3, v6, v5, v7}, Lcom/google/android/gms/internal/play_billing/ٴﹶ;-><init>(IILjava/lang/String;)V

    new-instance v5, Lcom/google/android/gms/internal/play_billing/ٴﹶ;

    const/4 v7, -0x1

    const/4 v8, 0x3

    const-string v9, "SERVICE_DISCONNECTED"

    invoke-direct {v5, v8, v7, v9}, Lcom/google/android/gms/internal/play_billing/ٴﹶ;-><init>(IILjava/lang/String;)V

    new-instance v7, Lcom/google/android/gms/internal/play_billing/ٴﹶ;

    const/4 v9, 0x4

    const-string v10, "OK"

    invoke-direct {v7, v9, v2, v10}, Lcom/google/android/gms/internal/play_billing/ٴﹶ;-><init>(IILjava/lang/String;)V

    new-instance v10, Lcom/google/android/gms/internal/play_billing/ٴﹶ;

    const/4 v11, 0x5

    const-string v12, "USER_CANCELED"

    invoke-direct {v10, v11, v4, v12}, Lcom/google/android/gms/internal/play_billing/ٴﹶ;-><init>(IILjava/lang/String;)V

    new-instance v12, Lcom/google/android/gms/internal/play_billing/ٴﹶ;

    const/4 v13, 0x6

    const-string v14, "SERVICE_UNAVAILABLE"

    invoke-direct {v12, v13, v6, v14}, Lcom/google/android/gms/internal/play_billing/ٴﹶ;-><init>(IILjava/lang/String;)V

    new-instance v14, Lcom/google/android/gms/internal/play_billing/ٴﹶ;

    const/4 v15, 0x7

    move/from16 v16, v4

    const-string v4, "BILLING_UNAVAILABLE"

    invoke-direct {v14, v15, v8, v4}, Lcom/google/android/gms/internal/play_billing/ٴﹶ;-><init>(IILjava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/internal/play_billing/ٴﹶ;

    move/from16 v17, v6

    const/16 v6, 0x8

    move/from16 v18, v8

    const-string v8, "ITEM_UNAVAILABLE"

    invoke-direct {v4, v6, v9, v8}, Lcom/google/android/gms/internal/play_billing/ٴﹶ;-><init>(IILjava/lang/String;)V

    new-instance v8, Lcom/google/android/gms/internal/play_billing/ٴﹶ;

    move/from16 v19, v9

    const/16 v9, 0x9

    move/from16 v20, v2

    const-string v2, "DEVELOPER_ERROR"

    invoke-direct {v8, v9, v11, v2}, Lcom/google/android/gms/internal/play_billing/ٴﹶ;-><init>(IILjava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/play_billing/ٴﹶ;

    move/from16 v21, v9

    const/16 v9, 0xa

    move/from16 v22, v11

    const-string v11, "ERROR"

    invoke-direct {v2, v9, v13, v11}, Lcom/google/android/gms/internal/play_billing/ٴﹶ;-><init>(IILjava/lang/String;)V

    new-instance v11, Lcom/google/android/gms/internal/play_billing/ٴﹶ;

    move/from16 v23, v9

    const/16 v9, 0xb

    move/from16 v24, v13

    const-string v13, "ITEM_ALREADY_OWNED"

    invoke-direct {v11, v9, v15, v13}, Lcom/google/android/gms/internal/play_billing/ٴﹶ;-><init>(IILjava/lang/String;)V

    new-instance v13, Lcom/google/android/gms/internal/play_billing/ٴﹶ;

    move/from16 v25, v15

    const/16 v15, 0xc

    const-string v9, "ITEM_NOT_OWNED"

    invoke-direct {v13, v15, v6, v9}, Lcom/google/android/gms/internal/play_billing/ٴﹶ;-><init>(IILjava/lang/String;)V

    new-instance v9, Lcom/google/android/gms/internal/play_billing/ٴﹶ;

    move/from16 v27, v6

    const/16 v6, 0xd

    const-string v15, "EXPIRED_OFFER_TOKEN"

    move-object/from16 v29, v0

    const/16 v0, 0xb

    invoke-direct {v9, v6, v0, v15}, Lcom/google/android/gms/internal/play_billing/ٴﹶ;-><init>(IILjava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ٴﹶ;

    const/16 v15, 0xe

    move/from16 v30, v6

    const-string v6, "NETWORK_ERROR"

    move-object/from16 v31, v1

    const/16 v1, 0xc

    invoke-direct {v0, v15, v1, v6}, Lcom/google/android/gms/internal/play_billing/ٴﹶ;-><init>(IILjava/lang/String;)V

    const/16 v1, 0xf

    new-array v1, v1, [Lcom/google/android/gms/internal/play_billing/ٴﹶ;

    aput-object v29, v1, v20

    aput-object v31, v1, v16

    aput-object v3, v1, v17

    aput-object v5, v1, v18

    aput-object v7, v1, v19

    aput-object v10, v1, v22

    aput-object v12, v1, v24

    aput-object v14, v1, v25

    aput-object v4, v1, v27

    aput-object v8, v1, v21

    aput-object v2, v1, v23

    const/16 v26, 0xb

    aput-object v11, v1, v26

    const/16 v28, 0xc

    aput-object v13, v1, v28

    aput-object v9, v1, v30

    aput-object v0, v1, v15

    sput-object v1, Lcom/google/android/gms/internal/play_billing/ٴﹶ;->ˈٴ:[Lcom/google/android/gms/internal/play_billing/ٴﹶ;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    move/from16 v1, v20

    invoke-direct {v0, v1, v1}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;-><init>(BI)V

    move/from16 v2, v27

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʽʽ:Ljava/lang/Object;

    iput v1, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/ٴﹶ;->values()[Lcom/google/android/gms/internal/play_billing/ٴﹶ;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    iget v5, v4, Lcom/google/android/gms/internal/play_billing/ٴﹶ;->ʾˋ:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    add-int/lit8 v6, v6, 0x1

    iget-object v7, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/Object;

    array-length v8, v7

    add-int/2addr v6, v6

    if-le v6, v8, :cond_2

    if-le v6, v8, :cond_1

    shr-int/lit8 v9, v8, 0x1

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x1

    if-ge v8, v6, :cond_0

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v6

    add-int/2addr v6, v6

    move v8, v6

    :cond_0
    if-gez v8, :cond_1

    const v8, 0x7fffffff

    :cond_1
    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʽʽ:Ljava/lang/Object;

    :cond_2
    iget-object v6, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    iget v7, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    add-int v8, v7, v7

    aput-object v5, v6, v8

    add-int/lit8 v8, v8, 0x1

    aput-object v4, v6, v8

    add-int/lit8 v7, v7, 0x1

    iput v7, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/play_billing/ˏי;

    if-nez v1, :cond_5

    iget v1, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    iget-object v2, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/ˈٴ;->ﹳٴ(I[Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/ʽﹳ;)Lcom/google/android/gms/internal/play_billing/ˈٴ;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/play_billing/ˏי;

    if-nez v0, :cond_4

    sput-object v1, Lcom/google/android/gms/internal/play_billing/ٴﹶ;->ʽʽ:Lcom/google/android/gms/internal/play_billing/ˈٴ;

    return-void

    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ˏי;->ﹳٴ()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/ˏי;->ﹳٴ()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lcom/google/android/gms/internal/play_billing/ٴﹶ;->ʾˋ:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/play_billing/ٴﹶ;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ٴﹶ;->ˈٴ:[Lcom/google/android/gms/internal/play_billing/ٴﹶ;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/play_billing/ٴﹶ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/play_billing/ٴﹶ;

    return-object v0
.end method
