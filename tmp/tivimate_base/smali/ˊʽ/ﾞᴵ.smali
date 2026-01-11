.class public final Lˊʽ/ﾞᴵ;
.super Lᴵי/ᴵᵔ;
.source "SourceFile"

# interfaces
.implements Lᴵʾ/ˈ;
.implements Lˈי/ˈ;


# static fields
.field public static final synthetic ˉٴ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _reusableCancellableContinuation$volatile:Ljava/lang/Object;

.field public final ˈٴ:Lᴵי/ˏי;

.field public ˊʻ:Ljava/lang/Object;

.field public final ٴᵢ:Ljava/lang/Object;

.field public final ᴵᵔ:Lᴵʾ/ʽ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_reusableCancellableContinuation$volatile"

    const-class v2, Lˊʽ/ﾞᴵ;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lˊʽ/ﾞᴵ;->ˉٴ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lᴵי/ˏי;Lᴵʾ/ʽ;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lᴵי/ᴵᵔ;-><init>(I)V

    iput-object p1, p0, Lˊʽ/ﾞᴵ;->ˈٴ:Lᴵי/ˏי;

    iput-object p2, p0, Lˊʽ/ﾞᴵ;->ᴵᵔ:Lᴵʾ/ʽ;

    sget-object p1, Lˊʽ/ⁱˊ;->ⁱˊ:Lʻᴵ/ﹳٴ;

    iput-object p1, p0, Lˊʽ/ﾞᴵ;->ˊʻ:Ljava/lang/Object;

    invoke-interface {p2}, Lˈי/ˈ;->ﾞᴵ()Lˈי/ᵔᵢ;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Lˊʽ/ⁱˊ;->ˑﹳ:Lʼⁱ/ˎᐧ;

    invoke-interface {p1, p2, v0}, Lˈי/ᵔᵢ;->ʿᵢ(Ljava/lang/Object;Lᴵⁱ/ʼᐧ;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lˊʽ/ﾞᴵ;->ٴᵢ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DispatchedContinuation["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lˊʽ/ﾞᴵ;->ˈٴ:Lᴵי/ˏי;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˊʽ/ﾞᴵ;->ᴵᵔ:Lᴵʾ/ʽ;

    invoke-static {v1}, Lᴵי/ʾᵎ;->ʽﹳ(Lˈי/ˈ;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʽ()Lˈי/ˈ;
    .locals 0

    return-object p0
.end method

.method public final ˆʾ()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lˊʽ/ﾞᴵ;->ˊʻ:Ljava/lang/Object;

    sget-object v1, Lˊʽ/ⁱˊ;->ⁱˊ:Lʻᴵ/ﹳٴ;

    iput-object v1, p0, Lˊʽ/ﾞᴵ;->ˊʻ:Ljava/lang/Object;

    return-object v0
.end method

.method public final ˈ()Lᴵʾ/ˈ;
    .locals 1

    iget-object v0, p0, Lˊʽ/ﾞᴵ;->ᴵᵔ:Lᴵʾ/ʽ;

    return-object v0
.end method

.method public final ᵔᵢ(Ljava/lang/Object;)V
    .locals 8

    .prologue
    invoke-static {p1}, Lʻᵢ/ᵎﹶ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    new-instance v2, Lᴵי/יـ;

    invoke-direct {v2, v0, v1}, Lᴵי/יـ;-><init>(Ljava/lang/Throwable;Z)V

    :goto_0
    iget-object v0, p0, Lˊʽ/ﾞᴵ;->ᴵᵔ:Lᴵʾ/ʽ;

    invoke-interface {v0}, Lˈי/ˈ;->ﾞᴵ()Lˈי/ᵔᵢ;

    move-result-object v3

    iget-object v4, p0, Lˊʽ/ﾞᴵ;->ˈٴ:Lᴵי/ˏי;

    invoke-static {v4, v3}, Lˊʽ/ⁱˊ;->ˆʾ(Lᴵי/ˏי;Lˈי/ᵔᵢ;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, p0, Lˊʽ/ﾞᴵ;->ˊʻ:Ljava/lang/Object;

    iput v1, p0, Lᴵי/ᴵᵔ;->ʽʽ:I

    invoke-interface {v0}, Lˈי/ˈ;->ﾞᴵ()Lˈי/ᵔᵢ;

    move-result-object p1

    invoke-static {v4, p1, p0}, Lˊʽ/ⁱˊ;->ʼˎ(Lᴵי/ˏי;Lˈי/ᵔᵢ;Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-static {}, Lᴵי/ﹳﹳ;->ﹳٴ()Lᴵי/ˑٴ;

    move-result-object v3

    iget-wide v4, v3, Lᴵי/ˑٴ;->ᴵˊ:J

    const-wide v6, 0x100000000L

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2

    iput-object v2, p0, Lˊʽ/ﾞᴵ;->ˊʻ:Ljava/lang/Object;

    iput v1, p0, Lᴵי/ᴵᵔ;->ʽʽ:I

    invoke-virtual {v3, p0}, Lᴵי/ˑٴ;->ˑ(Lᴵי/ᴵᵔ;)V

    return-void

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Lᴵי/ˑٴ;->ˎᐧ(Z)V

    :try_start_0
    invoke-interface {v0}, Lˈי/ˈ;->ﾞᴵ()Lˈי/ᵔᵢ;

    move-result-object v2

    iget-object v4, p0, Lˊʽ/ﾞᴵ;->ٴᵢ:Ljava/lang/Object;

    invoke-static {v2, v4}, Lˊʽ/ⁱˊ;->ˉʿ(Lˈי/ᵔᵢ;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0, p1}, Lᴵʾ/ﹳٴ;->ᵔᵢ(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v2, v4}, Lˊʽ/ⁱˊ;->ᵎﹶ(Lˈי/ᵔᵢ;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v3}, Lᴵי/ˑٴ;->ʽⁱ()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_3

    :goto_1
    invoke-virtual {v3, v1}, Lᴵי/ˑٴ;->ʾˊ(Z)V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-static {v2, v4}, Lˊʽ/ⁱˊ;->ᵎﹶ(Lˈי/ᵔᵢ;Ljava/lang/Object;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    invoke-virtual {p0, p1}, Lᴵי/ᴵᵔ;->ʼˎ(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :goto_3
    return-void

    :catchall_2
    move-exception p1

    invoke-virtual {v3, v1}, Lᴵי/ˑٴ;->ʾˊ(Z)V

    throw p1
.end method

.method public final ﾞᴵ()Lˈי/ᵔᵢ;
    .locals 1

    iget-object v0, p0, Lˊʽ/ﾞᴵ;->ᴵᵔ:Lᴵʾ/ʽ;

    invoke-interface {v0}, Lˈי/ˈ;->ﾞᴵ()Lˈי/ᵔᵢ;

    move-result-object v0

    return-object v0
.end method
