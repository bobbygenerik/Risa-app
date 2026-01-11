.class public abstract Lcom/google/android/gms/internal/measurement/ﹳᴵ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final ʾˋ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

.field public ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/ʼﹶ;)V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ʾˋ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ˑﹳ()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ˉˆ(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/ʼﹶ;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Default instance must be immutable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static ﹳٴ(ILjava/util/List;)V
    .locals 3

    .prologue
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1a

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Element at index "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is null."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-lt v1, p0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ˈ()Lcom/google/android/gms/internal/measurement/ﹳᴵ;

    move-result-object v0

    return-object v0
.end method

.method public final ʼˎ([BILcom/google/android/gms/internal/measurement/ˊˎ;)V
    .locals 8

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ˑﹳ()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ʾˋ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ˉˆ(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ʼﹶ;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    sget-object v2, Lcom/google/android/gms/internal/measurement/ᵔᵔ;->ʽ:Lcom/google/android/gms/internal/measurement/ᵔᵔ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/ᵔᵔ;->ﹳٴ(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/ˎˎ;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/ˎˎ;->ﾞᴵ(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/ᵔᵔ;->ʽ:Lcom/google/android/gms/internal/measurement/ᵔᵔ;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ᵔᵔ;->ﹳٴ(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/ˎˎ;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    new-instance v7, Lcom/google/android/gms/internal/measurement/ˈʻ;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    move-object v4, p1

    move v6, p2

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/ˎˎ;->ˑﹳ(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/ˈʻ;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzmr; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from byte array should not throw IOException."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzmr;

    const-string p2, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    throw p1
.end method

.method public final ˈ()Lcom/google/android/gms/internal/measurement/ﹳᴵ;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ʾˋ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ˉˆ(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ﹳᴵ;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ˑﹳ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    return-object v0
.end method

.method public final ˑﹳ()Lcom/google/android/gms/internal/measurement/ʼﹶ;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ˑﹳ()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ᵎﹶ()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    return-object v0
.end method

.method public final ᵔᵢ(Lcom/google/android/gms/internal/measurement/ʼﹶ;)V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ʾˋ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ˑﹳ()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ˉˆ(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ʼﹶ;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    sget-object v2, Lcom/google/android/gms/internal/measurement/ᵔᵔ;->ʽ:Lcom/google/android/gms/internal/measurement/ᵔᵔ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/ᵔᵔ;->ﹳٴ(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/ˎˎ;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/ˎˎ;->ﾞᴵ(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    sget-object v1, Lcom/google/android/gms/internal/measurement/ᵔᵔ;->ʽ:Lcom/google/android/gms/internal/measurement/ᵔᵔ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/ᵔᵔ;->ﹳٴ(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/ˎˎ;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/google/android/gms/internal/measurement/ˎˎ;->ﾞᴵ(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final ⁱˊ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ˑﹳ()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ʾˋ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ˉˆ(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ʼﹶ;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    sget-object v2, Lcom/google/android/gms/internal/measurement/ᵔᵔ;->ʽ:Lcom/google/android/gms/internal/measurement/ᵔᵔ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/ᵔᵔ;->ﹳٴ(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/ˎˎ;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/ˎˎ;->ﾞᴵ(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    :cond_0
    return-void
.end method

.method public final ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ˑﹳ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ˉˆ(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/measurement/ᵔᵔ;->ʽ:Lcom/google/android/gms/internal/measurement/ᵔᵔ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/ᵔᵔ;->ﹳٴ(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/ˎˎ;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/measurement/ˎˎ;->ʽ(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ˉˆ(I)Ljava/lang/Object;

    :goto_0
    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzoh;

    const-string v1, "Message was missing required fields.  (Lite runtime could not determine which fields were missing)."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
