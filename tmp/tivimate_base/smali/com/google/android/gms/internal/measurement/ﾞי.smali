.class public abstract Lcom/google/android/gms/internal/measurement/ﾞי;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected zza:I


# direct methods
.method public static ʽ(Ljava/lang/Iterable;Ljava/util/List;)V
    .locals 7

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/measurement/ـˋ;->ﹳٴ:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/ﾞﾞ;

    if-nez v0, :cond_9

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    instance-of v1, p1, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    goto :goto_1

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/ˏʽ;

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ˏʽ;

    iget v2, v1, Lcom/google/android/gms/internal/measurement/ˏʽ;->ʽʽ:I

    add-int/2addr v2, v0

    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/ˏʽ;->ᴵˊ:[Ljava/lang/Object;

    array-length v0, v0

    if-gt v2, v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0xa

    if-eqz v0, :cond_3

    :goto_0
    if-ge v0, v2, :cond_2

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-static {v0, v4, v5, v6, v3}, Landroid/support/v4/media/session/ﹳٴ;->ʼˎ(IIIII)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/ˏʽ;->ᴵˊ:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/measurement/ˏʽ;->ᴵˊ:[Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, v1, Lcom/google/android/gms/internal/measurement/ˏʽ;->ᴵˊ:[Ljava/lang/Object;

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    instance-of v1, p0, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    instance-of v1, p0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_6

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_8

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﹳٴ(ILjava/util/List;)V

    throw v2

    :cond_6
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﹳٴ(ILjava/util/List;)V

    throw v2

    :cond_8
    return-void

    :cond_9
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public abstract ⁱˊ(Lcom/google/android/gms/internal/measurement/ˎˎ;)I
.end method

.method public final ﹳٴ()[B
    .locals 5

    .prologue
    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ʼﹶ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ٴﹶ()I

    move-result v1

    new-array v2, v1, [B

    new-instance v3, Lcom/google/android/gms/internal/measurement/ʼˋ;

    invoke-direct {v3, v1, v2}, Lcom/google/android/gms/internal/measurement/ʼˋ;-><init>(I[B)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ˈ(Lcom/google/android/gms/internal/measurement/ʼˋ;)V

    iget v0, v3, Lcom/google/android/gms/internal/measurement/ʼˋ;->ٴᵢ:I

    sub-int/2addr v1, v0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x48

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Serializing "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to a byte array threw an IOException (should never happen)."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
