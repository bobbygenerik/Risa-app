.class public abstract Lﹳˈ/ˈ;
.super Lʽٴ/ˈ;
.source "SourceFile"


# instance fields
.field public ʽ:I


# virtual methods
.method public final ᵎⁱ(Lـʾ/ᵔﹳ;)V
    .locals 7

    .prologue
    move-object v0, p0

    check-cast v0, Lˏʾ/ⁱˊ;

    new-instance v1, Lⁱﾞ/ﹳٴ;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lˏʾ/ⁱˊ;->ˈ:Lⁱﾞ/ﹳٴ;

    invoke-virtual {p1, v1}, Lـʾ/ᵔﹳ;->ʻٴ(Lʿﹶ/ⁱˊ;)V

    sget-object v1, Lʿﹶ/ﹳٴ;->ˈٴ:Lʿﹶ/ﹳٴ;

    invoke-virtual {p1, v1}, Lـʾ/ᵔﹳ;->ˑﹳ(Lʿﹶ/ﹳٴ;)V

    iget-object v2, p1, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lˎﹶ/ˑﹳ;

    invoke-virtual {v2}, Lˎﹶ/ˑﹳ;->readInt()I

    invoke-virtual {v2}, Lˎﹶ/ˑﹳ;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lˎﹶ/ˑﹳ;->readInt()I

    move-result v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lˏʾ/ⁱˊ;->ˑﹳ:Ljava/lang/Long;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    iput-object v3, v0, Lˏʾ/ⁱˊ;->ˑﹳ:Ljava/lang/Long;

    :goto_0
    invoke-virtual {p1, v1}, Lـʾ/ᵔﹳ;->ˑﹳ(Lʿﹶ/ﹳٴ;)V

    invoke-virtual {v2}, Lˎﹶ/ˑﹳ;->readInt()I

    move-result v0

    iput v0, p0, Lﹳˈ/ˈ;->ʽ:I

    :try_start_0
    invoke-virtual {p1}, Lـʾ/ᵔﹳ;->ʽﹳ()B
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Ljava/rmi/UnmarshalException;

    const-string v0, "At least one byte remained after reading the return code. Is this response aligned properly?"

    invoke-direct {p1, v0}, Ljava/rmi/UnmarshalException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    return-void
.end method
