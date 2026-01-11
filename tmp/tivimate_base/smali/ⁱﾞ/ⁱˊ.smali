.class public abstract Lⁱﾞ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿﹶ/ⁱˊ;


# instance fields
.field public ﹳٴ:Lⁱﾞ/ˈ;


# virtual methods
.method public final ʽ(Lـʾ/ᵔﹳ;)V
    .locals 0

    return-void
.end method

.method public final ⁱˊ(Lـʾ/ᵔﹳ;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lⁱﾞ/ⁱˊ;->ﹳٴ:Lⁱﾞ/ˈ;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lـʾ/ᵔﹳ;->ʻٴ(Lʿﹶ/ⁱˊ;)V

    :cond_0
    return-void
.end method

.method public final ﹳٴ(Lـʾ/ᵔﹳ;)V
    .locals 5

    .prologue
    sget-object v0, Lʿﹶ/ﹳٴ;->ˈٴ:Lʿﹶ/ﹳٴ;

    invoke-virtual {p1, v0}, Lـʾ/ᵔﹳ;->ˑﹳ(Lʿﹶ/ﹳٴ;)V

    iget-object p1, p1, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Lˎﹶ/ˑﹳ;

    invoke-virtual {p1}, Lˎﹶ/ˑﹳ;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    invoke-virtual {p1}, Lˎﹶ/ˑﹳ;->readInt()I

    move-result v4

    if-ne v4, v0, :cond_1

    invoke-virtual {p1}, Lˎﹶ/ˑﹳ;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lⁱﾞ/ˈ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lⁱﾞ/ⁱˊ;->ﹳٴ:Lⁱﾞ/ˈ;

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lⁱﾞ/ⁱˊ;->ﹳٴ:Lⁱﾞ/ˈ;

    return-void

    :cond_1
    new-instance p1, Ljava/rmi/UnmarshalException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    aput-object v4, v2, v3

    const-string v0, "Expected info level %d to match enum level, got: %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/rmi/UnmarshalException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/rmi/UnmarshalException;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v1

    aput-object v0, v2, v3

    const-string v0, "Expected info level %d, got: %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/rmi/UnmarshalException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
