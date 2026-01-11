.class public abstract Lﹶי/ʼˎ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lʻᴵ/ﹳٴ;

.field public static final ˈ:Lʻᴵ/ﹳٴ;

.field public static final ˑﹳ:Lʻᴵ/ﹳٴ;

.field public static final ⁱˊ:Lʻᴵ/ﹳٴ;

.field public static final ﹳٴ:I

.field public static final ﾞᴵ:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x64

    const/16 v1, 0xc

    const-string v2, "kotlinx.coroutines.semaphore.maxSpinCycles"

    invoke-static {v0, v1, v2}, Lˊʽ/ⁱˊ;->ﾞʻ(IILjava/lang/String;)I

    move-result v0

    sput v0, Lﹶי/ʼˎ;->ﹳٴ:I

    new-instance v0, Lʻᴵ/ﹳٴ;

    const-string v2, "PERMIT"

    const/4 v3, 0x5

    invoke-direct {v0, v3, v2}, Lʻᴵ/ﹳٴ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lﹶי/ʼˎ;->ⁱˊ:Lʻᴵ/ﹳٴ;

    new-instance v0, Lʻᴵ/ﹳٴ;

    const-string v2, "TAKEN"

    invoke-direct {v0, v3, v2}, Lʻᴵ/ﹳٴ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lﹶי/ʼˎ;->ʽ:Lʻᴵ/ﹳٴ;

    new-instance v0, Lʻᴵ/ﹳٴ;

    const-string v2, "BROKEN"

    invoke-direct {v0, v3, v2}, Lʻᴵ/ﹳٴ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lﹶי/ʼˎ;->ˈ:Lʻᴵ/ﹳٴ;

    new-instance v0, Lʻᴵ/ﹳٴ;

    const-string v2, "CANCELLED"

    invoke-direct {v0, v3, v2}, Lʻᴵ/ﹳٴ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lﹶי/ʼˎ;->ˑﹳ:Lʻᴵ/ﹳٴ;

    const-string v0, "kotlinx.coroutines.semaphore.segmentSize"

    const/16 v2, 0x10

    invoke-static {v2, v1, v0}, Lˊʽ/ⁱˊ;->ﾞʻ(IILjava/lang/String;)I

    move-result v0

    sput v0, Lﹶי/ʼˎ;->ﾞᴵ:I

    return-void
.end method
