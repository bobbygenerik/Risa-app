.class public final Lˉʽ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʽⁱ/ˊʻ;


# instance fields
.field public final ﹳٴ:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 7

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˉʽ/ʽ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˉʽ/ⁱˊ;

    iget-wide v3, v0, Lˉʽ/ⁱˊ;->ⁱˊ:J

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lˉʽ/ⁱˊ;

    iget-wide v5, v5, Lˉʽ/ⁱˊ;->ﹳٴ:J

    cmp-long v3, v5, v3

    if-gez v3, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lˉʽ/ⁱˊ;

    iget-wide v3, v3, Lˉʽ/ⁱˊ;->ⁱˊ:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    xor-int/lit8 p1, v2, 0x1

    invoke-static {p1}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    const-class v0, Lˉʽ/ʽ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lˉʽ/ʽ;

    iget-object v0, p0, Lˉʽ/ʽ;->ﹳٴ:Ljava/util/ArrayList;

    iget-object p1, p1, Lˉʽ/ʽ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lˉʽ/ʽ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SlowMotion: segments="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lˉʽ/ʽ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic ʽ()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic ⁱˊ()Lʽⁱ/ﹳᐧ;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic ﹳٴ(Lʽⁱ/ˈٴ;)V
    .locals 0

    return-void
.end method
