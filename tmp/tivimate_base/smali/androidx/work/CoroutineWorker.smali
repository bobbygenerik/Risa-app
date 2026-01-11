.class public abstract Landroidx/work/CoroutineWorker;
.super Lᴵˋ/יـ;
.source "SourceFile"


# instance fields
.field public final ˑﹳ:Landroidx/work/WorkerParameters;

.field public final ﾞᴵ:Lᴵˋ/ﾞᴵ;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lᴵˋ/יـ;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p2, p0, Landroidx/work/CoroutineWorker;->ˑﹳ:Landroidx/work/WorkerParameters;

    sget-object p1, Lᴵˋ/ﾞᴵ;->ᴵˊ:Lᴵˋ/ﾞᴵ;

    iput-object p1, p0, Landroidx/work/CoroutineWorker;->ﾞᴵ:Lᴵˋ/ﾞᴵ;

    return-void
.end method


# virtual methods
.method public final ˈ()Lʽﹳ/ٴﹶ;
    .locals 4

    .prologue
    sget-object v0, Lᴵˋ/ﾞᴵ;->ᴵˊ:Lᴵˋ/ﾞᴵ;

    iget-object v1, p0, Landroidx/work/CoroutineWorker;->ﾞᴵ:Lᴵˋ/ﾞᴵ;

    invoke-static {v1, v0}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/work/CoroutineWorker;->ˑﹳ:Landroidx/work/WorkerParameters;

    iget-object v1, v0, Landroidx/work/WorkerParameters;->ﾞᴵ:Lˈי/ᵔᵢ;

    :goto_0
    invoke-static {}, Lᴵי/ʾᵎ;->ʽ()Lᴵי/ˉـ;

    move-result-object v0

    invoke-interface {v1, v0}, Lˈי/ᵔᵢ;->ﹶᐧ(Lˈי/ᵔᵢ;)Lˈי/ᵔᵢ;

    move-result-object v0

    new-instance v1, Lᴵˋ/ᵎﹶ;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Lᴵˋ/ᵎﹶ;-><init>(Landroidx/work/CoroutineWorker;Lˈי/ˈ;I)V

    invoke-static {v0, v1}, Lcom/bumptech/glide/ˈ;->ᵢˏ(Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;)Lʽﹳ/ٴﹶ;

    move-result-object v0

    return-object v0
.end method

.method public abstract ˑﹳ(Lˈי/ˈ;)Ljava/lang/Object;
.end method

.method public final ﹳٴ()Lʽﹳ/ٴﹶ;
    .locals 4

    invoke-static {}, Lᴵי/ʾᵎ;->ʽ()Lᴵי/ˉـ;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/CoroutineWorker;->ﾞᴵ:Lᴵˋ/ﾞᴵ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/bumptech/glide/ʽ;->ˏי(Lˈי/ᵔᵢ;Lˈי/ᵔᵢ;)Lˈי/ᵔᵢ;

    move-result-object v0

    new-instance v1, Lᴵˋ/ᵎﹶ;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Lᴵˋ/ᵎﹶ;-><init>(Landroidx/work/CoroutineWorker;Lˈי/ˈ;I)V

    invoke-static {v0, v1}, Lcom/bumptech/glide/ˈ;->ᵢˏ(Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;)Lʽﹳ/ٴﹶ;

    move-result-object v0

    return-object v0
.end method

.method public ﾞᴵ()Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
