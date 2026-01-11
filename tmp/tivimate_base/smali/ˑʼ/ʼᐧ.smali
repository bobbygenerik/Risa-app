.class public final Lˑʼ/ʼᐧ;
.super Lʽⁱ/ᵎﹶ;
.source "SourceFile"


# instance fields
.field public final ʽʽ:Z

.field public final ˈٴ:Ljava/lang/Object;

.field public final ᴵˊ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lˑʼ/ʽᵔ;ZZ)V
    .locals 6

    .prologue
    iget-object v0, p1, Lˑʼ/ʽᵔ;->ʽ:Lˑʼ/ᴵᵔ;

    invoke-direct {p0, p1}, Lʽⁱ/ᵎﹶ;-><init>(Ljava/lang/Object;)V

    iget p1, p1, Lˑʼ/ʽᵔ;->ﹳٴ:I

    sget-object v1, Lˑʼ/ᴵᵔ;->ⁱˉ:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    if-eqz p2, :cond_2

    iget-object v4, v0, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v5, v4, Lˑʼ/ᴵˊ;->ﾞʻ:Ljava/lang/Object;

    if-ne v5, v1, :cond_9

    if-nez v4, :cond_1

    :goto_0
    move-object v5, v2

    goto :goto_2

    :cond_1
    iget-object v1, v4, Lˑʼ/ᴵˊ;->ٴﹶ:Ljava/lang/Object;

    :goto_1
    move-object v5, v1

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, v1, Lˑʼ/ᴵˊ;->ʼˎ:Ljava/lang/Object;

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_7

    iget-object v4, v0, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    iget-object v5, v4, Lˑʼ/ᴵˊ;->ˆʾ:Ljava/lang/Object;

    if-ne v5, v1, :cond_9

    if-nez v4, :cond_6

    move-object v1, v2

    goto :goto_1

    :cond_6
    iget-object v1, v4, Lˑʼ/ᴵˊ;->ʼˎ:Ljava/lang/Object;

    goto :goto_1

    :cond_7
    iget-object v1, v0, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    iget-object v1, v1, Lˑʼ/ᴵˊ;->ٴﹶ:Ljava/lang/Object;

    goto :goto_1

    :cond_9
    :goto_2
    iput-object v5, p0, Lˑʼ/ʼᐧ;->ᴵˊ:Ljava/lang/Object;

    if-ne p1, v3, :cond_b

    if-eqz p2, :cond_a

    iget-object p1, v0, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    goto :goto_3

    :cond_a
    iget-object p1, v0, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    :cond_b
    :goto_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lˑʼ/ʼᐧ;->ʽʽ:Z

    if-eqz p3, :cond_10

    if-eqz p2, :cond_e

    iget-object p1, v0, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    if-nez p1, :cond_c

    goto :goto_4

    :cond_c
    if-nez p1, :cond_d

    goto :goto_4

    :cond_d
    iget-object v2, p1, Lˑʼ/ᴵˊ;->ˉʿ:Ljava/lang/Object;

    goto :goto_4

    :cond_e
    iget-object p1, v0, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    if-nez p1, :cond_f

    goto :goto_4

    :cond_f
    iget-object v2, p1, Lˑʼ/ᴵˊ;->ˉʿ:Ljava/lang/Object;

    :cond_10
    :goto_4
    iput-object v2, p0, Lˑʼ/ʼᐧ;->ˈٴ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final ʽˑ(Ljava/lang/Object;)Lˑʼ/ˑʼ;
    .locals 3

    .prologue
    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object v0, Lˑʼ/ˊᵔ;->ﹳٴ:Lˑʼ/ﹳﹳ;

    instance-of v1, p1, Landroid/transition/Transition;

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lˑʼ/ˊᵔ;->ⁱˊ:Lˑʼ/ˑʼ;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lˑʼ/ˑʼ;->ᵎﹶ(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Transition "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for fragment "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast p1, Lˑʼ/ʽᵔ;

    iget-object p1, p1, Lˑʼ/ʽᵔ;->ʽ:Lˑʼ/ᴵᵔ;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid framework Transition or AndroidX Transition"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ﹶˎ()Lˑʼ/ˑʼ;
    .locals 4

    .prologue
    iget-object v0, p0, Lˑʼ/ʼᐧ;->ᴵˊ:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lˑʼ/ʼᐧ;->ʽˑ(Ljava/lang/Object;)Lˑʼ/ˑʼ;

    move-result-object v1

    iget-object v2, p0, Lˑʼ/ʼᐧ;->ˈٴ:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lˑʼ/ʼᐧ;->ʽˑ(Ljava/lang/Object;)Lˑʼ/ˑʼ;

    move-result-object v3

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v3, Lˑʼ/ʽᵔ;

    iget-object v3, v3, Lˑʼ/ʽᵔ;->ʽ:Lˑʼ/ᴵᵔ;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " returned Transition "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " which uses a different Transition  type than its shared element transition "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    return-object v3

    :cond_2
    return-object v1
.end method
