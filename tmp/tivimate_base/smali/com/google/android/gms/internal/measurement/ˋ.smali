.class public final enum Lcom/google/android/gms/internal/measurement/ˋ;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/ˎˊ;


# static fields
.field public static final enum ʽʽ:Lcom/google/android/gms/internal/measurement/ˋ;

.field public static final enum ˈٴ:Lcom/google/android/gms/internal/measurement/ˋ;

.field public static final enum ˉٴ:Lcom/google/android/gms/internal/measurement/ˋ;

.field public static final enum ˊʻ:Lcom/google/android/gms/internal/measurement/ˋ;

.field public static final synthetic ٴʼ:[Lcom/google/android/gms/internal/measurement/ˋ;

.field public static final enum ٴᵢ:Lcom/google/android/gms/internal/measurement/ˋ;

.field public static final enum ᴵˊ:Lcom/google/android/gms/internal/measurement/ˋ;

.field public static final enum ᴵᵔ:Lcom/google/android/gms/internal/measurement/ˋ;

.field public static final enum ᵎⁱ:Lcom/google/android/gms/internal/measurement/ˋ;


# instance fields
.field public final ʾˋ:I


# direct methods
.method static constructor <clinit>()V
    .locals 28

    new-instance v0, Lcom/google/android/gms/internal/measurement/ˋ;

    const/4 v1, 0x0

    const-string v2, "IAB_TCF_PURPOSE_UNKNOWN"

    invoke-direct {v0, v1, v1, v2}, Lcom/google/android/gms/internal/measurement/ˋ;-><init>(IILjava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/measurement/ˋ;

    const/4 v3, 0x1

    const-string v4, "IAB_TCF_PURPOSE_STORE_AND_ACCESS_INFORMATION_ON_A_DEVICE"

    invoke-direct {v2, v3, v3, v4}, Lcom/google/android/gms/internal/measurement/ˋ;-><init>(IILjava/lang/String;)V

    sput-object v2, Lcom/google/android/gms/internal/measurement/ˋ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ˋ;

    new-instance v4, Lcom/google/android/gms/internal/measurement/ˋ;

    const/4 v5, 0x2

    const-string v6, "IAB_TCF_PURPOSE_SELECT_BASIC_ADS"

    invoke-direct {v4, v5, v5, v6}, Lcom/google/android/gms/internal/measurement/ˋ;-><init>(IILjava/lang/String;)V

    sput-object v4, Lcom/google/android/gms/internal/measurement/ˋ;->ʽʽ:Lcom/google/android/gms/internal/measurement/ˋ;

    new-instance v6, Lcom/google/android/gms/internal/measurement/ˋ;

    const/4 v7, 0x3

    const-string v8, "IAB_TCF_PURPOSE_CREATE_A_PERSONALISED_ADS_PROFILE"

    invoke-direct {v6, v7, v7, v8}, Lcom/google/android/gms/internal/measurement/ˋ;-><init>(IILjava/lang/String;)V

    sput-object v6, Lcom/google/android/gms/internal/measurement/ˋ;->ˈٴ:Lcom/google/android/gms/internal/measurement/ˋ;

    new-instance v8, Lcom/google/android/gms/internal/measurement/ˋ;

    const/4 v9, 0x4

    const-string v10, "IAB_TCF_PURPOSE_SELECT_PERSONALISED_ADS"

    invoke-direct {v8, v9, v9, v10}, Lcom/google/android/gms/internal/measurement/ˋ;-><init>(IILjava/lang/String;)V

    sput-object v8, Lcom/google/android/gms/internal/measurement/ˋ;->ᴵᵔ:Lcom/google/android/gms/internal/measurement/ˋ;

    new-instance v10, Lcom/google/android/gms/internal/measurement/ˋ;

    const/4 v11, 0x5

    const-string v12, "IAB_TCF_PURPOSE_CREATE_A_PERSONALISED_CONTENT_PROFILE"

    invoke-direct {v10, v11, v11, v12}, Lcom/google/android/gms/internal/measurement/ˋ;-><init>(IILjava/lang/String;)V

    new-instance v12, Lcom/google/android/gms/internal/measurement/ˋ;

    const/4 v13, 0x6

    const-string v14, "IAB_TCF_PURPOSE_SELECT_PERSONALISED_CONTENT"

    invoke-direct {v12, v13, v13, v14}, Lcom/google/android/gms/internal/measurement/ˋ;-><init>(IILjava/lang/String;)V

    new-instance v14, Lcom/google/android/gms/internal/measurement/ˋ;

    const/4 v15, 0x7

    move/from16 v16, v1

    const-string v1, "IAB_TCF_PURPOSE_MEASURE_AD_PERFORMANCE"

    invoke-direct {v14, v15, v15, v1}, Lcom/google/android/gms/internal/measurement/ˋ;-><init>(IILjava/lang/String;)V

    sput-object v14, Lcom/google/android/gms/internal/measurement/ˋ;->ˊʻ:Lcom/google/android/gms/internal/measurement/ˋ;

    new-instance v1, Lcom/google/android/gms/internal/measurement/ˋ;

    move/from16 v17, v3

    const/16 v3, 0x8

    move/from16 v18, v5

    const-string v5, "IAB_TCF_PURPOSE_MEASURE_CONTENT_PERFORMANCE"

    invoke-direct {v1, v3, v3, v5}, Lcom/google/android/gms/internal/measurement/ˋ;-><init>(IILjava/lang/String;)V

    new-instance v5, Lcom/google/android/gms/internal/measurement/ˋ;

    move/from16 v19, v3

    const/16 v3, 0x9

    move/from16 v20, v7

    const-string v7, "IAB_TCF_PURPOSE_APPLY_MARKET_RESEARCH_TO_GENERATE_AUDIENCE_INSIGHTS"

    invoke-direct {v5, v3, v3, v7}, Lcom/google/android/gms/internal/measurement/ˋ;-><init>(IILjava/lang/String;)V

    sput-object v5, Lcom/google/android/gms/internal/measurement/ˋ;->ٴᵢ:Lcom/google/android/gms/internal/measurement/ˋ;

    new-instance v7, Lcom/google/android/gms/internal/measurement/ˋ;

    move/from16 v21, v3

    const/16 v3, 0xa

    move/from16 v22, v9

    const-string v9, "IAB_TCF_PURPOSE_DEVELOP_AND_IMPROVE_PRODUCTS"

    invoke-direct {v7, v3, v3, v9}, Lcom/google/android/gms/internal/measurement/ˋ;-><init>(IILjava/lang/String;)V

    sput-object v7, Lcom/google/android/gms/internal/measurement/ˋ;->ˉٴ:Lcom/google/android/gms/internal/measurement/ˋ;

    new-instance v9, Lcom/google/android/gms/internal/measurement/ˋ;

    move/from16 v23, v3

    const/16 v3, 0xb

    move/from16 v24, v11

    const-string v11, "IAB_TCF_PURPOSE_USE_LIMITED_DATA_TO_SELECT_CONTENT"

    invoke-direct {v9, v3, v3, v11}, Lcom/google/android/gms/internal/measurement/ˋ;-><init>(IILjava/lang/String;)V

    new-instance v11, Lcom/google/android/gms/internal/measurement/ˋ;

    move/from16 v25, v3

    const/4 v3, -0x1

    move/from16 v26, v13

    const/16 v13, 0xc

    move/from16 v27, v15

    const-string v15, "UNRECOGNIZED"

    invoke-direct {v11, v13, v3, v15}, Lcom/google/android/gms/internal/measurement/ˋ;-><init>(IILjava/lang/String;)V

    sput-object v11, Lcom/google/android/gms/internal/measurement/ˋ;->ᵎⁱ:Lcom/google/android/gms/internal/measurement/ˋ;

    const/16 v3, 0xd

    new-array v3, v3, [Lcom/google/android/gms/internal/measurement/ˋ;

    aput-object v0, v3, v16

    aput-object v2, v3, v17

    aput-object v4, v3, v18

    aput-object v6, v3, v20

    aput-object v8, v3, v22

    aput-object v10, v3, v24

    aput-object v12, v3, v26

    aput-object v14, v3, v27

    aput-object v1, v3, v19

    aput-object v5, v3, v21

    aput-object v7, v3, v23

    aput-object v9, v3, v25

    aput-object v11, v3, v13

    sput-object v3, Lcom/google/android/gms/internal/measurement/ˋ;->ٴʼ:[Lcom/google/android/gms/internal/measurement/ˋ;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lcom/google/android/gms/internal/measurement/ˋ;->ʾˋ:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/ˋ;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/ˋ;->ٴʼ:[Lcom/google/android/gms/internal/measurement/ˋ;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/ˋ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/ˋ;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˋ;->ʾˋ:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ⁱˊ()I
    .locals 2

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/measurement/ˋ;->ᵎⁱ:Lcom/google/android/gms/internal/measurement/ˋ;

    if-eq p0, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˋ;->ʾˋ:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
