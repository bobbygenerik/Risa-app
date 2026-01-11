.class public final enum Lˊʾ/ٴﹶ;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lᴵʿ/ʽ;


# static fields
.field public static final synthetic ʽʽ:[Lˊʾ/ٴﹶ;

.field public static final enum ᴵˊ:Lˊʾ/ٴﹶ;


# instance fields
.field public final ʾˋ:J


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lˊʾ/ٴﹶ;

    const-wide/16 v1, 0x1

    const-string v3, "SMB2_RESTART_SCANS"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lˊʾ/ٴﹶ;-><init>(JLjava/lang/String;I)V

    sput-object v0, Lˊʾ/ٴﹶ;->ᴵˊ:Lˊʾ/ٴﹶ;

    new-instance v1, Lˊʾ/ٴﹶ;

    const-wide/16 v2, 0x2

    const-string v5, "SMB2_RETURN_SINGLE_ENTRY"

    const/4 v6, 0x1

    invoke-direct {v1, v2, v3, v5, v6}, Lˊʾ/ٴﹶ;-><init>(JLjava/lang/String;I)V

    new-instance v2, Lˊʾ/ٴﹶ;

    const-wide/16 v7, 0x4

    const-string v3, "SMB2_INDEX_SPECIFIED"

    const/4 v5, 0x2

    invoke-direct {v2, v7, v8, v3, v5}, Lˊʾ/ٴﹶ;-><init>(JLjava/lang/String;I)V

    new-instance v3, Lˊʾ/ٴﹶ;

    const-wide/16 v7, 0x10

    const-string v9, "SMB2_REOPEN"

    const/4 v10, 0x3

    invoke-direct {v3, v7, v8, v9, v10}, Lˊʾ/ٴﹶ;-><init>(JLjava/lang/String;I)V

    const/4 v7, 0x4

    new-array v7, v7, [Lˊʾ/ٴﹶ;

    aput-object v0, v7, v4

    aput-object v1, v7, v6

    aput-object v2, v7, v5

    aput-object v3, v7, v10

    sput-object v7, Lˊʾ/ٴﹶ;->ʽʽ:[Lˊʾ/ٴﹶ;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p3, p4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p1, p0, Lˊʾ/ٴﹶ;->ʾˋ:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lˊʾ/ٴﹶ;
    .locals 1

    const-class v0, Lˊʾ/ٴﹶ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lˊʾ/ٴﹶ;

    return-object p0
.end method

.method public static values()[Lˊʾ/ٴﹶ;
    .locals 1

    sget-object v0, Lˊʾ/ٴﹶ;->ʽʽ:[Lˊʾ/ٴﹶ;

    invoke-virtual {v0}, [Lˊʾ/ٴﹶ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lˊʾ/ٴﹶ;

    return-object v0
.end method


# virtual methods
.method public final getValue()J
    .locals 2

    iget-wide v0, p0, Lˊʾ/ٴﹶ;->ʾˋ:J

    return-wide v0
.end method
