.class public final Lⁱי/ٴﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lⁱי/ᵎⁱ;


# instance fields
.field public final ʽʽ:Ljava/lang/Object;

.field public ʾˋ:Z

.field public final ˈٴ:Ljava/lang/Object;

.field public ˊʻ:Ljava/lang/Object;

.field public ᴵˊ:Z

.field public ᴵᵔ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lﾞˏ/ʻٴ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lⁱי/ٴﹶ;->ʽʽ:Ljava/lang/Object;

    iput-object p2, p0, Lⁱי/ٴﹶ;->ˈٴ:Ljava/lang/Object;

    sget-object p1, Lᐧˎ/ˏי;->ﹳٴ:Lᐧˎ/ˏי;

    iput-object p1, p0, Lⁱי/ٴﹶ;->ˊʻ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lⁱי/ᴵᵔ;Lᐧˎ/ˏי;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lⁱי/ٴﹶ;->ˈٴ:Ljava/lang/Object;

    new-instance p1, Lⁱי/ʻᵎ;

    invoke-direct {p1, p2}, Lⁱי/ʻᵎ;-><init>(Lᐧˎ/ˏי;)V

    iput-object p1, p0, Lⁱי/ٴﹶ;->ʽʽ:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lⁱי/ٴﹶ;->ʾˋ:Z

    return-void
.end method


# virtual methods
.method public ʽ(Lʽⁱ/ᵎⁱ;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lⁱי/ٴﹶ;->ˊʻ:Ljava/lang/Object;

    check-cast v0, Lⁱי/ᵎⁱ;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lⁱי/ᵎⁱ;->ʽ(Lʽⁱ/ᵎⁱ;)V

    iget-object p1, p0, Lⁱי/ٴﹶ;->ˊʻ:Ljava/lang/Object;

    check-cast p1, Lⁱי/ᵎⁱ;

    invoke-interface {p1}, Lⁱי/ᵎⁱ;->ˑﹳ()Lʽⁱ/ᵎⁱ;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lⁱי/ٴﹶ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lⁱי/ʻᵎ;

    invoke-virtual {v0, p1}, Lⁱי/ʻᵎ;->ʽ(Lʽⁱ/ᵎⁱ;)V

    return-void
.end method

.method public ˑﹳ()Lʽⁱ/ᵎⁱ;
    .locals 1

    .prologue
    iget-object v0, p0, Lⁱי/ٴﹶ;->ˊʻ:Ljava/lang/Object;

    check-cast v0, Lⁱי/ᵎⁱ;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lⁱי/ᵎⁱ;->ˑﹳ()Lʽⁱ/ᵎⁱ;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lⁱי/ٴﹶ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lⁱי/ʻᵎ;

    iget-object v0, v0, Lⁱי/ʻᵎ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v0, Lʽⁱ/ᵎⁱ;

    return-object v0
.end method

.method public ᵎﹶ()J
    .locals 2

    .prologue
    iget-boolean v0, p0, Lⁱי/ٴﹶ;->ʾˋ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lⁱי/ٴﹶ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lⁱי/ʻᵎ;

    invoke-virtual {v0}, Lⁱי/ʻᵎ;->ᵎﹶ()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lⁱי/ٴﹶ;->ˊʻ:Ljava/lang/Object;

    check-cast v0, Lⁱי/ᵎⁱ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lⁱי/ᵎⁱ;->ᵎﹶ()J

    move-result-wide v0

    return-wide v0
.end method

.method public ﹳٴ(Lⁱי/ˑﹳ;)V
    .locals 3

    .prologue
    invoke-virtual {p1}, Lⁱי/ˑﹳ;->ʼˎ()Lⁱי/ᵎⁱ;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lⁱי/ٴﹶ;->ˊʻ:Ljava/lang/Object;

    check-cast v1, Lⁱי/ᵎⁱ;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    iput-object v0, p0, Lⁱי/ٴﹶ;->ˊʻ:Ljava/lang/Object;

    iput-object p1, p0, Lⁱי/ٴﹶ;->ᴵᵔ:Ljava/lang/Object;

    iget-object p1, p0, Lⁱי/ٴﹶ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Lⁱי/ʻᵎ;

    iget-object p1, p1, Lⁱי/ʻᵎ;->ᴵᵔ:Ljava/lang/Object;

    check-cast p1, Lʽⁱ/ᵎⁱ;

    invoke-interface {v0, p1}, Lⁱי/ᵎⁱ;->ʽ(Lʽⁱ/ᵎⁱ;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Multiple renderer media clocks enabled."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroidx/media3/exoplayer/ExoPlaybackException;

    const/4 v1, 0x2

    const/16 v2, 0x3e8

    invoke-direct {v0, v1, p1, v2}, Landroidx/media3/exoplayer/ExoPlaybackException;-><init>(ILjava/lang/Exception;I)V

    throw v0

    :cond_1
    return-void
.end method

.method public ﾞᴵ()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lⁱי/ٴﹶ;->ʾˋ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lⁱי/ٴﹶ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lⁱי/ʻᵎ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lⁱי/ٴﹶ;->ˊʻ:Ljava/lang/Object;

    check-cast v0, Lⁱי/ᵎⁱ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lⁱי/ᵎⁱ;->ﾞᴵ()Z

    move-result v0

    return v0
.end method
