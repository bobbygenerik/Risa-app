.class public final enum Lˊʾ/ﹳᐧ;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lᴵʿ/ʽ;


# static fields
.field public static final synthetic ʽʽ:[Lˊʾ/ﹳᐧ;

.field public static final enum ᴵˊ:Lˊʾ/ﹳᐧ;


# instance fields
.field public final ʾˋ:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lˊʾ/ﹳᐧ;

    const-wide/16 v1, 0x1

    const-string v3, "SMB2_NEGOTIATE_SIGNING_ENABLED"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lˊʾ/ﹳᐧ;-><init>(JLjava/lang/String;I)V

    sput-object v0, Lˊʾ/ﹳᐧ;->ᴵˊ:Lˊʾ/ﹳᐧ;

    new-instance v1, Lˊʾ/ﹳᐧ;

    const-wide/16 v2, 0x2

    const-string v5, "SMB2_NEGOTIATE_SIGNING_REQUIRED"

    const/4 v6, 0x1

    invoke-direct {v1, v2, v3, v5, v6}, Lˊʾ/ﹳᐧ;-><init>(JLjava/lang/String;I)V

    const/4 v2, 0x2

    new-array v2, v2, [Lˊʾ/ﹳᐧ;

    aput-object v0, v2, v4

    aput-object v1, v2, v6

    sput-object v2, Lˊʾ/ﹳᐧ;->ʽʽ:[Lˊʾ/ﹳᐧ;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p3, p4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p1, p0, Lˊʾ/ﹳᐧ;->ʾˋ:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lˊʾ/ﹳᐧ;
    .locals 1

    const-class v0, Lˊʾ/ﹳᐧ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lˊʾ/ﹳᐧ;

    return-object p0
.end method

.method public static values()[Lˊʾ/ﹳᐧ;
    .locals 1

    sget-object v0, Lˊʾ/ﹳᐧ;->ʽʽ:[Lˊʾ/ﹳᐧ;

    invoke-virtual {v0}, [Lˊʾ/ﹳᐧ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lˊʾ/ﹳᐧ;

    return-object v0
.end method


# virtual methods
.method public final getValue()J
    .locals 2

    iget-wide v0, p0, Lˊʾ/ﹳᐧ;->ʾˋ:J

    return-wide v0
.end method
