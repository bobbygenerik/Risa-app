.class public final Lᴵˋ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʼˎ:I

.field public final ʽ:Ljava/util/concurrent/ExecutorService;

.field public final ˆʾ:I

.field public final ˈ:Lᴵˋ/ˆʾ;

.field public final ˉʿ:Lᴵˋ/ˆʾ;

.field public final ˑﹳ:Lᴵˋ/ˆʾ;

.field public final ٴﹶ:I

.field public final ᵎﹶ:Lˊⁱ/ˑﹳ;

.field public final ᵔᵢ:I

.field public final ⁱˊ:Lʿⁱ/ˈ;

.field public final ﹳٴ:Ljava/util/concurrent/ExecutorService;

.field public final ﾞʻ:Z

.field public final ﾞᴵ:Lᴵˋ/ˆʾ;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lᴵˋ/ʽ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lᴵˋ/ʽ;-><init>(Z)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x4

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v4, 0x2

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lᴵˋ/ⁱˊ;->ﹳٴ:Ljava/util/concurrent/ExecutorService;

    sget-object v0, Lᴵי/ٴᵢ;->ﹳٴ:Lʿⁱ/ˈ;

    iput-object v0, p0, Lᴵˋ/ⁱˊ;->ⁱˊ:Lʿⁱ/ˈ;

    new-instance v0, Lᴵˋ/ʽ;

    invoke-direct {v0, v2}, Lᴵˋ/ʽ;-><init>(Z)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lᴵˋ/ⁱˊ;->ʽ:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lᴵˋ/ˆʾ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lᴵˋ/ⁱˊ;->ˈ:Lᴵˋ/ˆʾ;

    sget-object v0, Lᴵˋ/ˆʾ;->ﹳٴ:Lᴵˋ/ˆʾ;

    iput-object v0, p0, Lᴵˋ/ⁱˊ;->ˑﹳ:Lᴵˋ/ˆʾ;

    sget-object v0, Lᴵˋ/ˆʾ;->ⁱˊ:Lᴵˋ/ˆʾ;

    iput-object v0, p0, Lᴵˋ/ⁱˊ;->ﾞᴵ:Lᴵˋ/ˆʾ;

    new-instance v0, Lˊⁱ/ˑﹳ;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lˊⁱ/ˑﹳ;-><init>(I)V

    iput-object v0, p0, Lᴵˋ/ⁱˊ;->ᵎﹶ:Lˊⁱ/ˑﹳ;

    iput v3, p0, Lᴵˋ/ⁱˊ;->ᵔᵢ:I

    const v0, 0x7fffffff

    iput v0, p0, Lᴵˋ/ⁱˊ;->ʼˎ:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    :goto_0
    iput v0, p0, Lᴵˋ/ⁱˊ;->ٴﹶ:I

    const/16 v0, 0x8

    iput v0, p0, Lᴵˋ/ⁱˊ;->ˆʾ:I

    iput-boolean v2, p0, Lᴵˋ/ⁱˊ;->ﾞʻ:Z

    new-instance v0, Lᴵˋ/ˆʾ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lᴵˋ/ⁱˊ;->ˉʿ:Lᴵˋ/ˆʾ;

    return-void
.end method
