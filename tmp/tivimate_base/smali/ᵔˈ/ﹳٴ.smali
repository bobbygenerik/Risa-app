.class public final Lᵔˈ/ﹳٴ;
.super Lʽᴵ/ﾞʻ;
.source "SourceFile"


# instance fields
.field public final ﹳٴ:Lʽᴵ/ﾞʻ;


# direct methods
.method public constructor <init>(Lʽᴵ/ﾞʻ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵔˈ/ﹳٴ;->ﹳٴ:Lʽᴵ/ﾞʻ;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lᵔˈ/ﹳٴ;->ﹳٴ:Lʽᴵ/ﾞʻ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".nullSafe()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ˑﹳ(Lʽᴵ/ﹳᐧ;Ljava/lang/Object;)V
    .locals 1

    .prologue
    if-nez p2, :cond_0

    invoke-virtual {p1}, Lʽᴵ/ﹳᐧ;->ʾˋ()Lʽᴵ/ᵔﹳ;

    return-void

    :cond_0
    iget-object v0, p0, Lᵔˈ/ﹳٴ;->ﹳٴ:Lʽᴵ/ﾞʻ;

    invoke-virtual {v0, p1, p2}, Lʽᴵ/ﾞʻ;->ˑﹳ(Lʽᴵ/ﹳᐧ;Ljava/lang/Object;)V

    return-void
.end method

.method public final ⁱˊ(Lʽᴵ/ˉˆ;)Ljava/lang/Object;
    .locals 2

    .prologue
    invoke-virtual {p1}, Lʽᴵ/ˉˆ;->ʿᵢ()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lʽᴵ/ˉˆ;->ˈʿ()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lᵔˈ/ﹳٴ;->ﹳٴ:Lʽᴵ/ﾞʻ;

    invoke-virtual {v0, p1}, Lʽᴵ/ﾞʻ;->ⁱˊ(Lʽᴵ/ˉˆ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
