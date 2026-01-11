.class public final Lᴵי/ᵎᵔ;
.super Lᴵי/ʿ;
.source "SourceFile"


# instance fields
.field public final ˉٴ:Ljava/lang/Object;

.field public final ˊʻ:Lᴵי/ᐧﾞ;

.field public final ٴᵢ:Lᴵי/ˉˆ;

.field public final ᴵᵔ:Lᴵי/ᐧᴵ;


# direct methods
.method public constructor <init>(Lᴵי/ᐧᴵ;Lᴵי/ᐧﾞ;Lᴵי/ˉˆ;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lˊʽ/ˆʾ;-><init>()V

    iput-object p1, p0, Lᴵי/ᵎᵔ;->ᴵᵔ:Lᴵי/ᐧᴵ;

    iput-object p2, p0, Lᴵי/ᵎᵔ;->ˊʻ:Lᴵי/ᐧﾞ;

    iput-object p3, p0, Lᴵי/ᵎᵔ;->ٴᵢ:Lᴵי/ˉˆ;

    iput-object p4, p0, Lᴵי/ᵎᵔ;->ˉٴ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final ˆʾ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final ٴﹶ(Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    iget-object p1, p0, Lᴵי/ᵎᵔ;->ٴᵢ:Lᴵי/ˉˆ;

    invoke-static {p1}, Lᴵי/ᐧᴵ;->ʼˈ(Lˊʽ/ˆʾ;)Lᴵי/ˉˆ;

    move-result-object v0

    iget-object v1, p0, Lᴵי/ᵎᵔ;->ᴵᵔ:Lᴵי/ᐧᴵ;

    iget-object v2, p0, Lᴵי/ᵎᵔ;->ˊʻ:Lᴵי/ᐧﾞ;

    iget-object v3, p0, Lᴵי/ᵎᵔ;->ˉٴ:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v2, v0, v3}, Lᴵי/ᐧᴵ;->ᴵʼ(Lᴵי/ᐧﾞ;Lᴵי/ˉˆ;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v2, Lᴵי/ᐧﾞ;->ʾˋ:Lᴵי/ˏᵢ;

    new-instance v4, Lˊʽ/ᵔᵢ;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lˊʽ/ᵔᵢ;-><init>(I)V

    invoke-virtual {v0, v4, v5}, Lˊʽ/ˆʾ;->ˑﹳ(Lˊʽ/ˆʾ;I)Z

    invoke-static {p1}, Lᴵי/ᐧᴵ;->ʼˈ(Lˊʽ/ˆʾ;)Lᴵי/ˉˆ;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v1, v2, p1, v3}, Lᴵי/ᐧᴵ;->ᴵʼ(Lᴵי/ᐧﾞ;Lᴵי/ˉˆ;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1, v2, v3}, Lᴵי/ᐧᴵ;->ᵢˏ(Lᴵי/ᐧﾞ;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lᴵי/ᐧᴵ;->ˑﹳ(Ljava/lang/Object;)V

    return-void
.end method
