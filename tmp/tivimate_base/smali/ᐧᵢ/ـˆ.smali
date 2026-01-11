.class public final Lᐧᵢ/ـˆ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᐧᵢ/ᵎﹶ;
.implements Lˏـ/ʽ;


# instance fields
.field public final synthetic ʾˋ:Lᴵי/ٴﹶ;


# direct methods
.method public synthetic constructor <init>(Lᴵי/ٴﹶ;)V
    .locals 0

    iput-object p1, p0, Lᐧᵢ/ـˆ;->ʾˋ:Lᴵי/ٴﹶ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ʽ(Lᐧᵢ/ˈ;Lᐧᵢ/ʼˈ;)V
    .locals 1

    .prologue
    iget-object p1, p2, Lᐧᵢ/ʼˈ;->ﹳٴ:Lˎᵢ/ʽʽ;

    iget-boolean p1, p1, Lˎᵢ/ʽʽ;->ˈʿ:Z

    iget-object v0, p0, Lᐧᵢ/ـˆ;->ʾˋ:Lᴵי/ٴﹶ;

    if-eqz p1, :cond_0

    iget-object p1, p2, Lᐧᵢ/ʼˈ;->ⁱˊ:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lᴵי/ٴﹶ;->ᵔᵢ(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Lretrofit2/HttpException;

    invoke-direct {p1, p2}, Lretrofit2/HttpException;-><init>(Lᐧᵢ/ʼˈ;)V

    new-instance p2, Lʻᵢ/ﾞᴵ;

    invoke-direct {p2, p1}, Lʻᵢ/ﾞᴵ;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, p2}, Lᴵי/ٴﹶ;->ᵔᵢ(Ljava/lang/Object;)V

    return-void
.end method

.method public ⁱˊ(Ljava/lang/Throwable;)V
    .locals 1

    new-instance v0, Lʻᵢ/ﾞᴵ;

    invoke-direct {v0, p1}, Lʻᵢ/ﾞᴵ;-><init>(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lᐧᵢ/ـˆ;->ʾˋ:Lᴵי/ٴﹶ;

    invoke-virtual {p1, v0}, Lᴵי/ٴﹶ;->ᵔᵢ(Ljava/lang/Object;)V

    return-void
.end method

.method public ﹳٴ(Lˏـ/ˉʿ;)V
    .locals 2

    .prologue
    invoke-virtual {p1}, Lˏـ/ˉʿ;->ˈ()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lˏـ/ˉʿ;->ˈ:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lᐧᵢ/ـˆ;->ʾˋ:Lᴵי/ٴﹶ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lᴵי/ٴﹶ;->ᵔﹳ(Ljava/lang/Throwable;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lᐧᵢ/ـˆ;->ʾˋ:Lᴵי/ٴﹶ;

    invoke-virtual {p1}, Lˏـ/ˉʿ;->ˑﹳ()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lᴵי/ٴﹶ;->ᵔᵢ(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object p1, p0, Lᐧᵢ/ـˆ;->ʾˋ:Lᴵי/ٴﹶ;

    new-instance v1, Lʻᵢ/ﾞᴵ;

    invoke-direct {v1, v0}, Lʻᵢ/ﾞᴵ;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p1, v1}, Lᴵי/ٴﹶ;->ᵔᵢ(Ljava/lang/Object;)V

    return-void
.end method
