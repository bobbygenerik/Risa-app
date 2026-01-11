.class public final synthetic Lـʾ/ˏי;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ﾞʻ;


# instance fields
.field public final synthetic ʽʽ:Ljava/lang/String;

.field public final synthetic ʾˋ:Lᴵˋ/יـ;

.field public final synthetic ˈٴ:Lـʾ/ʾˋ;

.field public final synthetic ᴵˊ:Z


# direct methods
.method public synthetic constructor <init>(Lᴵˋ/יـ;ZLjava/lang/String;Lـʾ/ʾˋ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lـʾ/ˏי;->ʾˋ:Lᴵˋ/יـ;

    iput-boolean p2, p0, Lـʾ/ˏי;->ᴵˊ:Z

    iput-object p3, p0, Lـʾ/ˏי;->ʽʽ:Ljava/lang/String;

    iput-object p4, p0, Lـʾ/ˏי;->ˈٴ:Lـʾ/ʾˋ;

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    check-cast p1, Ljava/lang/Throwable;

    instance-of v0, p1, Landroidx/work/impl/WorkerStoppedException;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/work/impl/WorkerStoppedException;

    iget p1, p1, Landroidx/work/impl/WorkerStoppedException;->ʾˋ:I

    iget-object v0, p0, Lـʾ/ˏי;->ʾˋ:Lᴵˋ/יـ;

    iget-object v0, v0, Lᴵˋ/יـ;->ʽ:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, -0x100

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    :cond_0
    iget-boolean p1, p0, Lـʾ/ˏי;->ᴵˊ:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lـʾ/ˏי;->ʽʽ:Ljava/lang/String;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lـʾ/ˏי;->ˈٴ:Lـʾ/ʾˋ;

    iget-object v1, v0, Lـʾ/ʾˋ;->ˑﹳ:Lᴵˋ/ⁱˊ;

    iget-object v1, v1, Lᴵˋ/ⁱˊ;->ˉʿ:Lᴵˋ/ˆʾ;

    iget-object v0, v0, Lـʾ/ʾˋ;->ﹳٴ:Lˑᵎ/ﹳᐧ;

    invoke-virtual {v0}, Lˑᵎ/ﹳᐧ;->hashCode()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    invoke-static {p1}, Lcom/bumptech/glide/ʽ;->ˊʻ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lﹳᵎ/ﹳٴ;->ⁱˊ(ILjava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-static {p1}, Lcom/bumptech/glide/ʽ;->ˊʻ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "asyncTraceEnd"

    :try_start_0
    sget-object v2, Lcom/bumptech/glide/ʽ;->ﾞʻ:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-nez v2, :cond_2

    const-class v2, Landroid/os/Trace;

    new-array v7, v6, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v5

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v4

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-virtual {v2, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/bumptech/glide/ʽ;->ﾞʻ:Ljava/lang/reflect/Method;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v2, Lcom/bumptech/glide/ʽ;->ﾞʻ:Ljava/lang/reflect/Method;

    sget-wide v7, Lcom/bumptech/glide/ʽ;->ʼˎ:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v7, v6, v5

    aput-object p1, v6, v4

    aput-object v0, v6, v3

    const/4 p1, 0x0

    invoke-virtual {v2, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {v1, p1}, Lcom/bumptech/glide/ʽ;->ᵔʾ(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_3
    :goto_2
    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p1
.end method
