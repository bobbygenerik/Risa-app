.class public abstract Lᵢʾ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Lˑʼ/ᵎˊ;

.field public final ˈ:Lٴﾞ/ˉʿ;

.field public final ˑﹳ:Lﹳˊ/ﹳٴ;

.field public final ᵎﹶ:Lᵔﹶ/ᴵˊ;

.field public final ᵔᵢ:Lﹳˊ/ˈ;

.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:Landroid/content/Context;

.field public final ﾞᴵ:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lˑʼ/ᵎˊ;Lٴﾞ/ˉʿ;Lᵢʾ/ⁱˊ;)V
    .locals 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lٴﾞ/ʻٴ;->ᵎﹶ(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Api must not be null."

    invoke-static {p2, v0}, Lٴﾞ/ʻٴ;->ᵎﹶ(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    invoke-static {p4, v0}, Lٴﾞ/ʻٴ;->ᵎﹶ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "The provided context did not have an application context."

    invoke-static {v0, v1}, Lٴﾞ/ʻٴ;->ᵎﹶ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lᵢʾ/ʽ;->ﹳٴ:Landroid/content/Context;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lᵢʾ/ʽ;->ⁱˊ:Ljava/lang/String;

    iput-object p2, p0, Lᵢʾ/ʽ;->ʽ:Lˑʼ/ᵎˊ;

    iput-object p3, p0, Lᵢʾ/ʽ;->ˈ:Lٴﾞ/ˉʿ;

    new-instance v1, Lﹳˊ/ﹳٴ;

    invoke-direct {v1, p2, p3, p1}, Lﹳˊ/ﹳٴ;-><init>(Lˑʼ/ᵎˊ;Lٴﾞ/ˉʿ;Ljava/lang/String;)V

    iput-object v1, p0, Lᵢʾ/ʽ;->ˑﹳ:Lﹳˊ/ﹳٴ;

    new-instance p1, Lﹳˊ/ٴﹶ;

    invoke-static {v0}, Lﹳˊ/ˈ;->ˑﹳ(Landroid/content/Context;)Lﹳˊ/ˈ;

    move-result-object p1

    iput-object p1, p0, Lᵢʾ/ʽ;->ᵔᵢ:Lﹳˊ/ˈ;

    iget-object p2, p1, Lﹳˊ/ˈ;->ˉٴ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p2

    iput p2, p0, Lᵢʾ/ʽ;->ﾞᴵ:I

    iget-object p2, p4, Lᵢʾ/ⁱˊ;->ﹳٴ:Lᵔﹶ/ᴵˊ;

    iput-object p2, p0, Lᵢʾ/ʽ;->ᵎﹶ:Lᵔﹶ/ᴵˊ;

    iget-object p1, p1, Lﹳˊ/ˈ;->ˆﾞ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    const/4 p2, 0x7

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
