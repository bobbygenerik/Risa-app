.class public abstract Lʽᴵ/ﹳᐧ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field public ʽʽ:[Ljava/lang/String;

.field public ʾˋ:I

.field public ˈٴ:[I

.field public ˊʻ:I

.field public ᴵˊ:[I

.field public ᴵᵔ:Z


# virtual methods
.method public abstract ʽ()Lʽᴵ/ᵔﹳ;
.end method

.method public abstract ʾˋ()Lʽᴵ/ᵔﹳ;
.end method

.method public abstract ˈʿ(Ljava/lang/Number;)Lʽᴵ/ᵔﹳ;
.end method

.method public final ˈٴ()I
    .locals 2

    .prologue
    iget v0, p0, Lʽᴵ/ﹳᐧ;->ʾˋ:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lʽᴵ/ﹳᐧ;->ᴵˊ:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract ˉˆ()Lʽᴵ/ᵔﹳ;
.end method

.method public abstract ـˆ(Ljava/lang/String;)Lʽᴵ/ᵔﹳ;
.end method

.method public abstract ᴵˑ(Ljava/lang/String;)Lʽᴵ/ᵔﹳ;
.end method

.method public abstract ᵎˊ(J)Lʽᴵ/ᵔﹳ;
.end method

.method public abstract ᵎﹶ()Lʽᴵ/ᵔﹳ;
.end method

.method public final ﹳᐧ()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lʽᴵ/ﹳᐧ;->ʾˋ:I

    iget-object v1, p0, Lʽᴵ/ﹳᐧ;->ᴵˊ:[I

    iget-object v2, p0, Lʽᴵ/ﹳᐧ;->ʽʽ:[Ljava/lang/String;

    iget-object v3, p0, Lʽᴵ/ﹳᐧ;->ˈٴ:[I

    invoke-static {v0, v1, v2, v3}, Lʽᴵ/ˊʻ;->ʽ(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
