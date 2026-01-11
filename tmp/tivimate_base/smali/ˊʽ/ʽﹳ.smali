.class public final Lˊʽ/ʽﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˈי/ﾞᴵ;


# instance fields
.field public final ʽʽ:Lˊʽ/ʻٴ;

.field public final ʾˋ:Ljava/lang/Object;

.field public final ᴵˊ:Ljava/lang/ThreadLocal;


# direct methods
.method public constructor <init>(Lʼˋ/ـˆ;Ljava/lang/ThreadLocal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˊʽ/ʽﹳ;->ʾˋ:Ljava/lang/Object;

    iput-object p2, p0, Lˊʽ/ʽﹳ;->ᴵˊ:Ljava/lang/ThreadLocal;

    new-instance p1, Lˊʽ/ʻٴ;

    invoke-direct {p1, p2}, Lˊʽ/ʻٴ;-><init>(Ljava/lang/ThreadLocal;)V

    iput-object p1, p0, Lˊʽ/ʽﹳ;->ʽʽ:Lˊʽ/ʻٴ;

    return-void
.end method


# virtual methods
.method public final getKey()Lˈי/ᵎﹶ;
    .locals 1

    iget-object v0, p0, Lˊʽ/ʽﹳ;->ʽʽ:Lˊʽ/ʻٴ;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ThreadLocal(value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lˊʽ/ʽﹳ;->ʾˋ:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", threadLocal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˊʽ/ʽﹳ;->ᴵˊ:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʿᵢ(Ljava/lang/Object;Lᴵⁱ/ʼᐧ;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p2, p1, p0}, Lᴵⁱ/ʼᐧ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;
    .locals 1

    .prologue
    iget-object v0, p0, Lˊʽ/ʽﹳ;->ʽʽ:Lˊʽ/ʻٴ;

    invoke-virtual {v0, p1}, Lˊʽ/ʻٴ;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final ـˆ(Lˈי/ᵎﹶ;)Lˈי/ᵔᵢ;
    .locals 1

    .prologue
    iget-object v0, p0, Lˊʽ/ʽﹳ;->ʽʽ:Lˊʽ/ʻٴ;

    invoke-virtual {v0, p1}, Lˊʽ/ʻٴ;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lˈי/ʼˎ;->ʾˋ:Lˈי/ʼˎ;

    return-object p1

    :cond_0
    return-object p0
.end method

.method public final ⁱˊ(Lˈי/ᵔᵢ;)Ljava/lang/Object;
    .locals 2

    iget-object p1, p0, Lˊʽ/ʽﹳ;->ᴵˊ:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lˊʽ/ʽﹳ;->ʾˋ:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final ﹳٴ(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lˊʽ/ʽﹳ;->ᴵˊ:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final ﹶᐧ(Lˈי/ᵔᵢ;)Lˈי/ᵔᵢ;
    .locals 0

    invoke-static {p0, p1}, Lcom/bumptech/glide/ʽ;->ˏי(Lˈי/ᵔᵢ;Lˈי/ᵔᵢ;)Lˈי/ᵔᵢ;

    move-result-object p1

    return-object p1
.end method
