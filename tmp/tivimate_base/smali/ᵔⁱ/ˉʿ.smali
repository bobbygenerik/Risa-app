.class public final Lᵔⁱ/ˉʿ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᵔⁱ/ˉˆ;


# static fields
.field public static final ˈٴ:Lʼˊ/ⁱˊ;

.field public static final ˊʻ:Lʼˊ/ⁱˊ;

.field public static final ᴵᵔ:Lʼˊ/ⁱˊ;


# instance fields
.field public ʽʽ:Ljava/io/IOException;

.field public final ʾˋ:Lٴʿ/ﹳٴ;

.field public ᴵˊ:Lᵔⁱ/ˆʾ;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lʼˊ/ⁱˊ;

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v1, v4}, Lʼˊ/ⁱˊ;-><init>(JZI)V

    sput-object v0, Lᵔⁱ/ˉʿ;->ˈٴ:Lʼˊ/ⁱˊ;

    new-instance v0, Lʼˊ/ⁱˊ;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v3, v4, v1}, Lʼˊ/ⁱˊ;-><init>(JZI)V

    sput-object v0, Lᵔⁱ/ˉʿ;->ᴵᵔ:Lʼˊ/ⁱˊ;

    new-instance v0, Lʼˊ/ⁱˊ;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v3, v4, v1}, Lʼˊ/ⁱˊ;-><init>(JZI)V

    sput-object v0, Lᵔⁱ/ˉʿ;->ˊʻ:Lʼˊ/ⁱˊ;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ExoPlayer:Loader:"

    invoke-static {v0, p1}, Lʼﾞ/ˊˋ;->ʼʼ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    new-instance v0, Lـﹶ/ﹳٴ;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lـﹶ/ﹳٴ;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lـﹶ/ʾᵎ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lٴʿ/ﹳٴ;

    invoke-direct {v1, p1, v0}, Lٴʿ/ﹳٴ;-><init>(Ljava/util/concurrent/ExecutorService;Lـﹶ/ʾᵎ;)V

    invoke-direct {p0, v1}, Lᵔⁱ/ˉʿ;-><init>(Lٴʿ/ﹳٴ;)V

    return-void
.end method

.method public constructor <init>(Lٴʿ/ﹳٴ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵔⁱ/ˉʿ;->ʾˋ:Lٴʿ/ﹳٴ;

    return-void
.end method


# virtual methods
.method public final ʽ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lᵔⁱ/ˉʿ;->ʽʽ:Ljava/io/IOException;

    if-nez v0, :cond_2

    iget-object v0, p0, Lᵔⁱ/ˉʿ;->ᴵˊ:Lᵔⁱ/ˆʾ;

    if-eqz v0, :cond_1

    iget v1, v0, Lᵔⁱ/ˆʾ;->ʾˋ:I

    iget-object v2, v0, Lᵔⁱ/ˆʾ;->ᴵᵔ:Ljava/io/IOException;

    if-eqz v2, :cond_1

    iget v0, v0, Lᵔⁱ/ˆʾ;->ˊʻ:I

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    throw v2

    :cond_1
    :goto_0
    return-void

    :cond_2
    throw v0
.end method

.method public final ˈ()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lᵔⁱ/ˉʿ;->ᴵˊ:Lᵔⁱ/ˆʾ;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ˑﹳ(Lᵔⁱ/ﾞʻ;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lᵔⁱ/ˉʿ;->ᴵˊ:Lᵔⁱ/ˆʾ;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lᵔⁱ/ˆʾ;->ﹳٴ(Z)V

    :cond_0
    iget-object v0, p0, Lᵔⁱ/ˉʿ;->ʾˋ:Lٴʿ/ﹳٴ;

    if-eqz p1, :cond_1

    new-instance v1, Landroidx/leanback/widget/ᵔʾ;

    const/16 v2, 0x1b

    invoke-direct {v1, v2, p1}, Landroidx/leanback/widget/ᵔʾ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lٴʿ/ﹳٴ;->execute(Ljava/lang/Runnable;)V

    :cond_1
    iget-object p1, v0, Lٴʿ/ﹳٴ;->ᴵˊ:Lـﹶ/ʾᵎ;

    iget-object v0, v0, Lٴʿ/ﹳٴ;->ʾˋ:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0}, Lـﹶ/ʾᵎ;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final ⁱˊ()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lᵔⁱ/ˉʿ;->ʽʽ:Ljava/io/IOException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ﹳٴ()V
    .locals 2

    iget-object v0, p0, Lᵔⁱ/ˉʿ;->ᴵˊ:Lᵔⁱ/ˆʾ;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lᵔⁱ/ˆʾ;->ﹳٴ(Z)V

    return-void
.end method

.method public final ﾞᴵ(Lᵔⁱ/ٴﹶ;Lᵔⁱ/ʼˎ;I)V
    .locals 8

    .prologue
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v2}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lᵔⁱ/ˉʿ;->ʽʽ:Ljava/io/IOException;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    new-instance v0, Lᵔⁱ/ˆʾ;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v7}, Lᵔⁱ/ˆʾ;-><init>(Lᵔⁱ/ˉʿ;Landroid/os/Looper;Lᵔⁱ/ٴﹶ;Lᵔⁱ/ʼˎ;IJ)V

    iget-object p1, v1, Lᵔⁱ/ˉʿ;->ᴵˊ:Lᵔⁱ/ˆʾ;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iput-object v0, v1, Lᵔⁱ/ˉʿ;->ᴵˊ:Lᵔⁱ/ˆʾ;

    invoke-virtual {v0}, Lᵔⁱ/ˆʾ;->ⁱˊ()V

    return-void
.end method
